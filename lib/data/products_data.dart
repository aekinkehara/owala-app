import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';

final List<ProductsModel> products = [
  ProductsModel(
    id: 1,
    title: "Orb Button Watch",
    // data asli berformat int
    price: 6973726,
    // data yang sudah dikonversi menjadi string
    size: 24,
    description: "The Orb Button watch is designed with a sliding split case, featuring a silver-tone brushed dial beneath. Drawing inspiration from signature house styles, the piece offers a polished curb chain bracelet, branded with a raised orb motif - synonymous with Vivienne's vision of taking tradition into the future.",
    image: "assets/images/products/Orb_Button_Watch-removebg-preview (1).png",
    color: const Color.fromARGB(255, 241, 241, 241)),
  ProductsModel(
    id: 2,
    title: "Orb Pendant Necklace",
    price: 5107518,
    size: 12,
    description: "Our New Small Orb Pendant necklace features a distinct three-dimensional orb with a clear sphere glass ball at its center, inspired by the house's iconic orb-shaped motif, recalling Vivienne's vision of blending tradition with the future. Encrusted with an array of multi-colored crystals, the necklace is completed with an embossed tag at the fastening.",
    image: "assets/images/products/New_Small_Orb_Pendant_Necklace-removebg-preview (1).png",
    color: const Color.fromARGB(255, 241, 241, 241)),
  ProductsModel(
    id: 3,
    title: "Granny Frame Purse",
    price: 5696847,
    size: 20,
    description: "The Granny Frame purse offers a vintage-inspired silhouette, featuring a kiss-lock closure that recalls antique coin purses from the early 20th century. The piece is adorned with this season's 'Chelsea' tartan pattern, complete with the signature Union Jack lining, a nod to the Autumn-Winter 2002 collection, ‘Anglophilia’.",
    image: "assets/images/products/Granny_Frame_Purse-removebg-preview (1).png",
    color: const Color.fromARGB(255, 241, 241, 241)),
  ProductsModel(
    id: 4,
    title: "Flat Chain Card Holder",
    price: 2946645,
    size: 40,
    description: "Our Flat Chain card holder features this season’s 'mini' croc-effect embossed finish, complete with classic hardware details. Designed with five external card slots and a central compartment, the piece offers a chain attachment and a polished 'Line Orb' motif in the corner. ",
    image: "assets/images/products/Flat_Chain_Card_Holder-removebg-preview (1).png",
    color: const Color.fromARGB(255, 241, 241, 241)),
  ProductsModel(
    id: 5,
    title: "Hazel Treasure Handbag",
    price: 10018593,
    size: 24,
    description: "Our Hazel Treasure handbag is reimagined in soft suede leather, detailed with the house’s archival ‘punk pockets’ at either side of the design. A sculptural belt strap encircles the gently structured silhouette, embossed with our signature orb motif.",
    image: "assets/images/products/Hazel_Treasure_Handbag-removebg-preview (1).png",
    color: const Color.fromARGB(255, 241, 241, 241)),
  ProductsModel(
    id: 6,
    title: "Broken Pearl Earrings",
    price: 4301677,
    size: 20,
    description: "Vivienne first debuted the Broken Pearl earrings in the Autumn–Winter 2005/06 ‘Propaganda’ collection, encapsulating the house’s iconic punk-inspired aesthetic. Characterised by an uneven, asymmetrical silhouette, the design reinterprets the signature ‘Broken’ motif of the original pearl necklace.",
    image: "assets/images/products/BROKEN_PEARL_EARRINGS-removebg-preview (1).png",
    color: const Color.fromARGB(255, 241, 241, 241)),
];