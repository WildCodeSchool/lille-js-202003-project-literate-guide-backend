const express = require("express");
const app = express();
const { db, backendPort } = require("./conf");
const capsules = require("./routes/capsules");

app.use(express.json());
app.use("/capsules", capsules);

app.listen(backendPort, (err) => {
  if (err) {
    console.log("Erreur serveur");
  } else {
    console.log(`API root available on http://localhost:${backendPort}`);
  }
});
