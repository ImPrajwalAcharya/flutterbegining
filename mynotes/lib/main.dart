import 'package:flutter/material.dart';
    import 'package:google_fonts/google_fonts.dart';

    
    void main() {
      runApp(MyApp());
    }
    class MyApp extends StatelessWidget {
      // This widget is the root of your application.
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.green,
    
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
    
            '/call': (context) => callView(),
            '/message': (context) => messageView(),
            '/music': (context) => MusicView(),
            '/navigation': (context) => navigationView(),
            '/news': (context) => newsView(),
            '/todolist': (context) => todolistView(),
          },
          home: GridDashboard(),
        );
      }
    }
    
    
   class GridDashboard extends StatelessWidget {
      final Items item1 = new Items(
          title: "Call",
          img: "assets/call.png",
          subtitle: "some thing",
          event: "some thing",
          routeName:'/call'
      );
      final Items item2 = new Items(
        title: "Message",
        img: "assets/message.png",
         subtitle: "some thing",
         event: "some thing",
        routeName:'/message'
      );
      final Items item3 = new Items(
        title: "Music",
        img: "assets/music.png",
        subtitle: "some thing",
        event: "some thing",
        routeName:'/music',
      );
      final Items item4 = new Items(
        title: "Navigation",
        img: "assets/navigation.png",
        subtitle: "some thing",
        event: "some thing",
        routeName:'/navigation',
      );
      final Items item5 = new Items(
        title: "News",
        img: "assets/news.png",
        subtitle: "some thing",
        event: "some thing",
        routeName:'/news',
      );
      final Items item6 = new Items(
        title: "To Do List",
        img: "assets/todolist.png",
        subtitle: "some thing",
        event: "some thing",
        routeName:'/todolist',
      );
    
      @override
      Widget build(BuildContext context) {
        List<Items> myList = [item1, item2, item3, item4, item5, item6];
        var color = 0xff616161;
        return Flexible(
          child: GridView.count(
              childAspectRatio: 1.0,
              padding: EdgeInsets.only(left: 16, right: 16),
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
              children: myList.map((data) {
                return InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, data.routeName);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(color), borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            data.img,
                            width: 42,
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            data.title,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            data.subtitle,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.white38,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            data.event,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    )
                );
              }).toList()),
        );
      }
    }
    
    class Items {
      String title;
      String subtitle;
      String event;
      String img;
      String routeName;
      Items({this.title, this.subtitle, this.event, this.img,this.routeName,});
    }