class Pokemondata {
  late final int id;
  late final String name, data, type, weaknesses, img, bimg;

  Pokemondata(
      {required this.id,
      required this.type,
      required this.data,
      required this.name,
      required this.weaknesses,
      required this.img});
}

const List pokemon_data = [
  {
    "id": "#001",
    "name": "Bulbasaur #001",
    "data":
        "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.",
    "weaknesses": "Fire,Psychic,Flying,Ice",
    "type": "(Grass,Poison)",
    "img": "assets/001.png",
    "bimg": "assets/001 xl.png"
  },
  {
    "id": "#002",
    "name": "Charmander #002",
    "data":
        "It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.",
    "weaknesses": "Water,Ground,Rock",
    "type": "(Fire)",
    "img": "assets/004.png"
  },
  {
    "id": "#003",
    "name": "Abra #003",
    "data":
        "This Pokémon uses its psychic powers while it sleeps. The contents of Abra’s dreams affect the powers that the Pokémon wields.",
    "weaknesses": "Ghost,Dark,Bug",
    "type": "(Psychic)",
    "img": "assets/063.png"
  },
  {
    "id": "#004",
    "name": "Geodude #004",
    "data":
        "Commonly found near mountain trails and the like. If you step on one by accident, it gets angry.",
    "weaknesses": "Steel,Fighting,Water,Ice,Grass,Ground",
    "type": "(Rock,Ground)",
    "img": "assets/074.png"
  },
  {
    "id": "#005",
    "name": "Ponyta #005 ",
    "data":
        "It can’t run properly when it’s newly born. As it races around with others of its kind, its legs grow stronger.  ",
    "weaknesses": "Water,Ground,Rock",
    "type": "(Fire)  ",
    "img": "assets/077.png"
  },
  {
    "id": "#006",
    "name": "Ivysaur #006",
    "data":
        "When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs. ",
    "weaknesses": "Fire,Psychic,Flying,Ice",
    "type": "(Grass,Poison)  ",
    "img": "assets/002.png"
  },
  {
    "id": "#007",
    "name": "Charmeleon #007",
    "data":
        "It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws. ",
    "weaknesses": "Water,Ground,Rock",
    "type": "(Fire) ",
    "img": "assets/005.png"
  },
  {
    "id": "#008",
    "name": "Kadabra #008",
    "data":
        "Using its psychic power, Kadabra levitates as it sleeps. It uses its springy tail as a pillow. ",
    "weaknesses": "Ghost,Dark,Bug",
    "type": "(Psychic)  ",
    "img": "assets/064.png"
  },
  {
    "id": "#009",
    "name": "Graveler #009",
    "data":
        "Often seen rolling down mountain trails. Obstacles are just things to roll straight over, not avoid. ",
    "weaknesses": "Steel,Fighting,Water,Ice,Grass,Ground",
    "type": "(Rock,Ground)  ",
    "img": "assets/075.png"
  },
  {
    "id": "#010",
    "name": "Rapidash #010",
    "data":
        "This Pokémon can be seen galloping through fields at speeds of up to 150 mph, its fiery mane fluttering in the wind.",
    "weaknesses": "Water,Ground,Rock",
    "type": "(Fire)",
    "img": "assets/078.png"
  },
  {
    "id": "#011",
    "name": "Venusaur #011 ",
    "data":
        "Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.",
    "weaknesses": "Fire,Psychic,Flying,Ice",
    "type": "(Grass,Poison)",
    "img": "assets/003.png"
  },
  {
    "id": "#012",
    "name": "Charizard #012  ",
    "data":
        "It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.",
    "weaknesses": "Water,Electric,Rock",
    "type": "(Fire,Flying)",
    "img": "assets/006.png"
  },
  {
    "id": "#013",
    "name": "Alakazam ",
    "data":
        "It has an incredibly high level of intelligence. Some say that Alakazam remembers everything that ever happens to it, from birth till death.",
    "weaknesses": "Ghost,Dark,Bug",
    "type": "(Psychic)",
    "img": "assets/065.png"
  },
  {
    "id": "#014",
    "name": "Golem #014 ",
    "data":
        "This Pokémon can be seen galloping through fields at speeds of up to 150 mph, its fiery mane fluttering in the wind.",
    "weaknesses": "Steel,Fighting,Water,Ice,Grass,Ground",
    "type": "(Ground,Rock)",
    "img": "assets/076.png"
  },
];
