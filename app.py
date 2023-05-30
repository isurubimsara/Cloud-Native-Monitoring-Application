from flask import Flask, render_template
import psutil

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/system_stats')
def system_stats():
    cpu_percent = psutil.cpu_percent()
    memory_percent = psutil.virtual_memory().percent
    return {
        'cpu_percent': cpu_percent,
        'memory_percent': memory_percent
    }

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
