from __future__ import print_function
import pickle
import os
import os.path
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
# from apiclient.http import MediaFileUpload

# If modifying these scopes, delete the file token.pickle.
SCOPES = 'https://www.googleapis.com/auth/drive'
from . import auth as auth
# import operations as op
from . import operations as op
def main(uid,email_id):
    obj = auth.auth(SCOPES)
    path = os.path.join(os.getcwd(),'Dummy_Resume_{}.docx'.format(uid))
    file_id,folder_id = op.insert_file_into_folder(obj,path,'application/vnd.openxmlformats-officedocument.wordprocessingml.document',uid,email_id)
    os.remove('Dummy_Resume_{}.docx'.format(uid))
    return file_id,folder_id
    # op.delete_file(obj,'1_U18ULvD7HYhDjmVbAtCder5cy-Ja1pY')

def update_cv(file_id,folder_id):
    obj = auth.auth(SCOPES)
    file_id = op.update_file_into_folder(file_id,folder_id)
    return file_id

def delete_file(file_id):
    obj = auth.auth(SCOPES)
    op.delete_file(obj,file_id)
