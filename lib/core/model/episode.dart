class Episode{

  String title;
  String numbering;
  String thumbNail;

  Episode({required this.title, required this.numbering, required this.thumbNail});


}

List<Episode> episodes = [
  Episode(title: "The intro", numbering: 'Episode - 1', thumbNail: 'assets/images/episode_one.jpg'),
  Episode(title: "Plenty people team", numbering: 'Episode - 2', thumbNail: 'assets/images/episode_two.png'),
  Episode(title: "The plan", numbering: 'Episode - 3', thumbNail: 'assets/images/episode_three.jpg')
];