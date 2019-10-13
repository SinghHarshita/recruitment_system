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
from . import auth
from . import operations as op
# import operations as op
def main(uid,email_id):
    obj = auth.auth(SCOPES)
    # temp = op.list_file(obj)
    # print(temp)
    # global folder_id
    # for i in temp:
    #     if i['name'] == '10001':
    #         folder_id = i['id']
    #         break
    path = os.path.join(os.getcwd(),'Applicant','drive_actions','Dummy_Resume.docx')
    # op.list_file(obj)
    op.insert_file_into_folder(obj,path,'application/vnd.openxmlformats-officedocument.wordprocessingml.document',uid,email_id)
    # op.insert_file_into_folder(obj,'Dummy_Resume.docx','application/pdf',uid,email_id)
    # op.createFolder(obj,'Demo')

if __name__ == '__main__':
    uid = 100020    
    email_id = 'sample@example.com'
    main(uid,email_id)