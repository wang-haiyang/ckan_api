Tools to upload data to ckan —— an open data platform.
Python file:
(1)common.py
provide basic functioins such as fun_exe(),datastore_create(),url_update(),datastore_upset() and vatiables such as resouce_id and api_key.
(2)setup.py
Initialization, call datastore_create() and url_update()
(3)upload_data.py
Upload data,call datastore_upset()
Data to upload:
(1)Remote Sense data;
(2)Traffic Log data;