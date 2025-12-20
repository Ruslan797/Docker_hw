FROM python:latest

WORKDIR /app

COPY requirements.txt .
RUN python3 -m pip install --upgrade pip && \
    pip install -r requirements.txt

COPY memory_info.py ./memory_info.py

ENTRYPOINT ["python3", "memory_info.py"]