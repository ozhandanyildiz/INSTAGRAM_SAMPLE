import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.add_circle,
                            color: Colors.black87, size: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite,
                            color: Colors.black87, size: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 8.0, bottom: 8.0, right: 20),
                        child:
                            Icon(Icons.send, color: Colors.black87, size: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            StoryWidget("assets/images/comarkarabasogullari.jpg","Comar_karabasogullari"),
                            StoryWidget("assets/images/fenerbahce.png","fenerbahce"),
                            StoryWidget("assets/images/necatisler.jpg","necatisler"),
                            StoryWidget("assets/images/mcqueen.jpg","mcqueen"),
                            StoryWidget("assets/images/comarkarabasogullari.jpg","Comar_karabasogullari"),
                            StoryWidget("assets/images/fenerbahce.png","fenerbahce"),
                            StoryWidget("assets/images/necatisler.jpg","necatisler"),
                            StoryWidget("assets/images/mcqueen.jpg","mcqueen"),
                          ],
                        ),
                      ),
                      PostItem("assets/images/comarkarabasogullari.jpg","assets/images/comarkarabasogullari.jpg","Comar_karabasogullari","Avcilar/Istanbul"),
                      PostItem("assets/images/fenerbahce.png","assets/images/fenerbahce.png","fenerbahce","Kadikoy/Istanbul"),
                      PostItem("assets/images/mcqueen.jpg","assets/images/mcqueen.jpg","Mcqueen","Radyator kasabasi"),
                      PostItem("assets/images/necatisler.jpg","assets/images/necatisler.jpg","necatisler","Istanbul"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.home,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.smart_display,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.favorite,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.person,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container PostItem(String avatar,String photo,String name,String location) => Container(
        child: Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(avatar,),
                          radius: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              location,
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),
              Image.asset(photo),
              LikeCommentBox(),
              CommentBox("Comar_karabasogullari", " Gülümse çünkü üzgün olman kimsenin umrunda değil..."),
              CommentBox("necatisler", " Anlayana"),
              CommentBox("mcqueen", " Ka-Chow"),
            ],
          ),
        ),
      );

  Padding LikeCommentBox() {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border,color: Colors.black87),
                    Icon(Icons.comment_bank_outlined,color: Colors.black87),
                  ],
                ),
                SizedBox(width: 8,),
                Icon(Icons.flag_circle_outlined,color: Colors.black87),
              ],
            ),
          );
  }

  Padding CommentBox(String name,String comment) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Expanded(child:RichText(
                    maxLines: 3,
                    text: TextSpan(
                      children: [
                        TextSpan(text: name,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black87,fontSize: 12,),),     
                    TextSpan(text: " "),
                    TextSpan(text:comment,style: TextStyle(fontSize: 10,color: Colors.black54),), 
              ]        
                
                   ),
                   ),
                ),
              //  Text("Comar_karabasogullari ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize:12,),),
              //  SizedBox(width: 3,),
              //  Expanded(child: Text("Gülümse çünkü üzgün olman kimsenin umrunda değil...",style: TextStyle(fontSize: 10,color: Colors.black54),))
                )
              ],
            ),
          );
  }

Widget StoryWidget(String avatar, String name) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.green,
            gradient: LinearGradient(
              colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(avatar),
              radius: 35,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(name, style: TextStyle(fontSize: 11)),
      ],
    ),
  );
}


}
