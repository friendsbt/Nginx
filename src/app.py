import random
from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/test')
def test():
    rand_number = random.randint(1, 1000)
    return jsonify({'result': rand_number})

if __name__ == '__main__':
    app.run()
