from flask import Flask

app = Flask(__name__)

@app.route("/page1")
def home():
    return "Hello, Page1!"
    
@app.route("/page2")
def salvador():
    return "Hello, Page2"
    
if __name__ == "__main__":
    app.run(debug=True)