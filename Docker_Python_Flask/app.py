from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, this Flask app is running inside a Docker container!"

if __name__ == '__main__':
    print("Hello everyone")  # Prints before starting Flask
    app.run(host='0.0.0.0', port=5000)
