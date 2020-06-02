import 'package:flutter/material.dart';

class Photoviewer extends StatelessWidget {
  Photoviewer({Key key, @required this.urlList}) : super(key: key);

  final List<String> urlList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: urlList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        print(urlList[index]);
        return Container(
          padding: EdgeInsets.all(2),
          alignment: Alignment.center,
          child: new Image.network(
            urlList[index],
            loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes + 0.01
                  : null,
                ),
              );
            },
          )
        );
      },
    );
  }
}

/*class Photoviewer extends StatefulWidget {
  @override
  _PhotoviewerState createState() => _PhotoviewerState();
}

class _PhotoviewerState extends State<Photoviewer> {

  @override
  Widget build(BuildContext context) {
    
    List<String> urlList = new List();
    urlList.add('https://3.bp.blogspot.com/-Dozqrh0Fkkk/TXC2qqQy39I/AAAAAAAADnU/nESieUfOU9Y/s1600/ace_of_spades.png');
    urlList.add('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg');
    urlList.add('https://image.shutterstock.com/image-vector/back-side-design-playing-cards-600w-629306936.jpg');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_King_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_Queen_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_Jack_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_10_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_9_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_8_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_7_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_6_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_5_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_4_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_3_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_2_of_spades.png');
    urlList.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_Ace_of_spades.png');*/
    /*for(int i = 0; i < 20; i++){
      urlList.add((i*100).toString());
    }*/
    /*return GridView.builder(
      itemCount: urlList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        print(urlList[index]);
          return Container(
            padding: EdgeInsets.all(2),
            alignment: Alignment.center,
            child: new Image.network(
              urlList[index],
              loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes + 0.01
                    : null,
                  ),
                );
              },
            )
          );
        },
    );
  }
}
*/
