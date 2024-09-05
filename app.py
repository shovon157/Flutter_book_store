from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

# Sample data for books
books = [
    {"id": 1, "name": "The Great Gatsby", "author": "F. Scott Fitzgerald", "published_year": 1925},
    {"id": 2, "name": "1984", "author": "George Orwell", "published_year": 1949},
    {"id": 3, "name": "To Kill a Mockingbird", "author": "Harper Lee", "published_year": 1960}
]

# Define an endpoint to get the list of books
@app.route('/books', methods=['GET'])
def get_books():
    return jsonify(books)

if __name__ == '__main__':
    app.run(debug=True)
