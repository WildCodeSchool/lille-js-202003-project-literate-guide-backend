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
      "SELECT cap.id capsule_id, capsule_name, description, duration_video, link, url_video, crea.id creator_id, user_name creator, type_user creator_type, poi.id poi_id, poi_name, address, latitude, longitude, r.id rating_id, label, category, score FROM capsule cap LEFT JOIN poi ON cap.id_poi=poi.id JOIN capsule_tag ca_t ON ca_t.id_capsule_cap_tag = cap.id JOIN tag ON ca_t.id_tag_cap_tag = tag.id LEFT JOIN rating r ON r.id_capsule_rating = cap.id JOIN user crea ON crea.id = cap.id_user"
    );
    return res.status(200).json(capsule[0]);
  } catch (e) {
    console.log(e);
    return res.status(500).send("Erreur lors de la lecture des capsules");
  }
};

const getOneCapsuleRatings = async (req, res) => {
  try {
    const idCaps = req.params.id;
    const rating = await db.query(
      "SELECT r.id rating_id, comment, score, u.id user_id, user_name, cap.id capsule_id, capsule_name FROM rating r JOIN user u ON u.id = r.id_user_rating JOIN capsule cap ON cap.id = r.id_capsule_rating WHERE id_capsule_rating = ?",
      [idCaps]
    );
    return res.status(200).json(rating[0]);
  } catch (e) {
    console.log(e);
    return res.status(500).send("Erreur lors de la lecture des notes");
  }
};

module.exports = { getSimpleCapsules, getCapsules, getOneCapsuleRatings };
