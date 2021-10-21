import 'package:example/components/header_with_seachbox.dart';
import 'package:example/constants.dart';
import 'package:example/screens/home/components/title_with_more_bbtn.dart';
import 'package:flutter/material.dart';

// import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide ustotal height and width of our screen
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMorebtn(title: "Recomended", press: () {}),
          RecomendPlantCard(image: "https://bit.ly/3G6gVKD", title: "title", country: "country", prices: 200)
        ],
      ),
    );
  }


}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,required this.image,required this.title,required this.country,
    //required this.press,
    required this.prices
  }) : super(key: key);

  final String image, title, country;
  final int prices;
  // final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.network(
              image),
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "samantha".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "Russia",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text('\$440',
                      style: Theme.of(context)
                          .textTheme
                          .button
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
