const mongoose = require("mongoose");

const ProductSchema = new mongoose.Schema(
  {
    title: { type: String, required: true, },
    subTitle: { type: String, required: true, },    
    desc: { type: String, required: true, },
    image: { type: String, required: true },
    category: { type: String, required: true },
    
    price: { type: Number, required: true },
    quantity: { type: Number, required: true, },
    rating: { type: Number, required: true, },
    
    size: { type: Array, },
    colors: { type: Array, },
  },
  { timestamps: true }
);

module.exports = mongoose.model("ProductInfo", ProductSchema);
