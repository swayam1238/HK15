import express from 'express';
import mysql from 'mysql2';
import cors from 'cors';
import pkg from 'body-parser';
import path from 'path';
const { json, urlencoded } = pkg;

const app = express();
const __dirname = path.resolve(); // To get the current directory path

app.use(cors());
app.use(json());
app.use(urlencoded({ extended: true }));

// Serve static files (HTML, CSS, etc.)
app.use(express.static(__dirname));

// MySQL connection setup
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Swayam123*',
  database: 'smart'
});

db.connect(err => {
  if (err) throw err;
  console.log('Connected to the database.');
});

// Login endpoint
app.post('/final2', (req, res) => {
  const { username, passkey, aadhar_number } = req.body;

  // Query to find the user_role
  const query = 'SELECT role_name FROM user_roles WHERE user = ? AND passkey = ?';

  db.query(query, [username, passkey], (err, results) => {
    if (err) return res.status(500).json({ success: false, message: 'Database query error.' });

    if (results.length > 0) {
      const { role_name } = results[0];  // We get the role_name from the first query

      // Safely inserting table names using string literals, but be cautious of SQL injection.
      const viewQuery = `SELECT * FROM ?? WHERE aadhar_number = ?`;  // The first ?? is a placeholder for the table name

      // Execute the viewQuery
      db.query(viewQuery, [`${role_name}_view`, aadhar_number], (err, viewResults) => {
        if (err) return res.status(500).json({ success: false, message: 'Error fetching view.' });

        // Send the view results to frontend
        res.json({ success: true, data: viewResults, role_name });
      });
    } else {
      res.status(401).json({ success: false, message: 'Invalid credentials.' });
    }
  });
});

// Start server
app.listen(3000, () => {
  console.log('Server is running on port 3000.');
});
