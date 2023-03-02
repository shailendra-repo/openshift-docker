from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Web App with Python Flask from dockerStrategy!'

@app.route('/test')
def test():
    return 'THis is dockerStrategy testing Shailendra!'

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)