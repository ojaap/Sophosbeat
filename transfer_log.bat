@echo off
cd "C:\Program Files\Sophosbeat"
C:
.\venv\Scripts\activate & python main.py & DEL .\log\result.txt
