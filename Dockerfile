FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
cmd ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]