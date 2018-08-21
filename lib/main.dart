import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'quote.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Chuck Norris Quote',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new MyHomePage(title: 'Quote'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//   List<Quote> list = List();
//   List<Quote> randomQuote = List();

   String quote, image;
   var isLoading = false;

   _fetchRandomQuote() async {
    setState(() {
      isLoading = true;
    });

    final response =  await http.get("https://api.chucknorris.io/jokes/random");

    if (response.statusCode == 200) {
      var responseJSON = json.decode(response.body);

//      Quote random = parseQuote(responseJSON);
//      print(random.value);

      setState(() {
        isLoading = false;
        image = responseJSON['icon_url'];
        quote = responseJSON['value'];
      });

    } else {
      throw Exception('Failed to load quotes');
    }
  }

  @override
  void initState() {
    _fetchRandomQuote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: FlatButton(
          child: Text("Random Quote"),
          onPressed: (){
              _fetchRandomQuote();
          },
        ),
      ),
      body: Center(
        child: showQuote(image, quote)
      ),
    );
  }
}

Widget showQuote (String image, String quote){
  TextStyle estilo = TextStyle(
    fontSize: 24.0,
    fontStyle: FontStyle.italic,
    color: Colors.black54,
  );

  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(image),
        SizedBox(height: 50.0),
        Text(quote, style: estilo, textAlign: TextAlign.center),
      ],
    ),
  );
}