import 'package:flutter/cupertino.dart';

class Movie {
  final String name;
  final String imagePath;
  final String category;
  final int year;
  final String Director;
  final double rating;

  Movie({
    required this.name,
    required this.imagePath,
    required this.category,
    required this.year,
    required this.Director,
    required this.rating,
  });

  static List<Movie> movies =[
    Movie(
      name: 'Top Gun: Maverick',
      imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/62HCnUTziyWcpDaBO2i1DX17ljH.jpg',
      category: 'Action',
      year: 2022,
      Director: 'Joseph Kosinski',
      rating: 4,
    ),
    Movie(
        name: 'Avatar: The Way of Water',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg',
        category: 'Sci-fi',
        year: 2022,
        Director: 'James Cameron',
        rating: 3.5,
    ),
    Movie(
        name: 'Black Adam',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg',
        category: 'Fantasy',
        year: 2022,
        Director: 'Jaume Collet-Serra',
        rating: 3,
    ),
    Movie(
        name: 'JUNG_E ',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/z2nfRxZCGFgAnVhb9pZO87TyTX5.jpg',
        category: 'Sci-fi',
        year: 2023,
        Director: 'Yeon Sang-ho',
       rating: 2,
    ),
    Movie(
        name: 'Black Panther: Wakanda Forever',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sv1xJUazXeYqALzczSZ3O6nkH75.jpg',
        category: 'Action',
        year: 2022,
        Director: 'Ryan Coogler',
        rating: 3,
    ),
    Movie(
        name: 'Glass Onion: A Knives Out Mystery',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg',
        category: 'Mystery',
        year: 2022,
        Director: 'Rian Johnson',
        rating: 3,
    ),
    Movie(
        name: 'All Quiet on the Western Front',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hYqOjJ7Gh1fbqXrxlIao1g8ZehF.jpg',
        category: 'War',
        year: 2022,
        Director: 'Edward Berger',
        rating: 3.5,
    ),
    Movie(
        name: 'Pathaan',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/m1b9toKYyCujHuLoXB5GSDunO9e.jpg',
        category: 'Action',
        year: 2023,
        Director: 'Sidharth Anand',
        rating: 3.25,
    ),
    Movie(
        name: 'Spider-Man: No Way Home',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg',
        category: 'Adventure',
        year: 2021,
        Director: 'Jon Watts',
        rating: 4,
    ),
    Movie(
        name: 'Jurassic World Dominion',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg',
        category: 'Adventure',
        year: 2022,
        Director: 'Colin Trevorrow',
        rating: 2.5,
    ),
    Movie(
        name: 'The Pale Blue Eye',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9xkGlFRqrN8btTLU0KQvOfn2PHr.jpg',
        category: 'Mystery',
        year: 2022,
        Director: 'Scott Cooper',
        rating: 3,
    ),
    Movie(
        name: 'Prey',
        imagePath: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg',
        category: 'Thriller',
        year: 2022,
        Director: 'Dan Trachtenberg',
        rating: 3.5,
    )
    
  ];
}