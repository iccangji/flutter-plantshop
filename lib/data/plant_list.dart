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
    desc: 'Monstera alias janda bolong merupakan jenis tanaman hias tropis yang sering digunakan sebagai hiasan interior rumah bergaya Skandinavia atau minimalis. Keunikan tanaman ini adalah memiliki daun mengilap lebar berwarna hijau pekat berpola seperti bentuk hati', 
    temp: '<40° C', 
    water: '3 hari sekali', 
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
    desc: 'Dracaena adalah tanaman yang tumbuh tegak dengan bentuk batang bulat dan beruas-ruas. Daun dracaena berbentuk tunggal, tidak bertangkai, dan pelepah memeluk batang. Selain itu, daun dracaena bertepi rata, panjang daun cm, lebar daun 3-5 cm, pertulangan daun sejajar, permukaan daun licin.', 
    temp:'<40° C', 
    water: '1 Minggu sekali', 
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
    desc: 'Lidah mertua atau Sansevieria adalah marga tanaman hias yang cukup populer sebagai penghias bagian dalam rumah karena dapat tumbuh dengan kondisi sedikit air dan cahaya matahari. Sansevieria memiliki daun keras, sukulen, tegak, dengan ujung meruncing.', 
    temp: '<30° C', 
    water: '1 Minggu sekali', 
    type:  'Indoor',
    imageUrl:  [
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/10/27/3e9d109d-d712-4825-a152-44df6582b123.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/10/27/704338cf-1051-48b4-beb6-bfc237d77a2f.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/10/27/8f7e57ea-c176-4adc-addb-53601d15d408.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Kaktus Koboi',
    price: 300000, 
    desc: 'Kaktus koboi adalah sukulen yang terlihat seperti pohon kaktus besar. Tanaman ini memiliki batang yang ramping, hijau, dan cabang yang besar serta sejajar. Sama seperti jenis kaktus pada umumnya, kaktus koboi memiliki duri di sepanjang sisinya. Kaktus ini juga menghasilkan buah ungu kemerahan setelah matang.', 
    temp:  '>20° C', 
    water: '2 Minggu sekali', 
    type:  'Indoor/Outdoor',
    imageUrl:  [
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/69357307-62e7-456e-b4df-327da93f5ac2.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/8/b83f3d91-5f59-4f6c-9092-77d784459638.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/345cbd28-52c6-45b9-a832-e082fa42826b.jpg',
    ],
    cart: false
  ),
  Plant(
    name: 'Palem Kuning',
    price: 500000, 
    desc: 'Palm Kuning atau Dypsis lutescens adalah tanaman hias popular yang biasa dijumpai di pekarangan. Tumbuhan ini berasal dari Madagaskar dan dapat tumbuh hingga 6 meter. Palem kuning memiliki batang berupa terna.', 
    temp: '<40° C', 
    water : '3 Hari sekali', 
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
    desc: 'Ficus elastica (moraceae) atau yang dikenal pohon karet Kebo merupakan tanaman hijau yang banyak tersebar dan memiliki tinggi 30 m. Daunnya memiliki panjang 7 sampai dengan 20 cm, dengan tepi halus dan ujung yang tumpul. Daunnya sepanjang 1 kaki dan tebal berwarna hijau tua.', 
    temp:  '<30° C', 
    water: '2 Hari sekali', 
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
    desc: 'Palem sadeng merupakan tanaman asli dari Asia Tenggara, yaitu Filipina, Malaysia (Sabah), Indonesia (Kalimantan, Sulawesi, Maluku, Jawa). Spesies ini, kini telah banyak dibudidayakan sebagai tanaman hias di seluruh dunia di negara tropis dan subtropis. rupakan tanaman lanskap yang sangat populer, karena memiliki bentuk daun dan buah hias yang menarik. Spesies ini juga Mesering diambil dari alam untuk penggunaan lokal sebagai sumber makanan, tanaman obat, kayu, dan sumber bahan  lainnya.',
    temp: '<50° C', 
    water: '2 Minggu sekali', 
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
    desc: 'Philodendron adalah sejenis tumbuhan dari suku Araceae, yang mempunyai banyak spesies. Namanya berasal dari bahasa Yunani, yaitu dari kata philo ("cinta") dan dendron ("pohon"). Karena keindahan bentuk dan warna-warni daunnya, Philodendron banyak disukai sebagai tanaman penghias ruangan atau taman.',  
    temp: '<30° C', 
    water: '1 Minggu sekali',
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
    desc: 'Agave merupakan sebuah tanaman yang umumnya berbentuk duri. Bentuk daun dan corak istimewa menjadi daya tarik bagi para kolektor agave. Sebab, sosok agave umumnya hampir seragam: daun tersusun roset, bentuk oval dengan ujung melancip, dan warna hijau. Disebut begitu karena daun yang semula agak pipih berujung lancip berubah menjadi menggembung seperti kubus.',  
    temp:  '<30° C', 
    water:'2 Minggu sekali',
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
    desc: 'Aglonema adalah tanaman hias dari jenis talas-talasan yang berada di hutan hujan tropis. Nama “aglonema” diambil dari bahasa Yunani. Kata Aglo berarti terang dan Nema artinya benang. Di Indonesia, tanaman ini juga sering disebut sebagai tanaman sri rezeki. Tanaman ini memiliki akar serabut dengan batang tak berkambium. Bentuk daun dari sri rezeki menyirip dan tersusun atas pembuluh pengangkut yang acak.', 
    temp:  '<40° C', 
    water: '2 Minggu sekali', 
    type:  'Indoor',
    imageUrl:[
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/c45ab8ac-2063-4569-9df4-7ec83c83a3d1.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/93c3283c-1c4c-4809-b327-3d819579858c.jpg',
      'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/8/7/07180f6c-19ca-45df-9c7d-4534c8348df4.jpg',
    ],
    cart: false 
  ),
];