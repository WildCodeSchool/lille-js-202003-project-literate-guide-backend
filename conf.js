const mysql = require("mysql2/promise");
require("dotenv").config();
const { DB_HOST, DB_USER, DB_DATABASE, DB_PASSWORD } = process.env;

const db = mysql.createConnection({
  host: DB_HOST, // adresse du serveur
  user: DB_USER, // le nom d'utilisateur
  password: DB_PASSWORD, // le mot de passe
  database: DB_DATABASE, // le nom de la base de données
});

module.exports = { db, backendPort: process.env.BACKEND_PORT };
