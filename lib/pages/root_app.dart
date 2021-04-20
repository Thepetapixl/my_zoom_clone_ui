import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_zoom_clone_ui/json/root_app_json.dart';
import 'package:my_zoom_clone_ui/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: getAppBar(),
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: headerAndFooter,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Octicons.mute,
                color: grey,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                AntDesign.camera,
                color: grey,
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.security_outlined,
                color: green,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Zoom",
                style: TextStyle(
                    fontSize: 17, color: grey, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: grey,
                size: 15,
              )
            ],
          ),
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: red, borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 5, bottom: 5),
                    child: Text(
                      "Leave",
                      style: TextStyle(
                          fontSize: 15,
                          color: grey,
                          fontWeight: FontWeight.w600),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget getFooter() {
    return Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
            color: headerAndFooter,
            border: Border(
                top: BorderSide(width: 2, color: black.withOpacity(0.06)))),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(bottomItems.length, (index) {
                return Column(
                  children: [
                    Icon(
                      bottomItems[index],
                      color: colorItems[index],
                      size: sizedItems[index],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      textItems[index],
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: colorItems[index]),
                    )
                  ],
                );
              })),
        ));
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              width: 120,
              height: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1543486958-d783bfbf7f8e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8c2VsZmllfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                      fit: BoxFit.cover)),
            ),
          ),
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://yt3.ggpht.com/yti/ANoDKi7t8UDpIBhR4vFhxH8woiUdojAZ-8kqhQKj3kki7g=s108-c-k-c0x00ffffff-no-rj"),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
