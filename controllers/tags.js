const { db } = require("../conf");

const getTags = async (req, res) => {
  try {
    const tag = await db.query("SELECT id tag_id, label, category FROM tag");
    return res.status(200).json(tag[0]);
  } catch (e) {
    console.log(e);
    return res.status(500).send("Erreur lors de la lecture des tags");
  }
};

module.exports = { getTags };
