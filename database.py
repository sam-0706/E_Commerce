import sqlite3

# Open database
conn = sqlite3.connect('database.db')

# Create table
conn.execute('''CREATE TABLE users
        (userId INTEGER PRIMARY KEY,
        password TEXT,
        email TEXT,
        firstName TEXT,
        lastName TEXT

        )''')

conn.execute('''CREATE TABLE products
        (productId INTEGER PRIMARY KEY,
        name TEXT,
        price REAL,
        description TEXT,
        image TEXT,
        stock INTEGER,
        categoryId INTEGER,
        FOREIGN KEY(categoryId) REFERENCES categories(categoryId)
        )''')

conn.execute('''CREATE TABLE kart
        (userId INTEGER,
        productId INTEGER,
        FOREIGN KEY(userId) REFERENCES users(userId),
        FOREIGN KEY(productId) REFERENCES products(productId)
        )''')

conn.execute('''CREATE TABLE categories
        (categoryId INTEGER PRIMARY KEY,
        name TEXT
        )''')

conn.close()
