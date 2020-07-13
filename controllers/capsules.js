const { db } = require("../conf");

const getSimpleCapsules = async (req, res) => {
  try {
    const capsule = await db.query(
      "SELECT capsule.id, capsule_name, description FROM capsule"
    );
    return res.status(200).json(capsule[0]);
  } catch (e) {
    console.log(e);
    return res.status(500).send("Erreur lors de la lecture des capsules");
  }
};

const getCapsules = async (req, res) => {
  try {
    const capsule = await db.query(
      "SELECT c.id, capsule_name, description, duration_video, link, url_video, poi_name, address, latitude, longitude FROM capsule c INNER JOIN poi ON c.id_poi=poi.id"
    );
    return res.status(200).json(capsule[0]);
  } catch (e) {
    console.log(e);
    return res.status(500).send("Erreur lors de la lecture des capsules");
  }
};

module.exports = { getSimpleCapsules, getCapsules };
