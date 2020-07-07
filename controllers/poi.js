const { db } = require("../conf");

const getPoi = async (req, res) => {
  try {
    const poi = await db.query(
      "SELECT poi_name, adress, latitude, longitude FROM poi"
    );
    return res.status(200).json(poi[0]);
  } catch (e) {
    console.log(e);
    return res
      .status(500)
      .send("Erreur lors de la lecture des points d'intérêt");
  }
};

module.exports = { getPoi };
