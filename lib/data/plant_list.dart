class Plant{
  String name;
  String desc;
  String temp;
  String water;
  String type;
  int price;
  List<String> imageUrl;
  bool cart;
  

  Plant({
    required this.name,
    required this.price,
    required this.desc,
    required this.temp,
    required this.water,
    required this.type,
    required this.imageUrl,
    required this.cart
    }
  );
}

var plantList = [
  Plant(
    name: 'Monstera',
    price : 600000, 
    desc: 'Monstera is a type of tropical ornamental plant that is often used to decorate Scandinavian or minimalist style home interiors. The uniqueness of this plant is that it has wide, dark green glossy leaves with a heart-shaped pattern', 
    temp: '<40° C', 
    water: 'Once 3 days', 
    type: 'Indoor',
    imageUrl: [
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/bce7cd09-7c28-4d77-9a76-edac51a42bb9.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/31/919a5407-c639-4e45-8811-b75db4890967.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/bdf23cf1-8f47-4fec-8195-5f48c267d199.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Dracaena Fragrans',
    price: 400000, 
    desc: 'Dracaena is a plant that grows upright with a round, segmented stem. Dracaena leaves are single, have no stems, and the midrib hugs the stem. Apart from that, dracaena leaves have flat edges, leaf length is cm, leaf width is 3-5 cm, leaf bones are parallel, leaf surface is smooth.', 
    temp:'<40° C', 
    water: 'Once a week', 
    type:  'Indoor',
    imageUrl:   [
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/c5e17430-8d75-40d3-b46f-4d57a15c0547.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/355b458c-fdec-4b66-b98f-367fe6fb34f6.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/2f5d61ce-f16e-41b5-9b7b-8c2efd7fbf48.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Sansivera',
    price: 500000, 
    desc: 'Sansevieria is a genus of ornamental plants that are quite popular to decorate the inside of the house because they can grow with a little water and sunlight. Sansevieria has tough, succulent, erect leaves, with pointed tips.', 
    temp: '<30° C', 
    water: 'Once a week', 
    type:  'Indoor',
    imageUrl:  [
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/10/27/3e9d109d-d712-4825-a152-44df6582b123.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/10/27/704338cf-1051-48b4-beb6-bfc237d77a2f.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/10/27/8f7e57ea-c176-4adc-addb-53601d15d408.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Cowboy Cactus',
    price: 300000, 
    desc: 'The cowboy cactus is a succulent that looks like a large cactus tree. This plant has a slender, green stem and large, parallel branches. Just like other types of cactus, the cowboy cactus has spines along its sides. This cactus also produces reddish purple fruit when ripe.', 
    temp:  '>20° C', 
    water: 'Once 2 weeks', 
    type:  'Indoor/Outdoor',
    imageUrl:  [
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/69357307-62e7-456e-b4df-327da93f5ac2.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/b83f3d91-5f59-4f6c-9092-77d784459638.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/345cbd28-52c6-45b9-a832-e082fa42826b.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Yellow Palm',
    price: 500000, 
    desc: 'Yellow Palm or Dypsis lutescens is a popular ornamental plant that is usually found in yards. This plant comes from Madagascar and can grow up to 6 meters. The yellow palm has a herb-shaped stem.', 
    temp: '<40° C', 
    water : 'Once 3 days', 
    type: 'Indoor/Outdoor',
    imageUrl:  [
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/d89e80cf-709e-4421-b183-c92b2ebbf690.jpg',
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/d89e80cf-709e-4421-b183-c92b2ebbf690.jpg',
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/77883c25-dbce-45a7-ac80-c1dfbd3bf6f3.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Ficus Elastica',
    price: 400000, 
    desc: 'Ficus elastica (moraceae) is a green plant that is widely spread and has a height of 30 m. The leaves are 7 to 20 cm long, with smooth edges and a blunt tip. The leaves are 1 foot long and thick and dark green.', 
    temp:  '<30° C', 
    water: 'Once 2 days', 
    type:  'Indoor',
    imageUrl:  [
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/33222cc7-a5b6-4366-8dc1-b9ffd090afc5.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/802a464c-5bdb-4990-b17d-d2d42a0c90d0.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/c739fadb-1e78-4895-9d85-a80b957ffe78.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Saribus',
    price: 275000, 
    desc: 'Saribus is a native plant from Southeast Asia, namely the Philippines, Malaysia (Sabah), Indonesia (Kalimantan, Sulawesi, Maluku, Java). This species has now been widely cultivated as an ornamental plant throughout the world in tropical and subtropical countries. is a very popular landscape plant, because it has attractively shaped leaves and ornamental fruit. These species are also often taken from nature for local use as a source of food, medicinal plants, wood, and other material sources.',
    temp: '<50° C', 
    water: 'Once 2 weeks', 
    type:  'Indoor',
    imageUrl:[
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/1f4d3e90-62c3-45df-aa88-f86bdb4ef4ab.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/867eb9a1-cb85-435c-b479-8e554a9fa704.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/867eb9a1-cb85-435c-b479-8e554a9fa704.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Phliodenron',
    price: 250000, 
    desc: 'Philodendron is a type of plant from the Araceae family, which has many species. The name comes from Greek, namely from the words philo ("love") and dendron ("tree"). Because of the beautiful shape and color of its leaves, Philodendron is widely liked as a room or garden decoration plant.',  
    temp: '<30° C', 
    water: 'Once a week',
    type:  'Indoor',
    imageUrl: ['https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/13e4f995-080a-4e60-a96f-d3f45b86f4d5.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/cfeb558f-b296-4822-b41b-03f044663656.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/551ed529-1e73-4c1b-a3f1-daf4ff103f36.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Agave',
    price: 500000, 
    desc: 'Agave is a plant that generally has the shape of thorns. The leaf shape and special pattern are attractive to agave collectors. This is because the appearance of agave is generally almost uniform: the leaves are arranged in a rosette, oval in shape with a sharp tip, and green in color. It is called that because the leaves which were originally rather flat with sharp ends have become bulging like cubes.',  
    temp:  '<30° C', 
    water:'Once 2 weeks',
    type:  'Indoor/Outdoor',
    imageUrl: [ 'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/c17220d1-9ff5-4506-8e44-72bf5a891491.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/c17220d1-9ff5-4506-8e44-72bf5a891491.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/1dbad683-282e-4424-916b-d63fff1834af.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Aglonema',
    price: 300000, 
    desc: 'Aglonema is an ornamental plant from the taro type found in tropical rain forests. The name "aglonema" is taken from Greek. The word Aglo means light and Nema means thread. In Indonesia, this plant is also often referred to as the sustenance plant. This plant has fibrous roots with stems without cambium. The leaf shape of Sri Rezeki is pinnate and composed of random carrying vessels.', 
    temp:  '<40° C', 
    water: 'Once 2 weeks', 
    type:  'Indoor',
    imageUrl:[
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/c45ab8ac-2063-4569-9df4-7ec83c83a3d1.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/93c3283c-1c4c-4809-b327-3d819579858c.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/07180f6c-19ca-45df-9c7d-4534c8348df4.jpg',
    ],
    cart: false 
  ),
];