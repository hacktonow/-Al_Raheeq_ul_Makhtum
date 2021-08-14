import 'package:al_raheeq_ul_makhtoom/Screens/firstp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:photo_view/photo_view.dart';

class ContentList1 extends StatelessWidget {
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
  int numindex = 0;

  get floating => null;

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
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
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
              ));
            },
            itemCount: ContentList.length,
          ),
        ),
      ),
    );
  }
}
