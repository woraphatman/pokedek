class Pokemondata {
  late final int id;
  late final String name, data, type, weaknesses, img1, img2, img3, img, bimg;

  Pokemondata({
    required this.id,
    required this.type,
    required this.data,
    required this.name,
    required this.weaknesses,
    required this.img,
    required this.img1,
    required this.img2,
    required this.img3,
  });
}

const List pokemon_data = [
  {
    "id": "#001",
    "name": "Bulbasaur #001",
    "data":
        "There is a plant seed on its back right from the day this Pokemon is born. The seed slowly grows larger.",
    "weaknesses": "Fire,Psychic,Flying,Ice",
    "type": "Grass,Poison",
    "bimg": "assets/001 xl.png",
    "img": "assets/001.png",
    "img1": "assets/001.png",
    "img2": "assets/002.png",
    "img3": "assets/003.png",
    "hp": "45",
    "atk": "49",
    "def": "49",
    "total": "318"
  },
  {
    "id": "#002",
    "name": "Charmander #002",
    "data":
        "It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.",
    "weaknesses": "Water,Ground,Rock",
    "type": "Fire",
    "bimg": "assets/004 xl.png",
    "img": "assets/004.png",
    "img1": "assets/004.png",
    "img2": "assets/005.png",
    "img3": "assets/006.png",
    "hp": "39",
    "atk": "52",
    "def": "43",
    "total": "309"
  },
  {
    "id": "#003",
    "name": "Abra #003",
    "data":
        "This Pokémon uses its psychic powers while it sleeps. The contents of Abra’s dreams affect the powers that the Pokémon wields.",
    "weaknesses": "Ghost,Dark,Bug",
    "type": "Psychic",
    "bimg": "assets/063 xl.png",
    "img": "assets/063.png",
    "img1": "assets/063.png",
    "img2": "assets/064.png",
    "img3": "assets/065.png",
    "hp": "25",
    "atk": "20",
    "def": "15",
    "total": "310"
  },
  {
    "id": "#004",
    "name": "Geodude #004",
    "data":
        "Commonly found near mountain trails and the like. If you step on one by accident, it gets angry.",
    "weaknesses": "Steel,Fighting,Water,Ice,Grass,Ground",
    "type": "Rock,Ground",
    "bimg": "assets/074 xl.png",
    "img": "assets/074.png",
    "img1": "assets/074.png",
    "img2": "assets/075.png",
    "img3": "assets/076.png",
    "hp": "40",
    "atk": "80",
    "def": "100",
    "total": "300"
  },
  {
    "id": "#005",
    "name": "Squirtle #005",
    "data":
        "TWhen it retracts its long neck into its shell, it squirts out water with vigorous force.",
    "type": "Water",
    "weaknesses": "Grass,Electric",
    "bimg": "assets/007 xl.png",
    "img": "assets/007.png",
    "img1": "assets/007.png",
    "img2": "assets/008.png",
    "img3": "assets/009.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "314"
  },
  {
    "id": "#006",
    "name": "Ivysaur #006",
    "data":
        "When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs. ",
    "weaknesses": "Fire,Psychic,Flying,Ice",
    "type": "Grass,Poison  ",
    "img": "assets/002.png",
    "bimg": "assets/002 xl.png",
    "img1": "assets/001.png",
    "img2": "assets/002.png",
    "img3": "assets/003.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "314"
  },
  {
    "id": "#007",
    "name": "Charmeleon #007",
    "data":
        "It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws. ",
    "weaknesses": "Water,Ground,Rock",
    "type": "Fire ",
    "img": "assets/005.png",
    "bimg": "assets/005 xl.png",
    "img1": "assets/004.png",
    "img2": "assets/005.png",
    "img3": "assets/006.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "314"
  },
  {
    "id": "#008",
    "name": "Kadabra #008",
    "data":
        "Using its psychic power, Kadabra levitates as it sleeps. It uses its springy tail as a pillow. ",
    "weaknesses": "Ghost,Dark,Bug",
    "type": "Psychic  ",
    "img": "assets/064.png",
    "bimg": "assets/064 xl.png",
    "img1": "assets/063.png",
    "img2": "assets/064.png",
    "img3": "assets/065.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "314"
  },
  {
    "id": "#009",
    "name": "Graveler #009",
    "data":
        "Often seen rolling down mountain trails. Obstacles are just things to roll straight over, not avoid. ",
    "weaknesses": "Steel,Fighting,Water,Ice,Grass,Ground",
    "type": "Rock,Ground  ",
    "img": "assets/075.png",
    "bimg": "assets/075 xl.png",
    "img1": "assets/074.png",
    "img2": "assets/075.png",
    "img3": "assets/076.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "314"
  },
  {
    "id": "#010",
    "name": "Wartortle  #010",
    "data":
        "It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.",
    "type": "Water",
    "weaknesses": "Grass,Electric",
    "img": "assets/008.png",
    "bimg": "assets/008 xl.png",
    "img1": "assets/007.png",
    "img2": "assets/008.png",
    "img3": "assets/009.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "314"
  },
  {
    "id": "#011",
    "name": "Venusaur #011 ",
    "data":
        "Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.",
    "weaknesses": "Fire,Psychic,Flying,Ice",
    "type": "Grass,Poison",
    "img": "assets/003.png",
    "bimg": "assets/003 xl.png",
    "img1": "assets/001.png",
    "img2": "assets/002.png",
    "img3": "assets/003.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "314"
  },
  {
    "id": "#012",
    "name": "Charizard #012  ",
    "data":
        "It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.",
    "weaknesses": "Water,Electric,Rock",
    "type": "Fire,Flying",
    "img": "assets/006.png",
    "bimg": "assets/006 xl.png",
    "img1": "assets/004.png",
    "img2": "assets/005.png",
    "img3": "assets/006.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "314"
  },
  {
    "id": "#013",
    "name": "Alakazam #013",
    "data":
        "It has an incredibly high level of intelligence. Some say that Alakazam remembers everything that ever happens to it, from birth till death.",
    "weaknesses": "Ghost,Dark,Bug",
    "type": "Psychic",
    "img": "assets/065.png",
    "bimg": "assets/065 xl.png",
    "img1": "assets/063.png",
    "img2": "assets/064.png",
    "img3": "assets/065.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "310"
  },
  {
    "id": "#014",
    "name": "Golem #014 ",
    "data":
        "This Pokémon can be seen galloping through fields at speeds of up to 150 mph, its fiery mane fluttering in the wind.",
    "weaknesses": "Steel,Fighting,Water,Ice,Grass,Ground",
    "type": "Ground,Rock",
    "img": "assets/076.png",
    "bimg": "assets/076 xl.png",
    "img1": "assets/074.png",
    "img2": "assets/075.png",
    "img3": "assets/076.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "360"
  },
  {
    "id": "#015",
    "name": "Blastoise #015",
    "data":
        "It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.",
    "type": "Water",
    "weaknesses": "Grass,Electric",
    "bimg": "assets/009 xl.png",
    "img": "assets/007.png",
    "img1": "assets/007.png",
    "img2": "assets/008.png",
    "img3": "assets/009.png",
    "hp": "44",
    "atk": "48",
    "def": "65",
    "total": "350"
  },
];
