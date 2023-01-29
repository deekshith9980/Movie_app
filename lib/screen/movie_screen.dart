import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;
  const MovieScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ..._buildBackground(context, movie),
          _buildMovieInformation(context,movie.rating),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Positioned(
                bottom: 50,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:60,vertical: 250),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                           style: ElevatedButton.styleFrom(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               primary: const Color(0xFFFF7272),
                               fixedSize: Size(MediaQuery.of(context).size.width * 0.425, 50),
                               alignment: Alignment.center,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),
                             )
                        ),
                        onPressed: (){}, child:
                        RichText(
                           text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'Add to ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: 'Watchlist',
                    )
                  ],
              ),
            ),
                        )

                  ],
                )),
          )
          )],
      ),
    );
  }

  Positioned _buildMovieInformation(BuildContext context,rating) {
    return Positioned(
      bottom: 150,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              movie.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${movie.year} | ${movie.category}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              ignoreGestures: true,
              itemCount: 5,
              itemSize: 20,
              unratedColor: Colors.white,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, index) {
                return const Icon(
                  Icons.star,
                  color: Colors.amber,
                );
              },
              onRatingUpdate: (rating) {},
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildBackground(context, movie) {
    return [
      Container(
        height: double.infinity,
        color: const Color(0xFF000B49),
      ),
      Image.network(
        movie.imagePath,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        fit: BoxFit.fill,
      ),
      const Positioned.fill(
          child: DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
        colors: [
          Colors.transparent,
          Color(0xFF000B49),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.3, 0.5],
      )))),
    ];
  }
}
