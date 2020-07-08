require("dotenv").config();
const cors = require("cors");
const express = require("express");
const app = express();
const capsules = require("./routes/capsules");
const parcours = require("./routes/parcours");
const { backendPort } = require("./conf");

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());
app.use("/capsules", capsules);
app.use("/parcours", parcours);

app.listen(backendPort, (err) => {
  if (err) {
    console.log("Erreur serveur");
  } else {
    console.log(`API root available on http://localhost:${backendPort}`);
  }
});
