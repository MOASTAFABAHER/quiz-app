import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

class Star extends StatelessWidget {
  double grade;
  Star({required this.grade});

  @override
  Widget build(BuildContext context) {
    return RatingStars(
      editable: false,
      rating: grade == 6 ? 5 : grade,
    );
  }
}
