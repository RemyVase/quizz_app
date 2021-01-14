import 'package:flutter/material.dart';
import 'question.dart';
import 'questionPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Quizz vrai ou faux'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Question> listeQuestions = [
    new Question('La devise de la Belgique est l\'union fait la force', true, '', 'belgique.JPG'),
    new Question('La lune va finir par tomber sur terre à cause de la gravité', false, 'Au contraire la lune s\'éloigne', 'lune.jpg'),
    new Question('La Russie est plus grande en superficie que Pluton', true, '', 'russie.jpg'),
    new Question('Nyctalope est une race naine d\'antilope', false, 'C’est une aptitude à voir dans le noir', 'nyctalope.jpg'),
    new Question('Le Commodore 64 est l\’oridnateur de bureau le plus vendu', true, '', 'commodore.jpg'),
    new Question('Le nom du drapeau des pirates es black skull', false, 'Il est appelé Jolly Roger', 'pirate.png'),
    new Question('Haddock est le nom du chien Tintin', false, 'C\'est Milou', 'tintin.jpg'),
    new Question('La barbe des pharaons était fausse', true, 'A l\'époque déjà ils utilisaient des postiches', 'pharaon.jpg'),
    new Question('Au Québec tire toi une bûche veut dire viens viens t\'asseoir', true, 'La bûche, fameuse chaise de bucheron', 'buche.jpg'),
    new Question('Le module lunaire Eagle de possédait de 4Ko de Ram', true, 'Dire que je me plains avec mes 8GO de ram sur mon mac', 'eagle.jpg'),
  ];

  @override
  Widget build(BuildContext context) {

    return  new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        elevation: 10.0,
      ),
      body: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                new Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: new ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: new Image.asset(
                      "assets/images/cover.jpg",
                      fit: BoxFit.cover,
                      height: 330.0,
                      width: 330.0,
                    ),
                  ),
                  elevation: 10.0,
                ),

                new FlatButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: versQuestion,
                  child: new Text(
                    "Commencer le quizz",
                    style: new TextStyle(
                      fontSize: 25.0
                    )
                  ),

                )
              ]
          )
      )
    );
  }

  void versQuestion(){
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
      return new QuestionPage('La seconde page de Codabee');
    }));
  }
}
