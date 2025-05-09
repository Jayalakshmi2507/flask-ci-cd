from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def home():
    print(f"Received request from: {request.remote_addr}")  # Logs client IP
    return "Hello, this Flask app is running inside a Docker container!"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
