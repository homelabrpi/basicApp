from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/get_data', methods=['GET'])
def get_data():
    # Customize this data as needed
    data = {
        "temperature": 22,
        "humidity": 45
    }
    return jsonify(data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)  # Changed port to 5001