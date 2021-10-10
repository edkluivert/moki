class Movie {
  final int id, year, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final String genre;
  final String plot, title, poster, backdrop;


  Movie({
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.id,
    required this.year,
    required this.numOfRatings,
    required this.criticsReview,
    required this.metascoreRating,
    required this.rating,
    required this.genre,
    required this.plot,

  });
}

// our demo data movie data
List<Movie> movies = [
  Movie(
    id: 1,
    title: "Lucifer",
    year: 2019,
    poster: "assets/images/lucifer.jpg",
    backdrop: "assets/images/lucifer.jpg",
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 76,
    genre: "Action, Romance, Supernatural",
    plot: plotText,
  ),
  Movie(
    id: 2,
    title: " Money Heist : Part 5",
    year: 2019,
    poster: "assets/images/heist_poster.jpg",
    backdrop: "assets/images/heist_details.jpg",
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 50,
    metascoreRating: 76,
    genre: "Crime drama, Heist, Thriller",
    plot: plotText,
  ),
  Movie(
    id: 1,
    title: "Sex Education",
    year: 2020,
    poster: "assets/images/sex_education.jpg",
    backdrop: "assets/images/sex_education.jpg",
    numOfRatings: 150212,
    rating: 8.3,
    criticsReview: 50,
    metascoreRating: 79,
    genre: "Comedy, Drama",
    plot: plotText,
  ),
];

String plotText =
    "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";
