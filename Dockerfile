FROM python:3.11-slim

WORKDIR /app

# 安裝依賴
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 複製程式
COPY main.py .

# 運行程式
CMD ["python", "-u", "main.py"]
