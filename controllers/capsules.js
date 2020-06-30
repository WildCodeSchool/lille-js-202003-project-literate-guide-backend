const { db } = require("../conf");

const getSimpleCapsules = async (req, res) => {
  try {
    const capsule = await db.query(
      "SELECT capsule_name, description FROM capsule"
    );
    return res.status(200).json(capsule[0]);
  } catch (e) {
    console.log(e);
    return res.status(500).send("Erreur lors de la lecture des capsules");
  }
};

module.exports = { getSimpleCapsules };
