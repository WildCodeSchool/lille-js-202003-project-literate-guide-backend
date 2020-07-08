const { db } = require("../conf");

const getParcours = async (req, res) => {
  try {
    const parcours = await db.query(
      "SELECT course_name, course_description, course_teaser, price, user_name, type_user, category, label, capsule_name, poi_name, adress, latitude, longitude FROM course_step co_st JOIN course cou ON co_st.id_course_course_step = cou.id JOIN user u ON u.id = cou.id_user_course JOIN poi ON co_st.id_poi_course_step = poi.id JOIN capsule ca ON ca.id = co_st.id_capsule_course_step JOIN course_tag co_tag ON cou.id = co_tag.id_course_course_tag JOIN tag ON tag.id = co_tag.id_tag_course_tag"
    );
    return res.status(200).json(parcours[0]);
  } catch (e) {
    console.log(e);
    return res.status(500).send("Erreur lors de la lecture des parcours");
  }
};

module.exports = { getParcours };
