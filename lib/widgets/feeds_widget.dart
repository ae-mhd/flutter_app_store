import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_api_flutter_course/consts/global_colors.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:store_api_flutter_course/screens/product_details_screen.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: const Duration(milliseconds: 300),
                  child: const ProductDetails()),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                            text: '\$',
                            style: const TextStyle(
                              color: Color.fromRGBO(33, 150, 243, 1),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '168.00',
                                style: TextStyle(
                                    color: lightTextColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ]),
                      ),
                    ),
                    const Icon(IconlyBold.heart)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                // child: FancyShimmerImage(
                //   height: size.height * 0.2,
                //   width: double.infinity,
                //   errorWidget: const Icon(
                //     IconlyBold.danger,
                //     color: Colors.red,
                //     size: 28,
                //   ),
                //   imageUrl:
                //       'https://www.transparentpng.com/download/running-shoes/MQ02nC-running-shoes-hd-image.png',
                //   boxFit: BoxFit.fill,
                // ),
                child: Image.network(
                    height: size.height * 0.2,
                    width: double.infinity,
                    'https://www.transparentpng.com/download/running-shoes/MQ02nC-running-shoes-hd-image.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Title',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              )
            ],
          ),
        ),
      ),
    );
  }
}
