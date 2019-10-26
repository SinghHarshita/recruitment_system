from __future__ import print_function
import pickle
import os
import os.path
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request

from apiclient import errors

from apiclient import discovery
from apiclient.http import MediaFileUpload
from oauth2client import client
from oauth2client import tools
from oauth2client.file import Storage
import auth

SCOPES = 'https://www.googleapis.com/auth/drive'
CLIENT_SECRET_FILE = 'client_secrets.json'

fold_id = 0

# Listing all the Drive File
def list_file(obj):
    service = build('drive', 'v3', credentials=obj.creds)

    # Call the Drive v3 API
    results = service.files().list(pageSize=10, fields="nextPageToken, files(id, name)").execute()
    items = results.get('files', [])

    
    if not items:
        print('No files found.')
    else:
        print('Files:')
        for item in items:
            print(u'{0} ({1})'.format(item['name'], item['id']))
    return items


# Creating a Folder for New User
def createFolder(obj,name):
    service = build('drive', 'v3', credentials=obj.creds)

    # Call list_file function to identify file id of Resume
    tp = list_file(obj)
    global folder_id
    for i in tp:
        if i['name'] == 'ApplicantResume':
            folder_id = i['id']
        print(i)
    print(folder_id)        
    file_metadata = {
        'name' : name,
        'mimeType' : 'application/vnd.google-apps.folder',
        'parents' : [folder_id]
    }
    file = service.files().create(body=file_metadata,fields='id').execute()
    print("Folder ID: %s" % file.get('id'))
    return file.get('id')


# Insert File into particular Folder
def insert_file_into_folder(obj,local_path,mimetype,uid,email_id):
    service = build('drive', 'v3', credentials=obj.creds)

    folder_id = createFolder(obj,'{}'.format(uid))

    file_metadata = {
        'name': 'Resume',
        'parents': [folder_id]
    }
    media = MediaFileUpload(local_path,
                            mimetype=mimetype,
                            resumable=True)
    file = service.files().create(body=file_metadata,
                                        media_body=media,
                                        fields='id').execute()
    print('File ID: %s' % file.get('id'))
    return [file.get('id'),folder_id]
    # file_permissions(obj,file.get('id'),email_id)

def update_file_into_folder(file_id,folder_id):
    service = build('drive', 'v3', credentials=obj.creds)

    file_metadata = {
        'name': 'Resume',
        'parents': [folder_id]
    }
    media = MediaFileUpload(local_path,
                            mimetype=mimetype,
                            resumable=True)
    file = service.files().create(body=file_metadata,
                                        media_body=media,
                                        fields='id').execute()
    print('File ID: %s' % file.get('id'))
    return file.get('id')


# Deleting a File
def delete_file(obj,file_id):
    service = build('drive', 'v3', credentials=obj.creds)

    try :
        service.files().delete(fileId=file_id).execute()
    except :
        print('An Error occurred....')


# File Sharing Permission
def file_permissions(obj,file_id,email_id):
    service = build('drive', 'v3', credentials=obj.creds)
    
    def callback(request_id, response, exception):
        if exception:
            # Handle error
            print(exception)
        else:
            print("Permission Id: {}".format(response.get('id')))

    batch = service.new_batch_http_request(callback=callback)
    # Giving Edit Permission to the User of his/her Resume
    user_permission = {
        'type': 'user',
        'role': 'writer',
        'emailAddress': email_id,
    }
    batch.add(service.permissions().create(
            fileId=file_id,
            body=user_permission,
            fields='id',
    ))
    batch.execute()
