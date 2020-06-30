require("dotenv").config();
const express = require("express");
const app = express();
const capsules = require("./routes/capsules");

app.use(express.json());
app.use("/capsules", capsules);

app.listen(4242, (err) => {
  if (err) {
    console.log("Erreur serveur");
  } else {
    console.log(`API root available on http://localhost:4242`);
  }
});
