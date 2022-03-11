const favorite = require("../models/Favorites_Info");
const {
  verifyToken,
  verifyTokenAndAuthorization,
  verifyTokenAndAdmin,
} = require("./verifyToken");

const router = require("express").Router();

//CREATE

router.post("/", verifyToken, async (req, res) => {
  const newfavorite = new favorite(req.body);

  try {
    const savedfavorite = await newfavorite.save();
    res.status(200).json(savedfavorite);
  } catch (err) {
    res.status(500).json(err);
  }
});

//UPDATE
router.put("/:id", verifyTokenAndAuthorization, async (req, res) => {
  try {
    const updatedfavorite = await favorite.findByIdAndUpdate(
      req.params.id,
      {
        $set: req.body,
      },
      { new: true }
    );
    res.status(200).json(updatedfavorite);
  } catch (err) {
    res.status(500).json(err);
  }
});

//DELETE
router.delete("/:id", verifyTokenAndAuthorization, async (req, res) => {
  try {
    await favorite.findByIdAndDelete(req.params.id);
    res.status(200).json("favorite has been deleted...");
  } catch (err) {
    res.status(500).json(err);
  }
});

//GET USER favorite
router.get("/find/:userId", verifyTokenAndAuthorization, async (req, res) => {
  try {
    const favorite = await favorite.findOne({ userId: req.params.userId });
    res.status(200).json(favorite);
  } catch (err) {
    res.status(500).json(err);
  }
});

// //GET ALL

router.get("/", verifyTokenAndAdmin, async (req, res) => {
  try {
    const favorites = await favorite.find();
    res.status(200).json(favorites);
  } catch (err) {
    res.status(500).json(err);
  }
});

module.exports = router;
