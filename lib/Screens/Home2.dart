import "package:flutter/material.dart";
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class listTile extends StatefulWidget {
  const listTile({Key? key}) : super(key: key);

  @override
  _listTileState createState() => _listTileState();
}

class _listTileState extends State<listTile> {
  final List<String> imageList2 = [
    'assets/images/p1.jpeg',
    'assets/images/p2.jpeg',
    'assets/images/p3.jpeg',
    'assets/images/p4.jpeg',
    'assets/images/p5.jpeg',
    'assets/images/p6.jpeg',
    'assets/images/p7.jpeg',
    'assets/images/p8.jpeg',
    'assets/images/p9.jpeg',
    'assets/images/p10.jpeg',
    'assets/images/p11.jpeg',
  ];
  final List ContentList = [
    "عرض ناشر",
    "مقدمہ طبع سوم",
    "پیس لفظ",
    "عرض مئولف",
    "اپنی سرگزشت",
    "زیرنظر کتاب کے بارے میں",
    "عرض ناشر",
    "مقدمہ طبع سوم",
    "پیس لفظ",
    "عرض مئولف",
    "اپنی سرگزشت",
    "زیرنظر کتاب کے بارے میں",
    "عرض ناشر",
    "مقدمہ طبع سوم",
    "پیس لفظ",
    "عرض مئولف",
    "اپنی سرگزشت",
    "زیرنظر کتاب کے بارے میں",
  ];
  final List num = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(
      //         Icons.search,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       onPressed: () {},
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //   ],
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   backgroundColor: Colors.yellow[200],
      //   title: Center(
      //     child: Text(
      //       'فہرست مضامین',
      //       style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 30,
      //           fontWeight: FontWeight.bold,
      //           fontFamily: 'jameel'),
      //     ),
      //   ),
      // ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScroled) => [
          SliverAppBar(
              backgroundColor: Colors.yellow[200],
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
              ],
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              floating: true,
              snap: true,
              title: Center(
                child: Text(
                  'فہرست مضامین',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'jameel'),
                ),
              )),
        ],
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: ContentList.length,
            itemBuilder: (listViewContext, index) {
              return Container(
                child: ListTile(
                    trailing: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                    leading: Text(
                      num[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      ContentList[index],
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'jameel'),
                    ),
                    onTap: () {
                      PhotoView(
                        imageProvider: AssetImage("assets/images/p1.jpeg"),
                      );
                    }),
              );
            },
          ),
        ),
      ),
    );
  }
}
