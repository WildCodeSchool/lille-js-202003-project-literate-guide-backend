const express = require("express");
const router = express.Router();
const { db } = require("../conf");

router.get("/", (req, res) => {
  db.query("SELECT name_capsule, description FROM capsule", (err, results) => {
    if (err) {
      res.status(500).send("non");
      console.log(err.sql);
      console.log(err.message);
    } else {
      res.send(results);
    }
  });
});

router.put("/:id", (req, res) => {
  const formData = req.body;
  const id = req.params.id;
  db.query(
    "UPDATE caspule SET ? WHERE id = ?",
    [formData, id],
    (err, results) => {
      if (err) {
        console.log(err);
        res.status(500).send("Erreur, votre capsule n'a pas été sauvegardée");
      } else {
        res.sendStatus(200);
      }
    }
  );
});

router.post("/", (req, res) => {
  const formData = req.body;
  db.query("INSERT INTO capsule SET ? ", [formData], (err, results) => {
    if (err) {
      res.status(500).send("non");
      console.log(err.sql);
      console.log(err.message);
    } else {
      res.send(results);
    }
  });
});

module.exports = router;
