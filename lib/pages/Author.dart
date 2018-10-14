import 'package:flutter/material.dart';
import 'package:poem/models/Poet.dart';

class Author extends StatefulWidget {
  @override
  AuthorState createState() => new AuthorState();
}

class AuthorState extends State<Author> {
  List<Poet> poetList = new List();

  @override
  void initState() {
    super.initState();
    poetList.add(new Poet("Rabindranath Tagore",
        "https://vignette.wikia.nocookie.net/39clues/images/c/ce/Tagore.jpg/revision/latest?cb=20160720192139"));
    poetList.add(new Poet("Nissim Ezekiel",
        "https://ap-pics2.gotpoem.com/ap-pics/user/4917/913big.jpg?163x190"));
    poetList.add(new Poet("Sarojini Naidu",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Sarojini_Naidu_in_Bombay_1946.jpg/220px-Sarojini_Naidu_in_Bombay_1946.jpg"));
    poetList.add(new Poet("Arvind Krishna Mehrotra",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBb3XwxuplZA7EfA03RLNAxewNdSJB8XPBRhaJHzgqbAiAYasm"));
    poetList.add(new Poet("Arun Kolatkar",
        "http://1.bp.blogspot.com/-kZivSEah8aE/TneYm9NQ9sI/AAAAAAAAAMI/kdwsMqOSCo8/s1600/Kolatkarold.jpg"));
    poetList.add(new Poet("John Keats",
        "https://upload.wikimedia.org/wikipedia/commons/1/1a/John_Keats_by_William_Hilton.jpg"));
    poetList.add(new Poet("John Keats",
        "https://upload.wikimedia.org/wikipedia/commons/1/1a/John_Keats_by_William_Hilton.jpg"));
    poetList.add(new Poet("John Keats",
        "https://upload.wikimedia.org/wikipedia/commons/1/1a/John_Keats_by_William_Hilton.jpg"));
    poetList.add(new Poet("John Keats",
        "https://upload.wikimedia.org/wikipedia/commons/1/1a/John_Keats_by_William_Hilton.jpg"));
    poetList.add(new Poet("John Keats",
        "https://upload.wikimedia.org/wikipedia/commons/1/1a/John_Keats_by_William_Hilton.jpg"));
    poetList.add(new Poet("John Keats",
        "https://upload.wikimedia.org/wikipedia/commons/1/1a/John_Keats_by_William_Hilton.jpg"));
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Author")),
        body: new GridView.count(
            crossAxisCount: 2,
            children: poetList.map((el) {
              return new InkWell(
                  onTap: () {
                    print("Click");
                  },
                  child: new Container(
                      decoration: new BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 0.4, color: Color(0xFFFF000000)),
                              right: BorderSide(
                                  width: 0.3, color: Color(0xFFFF000000)))),
                      child: new Container(
                          child: new Column(children: <Widget>[
                        new Expanded(
                          flex: 2,
                          child: new Center(
                              child: new Container(
                                  width: 110.0,
                                  height: 110.0,
                                  decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image:
                                              new NetworkImage(el.imageUrl))))),
                        ),
                        new Expanded(
                          flex: 1,
                          child: new Center(
                              child: new Text(el.poetName,
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                      fontFamily: 'Muli',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Color(0xFF222222),
                                      wordSpacing: 0.1,
                                      height: 0.7))),
                        )
                      ]))));
            }).toList()));
  }
}
