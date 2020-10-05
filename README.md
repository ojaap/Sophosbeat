# Sophosbeat

This repository contains a simple script that extends Sophos-Central-SIEM-Integration (https://github.com/sophos/Sophos-Central-SIEM-Integration) to send the log data to an elasticsearch instance.
A version of Sophos-Central-SIEM-Integration v.1.1.0 is included.


## requirements ##

This script was written for Windows10 with Python3.8, but should also work in lower versions.


## Installation ##

### Copying ###

Copy the content of this repository to `C:\Program Files\Sophosbeat\`


#### Optional (If not using the venv) ####

If you are not going to use the venv, you have to install the Python package 'Elasticsearch' with its dependencies by yourself.
```
C:
cd "C:\Program Files\Sophosbeat"
python3 -m venv .\venv
.\venv\Scripts\activate
pip install elasticsearch
```


### config sophos api ###

In config.ini replace `<Copy API Access URL + Headers block from Sophos Central here>`.
For this see:
https://github.com/sophos/Sophos-Central-SIEM-Integration
and
https://support.sophos.com/support/s/article/KB-000036372?language=en_US


### config elasticsearch api ###

In the main.py look for:
```python
es = Elasticsearch(['elastic.url.com'], http_auth=('elast_user', 'passphrase'),
                   scheme="https", port=443, ssl_context=context)
```
and replace url, elast_user and passphrase for the connection to your elasticsearch instance.


### set as planned task ###

Just open the windows task scheduler and create a basic task, which executes every 1 day, every 5 Minutes, the transfer_log.bat.

