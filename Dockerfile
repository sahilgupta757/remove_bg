FROM python:3.9

# downloaded from https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2net.onnx
# COPY u2net.onnx /home/.u2net/u2net.onxx

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5100

CMD ["python", "app.py"]
