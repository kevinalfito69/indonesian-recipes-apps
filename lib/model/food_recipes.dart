class FoodRecipes {
  String name;
  String description;
  Map<String, String> ingredients;
  String recipes;
  String duration;
  String level;
  String image;

  FoodRecipes({
    required this.name,
    required this.description,
    required this.ingredients,
    required this.recipes,
    required this.duration,
    required this.level,
    required this.image,
  });
}

var foodRecipes = <FoodRecipes>[
  FoodRecipes(
    name: "Nasi Goreng",
    description:
        "Anyone who has been to Bali would be familiar with Nasi Goreng and probably had it almost every day because it’s everywhere and darn delicious!So for those who have tried and love Nasi Goreng, you will be surprised how easy this is to make in your very own home.",
    ingredients: {
      'Chilli':
          'https://www.harighotra.co.uk/images/Shutterstock/chillies_560x560.jpg',
      'Garlic':
          'https://petersproduce.co.uk/cdn/shop/products/shutterstock_625452236_1952x.jpg',
      'Chicken':
          'https://www.usatoday.com/gcdn/-mm-/ac688eec997d2fce10372bf71657297ff863814d/c=171-0-1195-768/local/-/media/2021/08/20/USATODAY/usatsports/imageforentry11-5xb.jpg',
      'Soy Sauce':
          'https://www.seriouseats.com/thmb/OlxcLVWy1xKbbJmFlXGXjJFR0GA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2019__06__20190604-nasi-goreng-fried-rice-vicky-wasik-5-1500x1125-86d371fa82164b28b4ab341389a12e9d.jpg',
      'Rice':
          'https://www.allrecipes.com/thmb/RKpnSHLUDT2klppYgx8jAF47GyM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/52490-PuertoRicanSteamedRice-DDMFS-061-4x3-3c3da714aa614037ad1c135ec303526d.jpg'
    },
    recipes: """
      1. Prepare the Rice: Make sure your rice is cold and dry. Freshly cooked rice will be too sticky.
      2. Cook the Aromatics: Heat the vegetable oil in a large wok or frying pan over medium-high heat. Add the garlic, onion, and shrimp paste (if using). Stir-fry until fragrant.
      3. Add the Protein: Add the chicken (or your chosen protein) and cook until it’s done.
      4. Add the Rice: Push the ingredients to the side of the wok and add the rice. Stir-fry for a few minutes until the rice is heated through and slightly crispy.
      5. Season the Rice: Add the kecap manis, soy sauce, fish sauce, and brown sugar. Mix well to ensure the rice is evenly coated.
      6. Cook the Eggs: Push the rice to the side again and crack the eggs into the wok. Scramble them until they’re just set, then mix them into the rice.
      7. Finish and Serve: Stir in the green onions and cook for another minute. Serve the nasi goreng topped with fried shallots, cucumber and tomato slices, and lime wedges on the side.
    """,
    duration: '20',
    level: "Easy",
    image: "images/nasi-goreng.png",
  ),
  FoodRecipes(
    name: "Rendang",
    description:
        "Rendang is a rich and tender coconut beef stew which is explosively flavorful. Originating from the Minangkabau ethnic group of Indonesia, it is considered one of the most delicious dishes in the world.",
    ingredients: {'Beef': 'https://www.kwajahman.co.uk/cdn/shop/products/StewingBeef.jpg',
      'Coconut milk':
      'https://res.cloudinary.com/dk0z4ums3/image/upload/v1719976439/attached_image/coconut-milk-inilah-pengertian-nutrisi-dan-manfaatnya-bagi-kesehatan.jpg',
      'Galangal':
      'https://trikaya.net/cdn/shop/products/Galangalisawhiterootherb_800x.jpg',
      'Kaffir lime leaves':
      'https://trikaya.net/cdn/shop/products/MakrootLeavesKaffirLimeLeaves_800x.jpg',
      'Cinnamon':
      'https://images.pexels.com/photos/5498005/pexels-photo-5498005.jpeg',},
    recipes: """
      1. In a large wok, heat the oil and add the beef. Stir fry the beef until browned.
      2. Add all the spices (lemongrass, cinnamon, kaffir lime leaves, galangal) and stir fry until fragrant.
      3. Pour the coconut milk and bring to a simmer. Let the beef cook on low heat for 2-3 hours until the meat becomes tender and the sauce thickens.
      4. Serve with steamed rice.
    """,
    duration: '180',
    level: "Hard",
    image: "images/rendang.png",
  ),
  FoodRecipes(
    name: "Sate Ayam",
    description:
        "Sate Ayam is a traditional Indonesian chicken skewer grilled over charcoal and served with a flavorful peanut sauce.",
    ingredients: {
      'Chicken':
          'https://www.usatoday.com/gcdn/-mm-/ac688eec997d2fce10372bf71657297ff863814d/c=171-0-1195-768/local/-/media/2021/08/20/USATODAY/usatsports/imageforentry11-5xb.jpg',
      'Peanut':
          'https://gramiyum.in/wp-content/uploads/2022/09/raw-peanuts.jpg',
      'Soy sauce':
          'https://www.seriouseats.com/thmb/OlxcLVWy1xKbbJmFlXGXjJFR0GA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2019__06__20190604-nasi-goreng-fried-rice-vicky-wasik-5-1500x1125-86d371fa82164b28b4ab341389a12e9d.jpg',
      'Garlic':
          'https://petersproduce.co.uk/cdn/shop/products/shutterstock_625452236_1952x.jpg',
    },
    recipes: """
      1. Marinate the chicken with a mixture of soy sauce, garlic, and spices.
      2. Skewer the marinated chicken onto sticks and grill over charcoal until cooked through.
      3. Serve with peanut sauce made from ground peanuts, sweet soy sauce, and spices.
    """,
    duration: '45',
    level: "Medium",
    image: "images/sate-ayam.png",
  ),
  FoodRecipes(
    name: "Gado-Gado",
    description:
        "Gado-Gado is a traditional Indonesian salad made from a mix of boiled vegetables, tofu, tempeh, and eggs, served with peanut sauce.",
    ingredients: {
      'Tofu':
          'https://images.immediate.co.uk/production/volatile/sites/30/2013/07/tofu-6a6a4ef.jpg?quality=90&resize=556,505',
      'Tempeh':
          'https://veganlovlie.com/wp-content/uploads/howto-make-homemade-tempeh-02-500x500.jpg',
      'Peanut':
          'https://gramiyum.in/wp-content/uploads/2022/09/raw-peanuts.jpg',
      'Cabbage':
          'https://leporemare.com/wp-content/uploads/2019/12/p5.jpg',
    },
    recipes: """
      1. Boil the vegetables (cabbage, bean sprouts, and potatoes) and set them aside.
      2. Fry the tofu and tempeh until golden brown.
      3. Prepare the peanut sauce by grinding peanuts and mixing with spices and sweet soy sauce.
      4. Serve the boiled vegetables, fried tofu, tempeh, and boiled eggs with the peanut sauce.
    """,
    duration: '30',
    level: "Easy",
    image: "images/gado-gado.png",
  ),
  FoodRecipes(
    name: "Soto Ayam",
    description:
        "Soto Ayam is a traditional Indonesian chicken soup with a yellow turmeric-based broth, served with rice, vermicelli, and boiled eggs.",
    ingredients: {
      'Chicken':
          'https://www.usatoday.com/gcdn/-mm-/ac688eec997d2fce10372bf71657297ff863814d/c=171-0-1195-768/local/-/media/2021/08/20/USATODAY/usatsports/imageforentry11-5xb.jpg',
      'Turmeric':
          'https://hebsurherbals.com/wp-content/uploads/2020/02/turmeric-powder.jpg',
      'Vermicelli':
          'https://assets.bonappetit.com/photos/57e3f9f97c2b8d77607820d7/master/pass/ttar_vermicelli_01_v_launch.jpg',
      'Egg':
          'https://bakerpedia.com/wp-content/uploads/2020/03/Egg_baking-ingredients-e1584136402126.jpg',
    },
    recipes: """1. Boil chicken until tender and shred the meat.
      2. In another pot, sauté the spices (garlic, shallots, turmeric) until fragrant.
      3. Add chicken broth and shredded chicken into the pot. Simmer for 20 minutes.
      4. Serve with rice, vermicelli, boiled eggs, and lime wedges.
    """,
    duration: '60',
    level: "Medium",
    image: "images/soto-ayam.png",
  ),
  FoodRecipes(
    name: "Bakso",
    description:
        "Bakso is a popular Indonesian meatball soup served with noodles, vegetables, and a flavorful beef broth.",
    ingredients: {
      'Beef':
          'https://www.kwajahman.co.uk/cdn/shop/products/StewingBeef.jpg',
      'Noodles':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Mama_instant_noodle_block.jpg/1200px-Mama_instant_noodle_block.jpg',
      'Shallots':
          'https://vivregourmet.com/wp-content/uploads/2020/07/Shallots.png',
    },
    recipes: """
      1. Mix ground beef with spices, shape into small balls, and boil in beef broth.
      2. Serve the meatballs in the broth with noodles, vegetables, and fried shallots.
    """,
    duration: '45',
    level: "Easy",
    image: "images/bakso.png",
  ),
  FoodRecipes(
    name: "Nasi Uduk",
    description:
        "Nasi Uduk is a traditional Betawi-style rice dish cooked in coconut milk, served with fried chicken, sambal, and various side dishes.",
    ingredients: {
      'Rice':
          'https://www.allrecipes.com/thmb/RKpnSHLUDT2klppYgx8jAF47GyM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/52490-PuertoRicanSteamedRice-DDMFS-061-4x3-3c3da714aa614037ad1c135ec303526d.jpg',
      'Coconut milk':
          'https://res.cloudinary.com/dk0z4ums3/image/upload/v1719976439/attached_image/coconut-milk-inilah-pengertian-nutrisi-dan-manfaatnya-bagi-kesehatan.jpg',
      'Bay leaves':
          'https://images.tokopedia.net/img/cache/700/VqbcmM/2023/11/19/bc522f24-f7e7-48f5-8648-8c4fefc8579f.jpg',
      'Shallots':
          'https://vivregourmet.com/wp-content/uploads/2020/07/Shallots.png',
    },
    recipes: """
      1. Rinse the rice and cook it in coconut milk with bay leaves and lemongrass.
      2. Serve the rice with fried chicken, tempeh, sambal, and cucumber slices.
    """,
    duration: '40',
    level: "Easy",
    image: "images/nasi-uduk.png",
  ),
  FoodRecipes(
    name: "Mie Goreng",
    description:
        "Mie Goreng is a flavorful Indonesian fried noodle dish with vegetables, chicken, and a sweet soy sauce.",
    ingredients: {
      'Noodles':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Mama_instant_noodle_block.jpg/1200px-Mama_instant_noodle_block.jpg',
      'Chicken':
          'https://www.usatoday.com/gcdn/-mm-/ac688eec997d2fce10372bf71657297ff863814d/c=171-0-1195-768/local/-/media/2021/08/20/USATODAY/usatsports/imageforentry11-5xb.jpg',
      'Soy sauce':
          'https://www.seriouseats.com/thmb/OlxcLVWy1xKbbJmFlXGXjJFR0GA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2019__06__20190604-nasi-goreng-fried-rice-vicky-wasik-5-1500x1125-86d371fa82164b28b4ab341389a12e9d.jpg',
      'Egg':
          'https://bakerpedia.com/wp-content/uploads/2020/03/Egg_baking-ingredients-e1584136402126.jpg',
    },
    recipes: """
      1. Boil noodles until just cooked and set aside.
      2. Stir fry garlic, chicken, and vegetables in a wok until fragrant.
      3. Add the noodles, sweet soy sauce, and seasonings. Stir fry until well mixed.
      4. Serve with a fried egg on top.
    """,
    duration: '25',
    level: "Easy",
    image: "images/mie-goreng.png",
  ),
  FoodRecipes(
    name: "Pecel",
    description:
        "Pecel is a Javanese traditional salad made with boiled vegetables and served with peanut sauce.",
    ingredients: {
      'Peanut':
          'https://gramiyum.in/wp-content/uploads/2022/09/raw-peanuts.jpg',
      'Cabbage':
          'https://leporemare.com/wp-content/uploads/2019/12/p5.jpg',
      'Bean sprouts':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Mung_bean_sprouts.jpg/800px-Mung_bean_sprouts.jpg',
    },
    recipes: """
      1. Boil vegetables like spinach, bean sprouts, and cabbage until tender.
      2. Prepare the peanut sauce by grinding peanuts with chilies, tamarind, and garlic.
      3. Serve the boiled vegetables with the peanut sauce on top.
    """,
    duration: '30',
    level: "Easy",
    image: "images/pecel.png",
  ),
];
