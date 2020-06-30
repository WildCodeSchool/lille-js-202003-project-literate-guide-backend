const mysql = require("mysql2/promise");

const db = mysql.createPool({
  host: process.env.DB_HOST, // adresse du serveur
  user: process.env.DB_USER, // le nom d'utilisateur
  password: process.env.DB_PASSWORD, // le mot de passe
  database: process.env.DB_DATABASE, // le nom de la base de données
});

module.exports = { db, backendPort: process.env.BACKEND_PORT };
