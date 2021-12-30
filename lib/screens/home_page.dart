import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
List<Color> btnColor=[
  Color(0xff01579b),
  Color(0xff0277bd),
  Color(0xff0288d1),
  Color(0xff039be5),
  Color(0xff03a9f4),
  Color(0xff29b6f6),
  Color(0xff4fc3f7),
  Color(0xff81d4fa)
];
List<String>courselist=[
"১	ওয়েব ডিজাইন এন্ড ডেভলপমেন্ট কোর্স	",
"২	ওয়েব এপ্লিকেশন ডেভলপমেন্ট কোর্স",
"৩	র্সাচ ইন্জিন অপটিমাইজেশন (এইও) কোর্স	",
"৪	ই-কর্মাস, এম কর্মাস ,এফ-কর্মাস কোর্স	",
"৫	ওর্য়াডপ্রেসে ডিজাইন কোর্স	",
"৬	এনডয়েড এপ্লিকেশন ডেভলপমেন্ট কোর্স",
"৭	এফিলেট মাকেটিং কোর্স ",
"৮	সফটওয়্যার ডেভলপমেন্ট কোর্স	"
];
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff01579b),
        centerTitle: true,
        title: Text("Home",style: GoogleFonts.oswald(fontSize: width*0.09),
        ),
        actions: [
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Icon(Icons.search,size: width*0.09,color: Colors.white,),
           ),
      ]
      ),
      body: Column(
        children: [
          Container(color: Colors.grey.shade800,
              height: height*0.3,
              width: width,
              child: CarouselSlider(
                options: CarouselOptions(autoPlay: true),
                items: imgList
                    .map((item) => Container(
                  child: Center(
                      child:
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Image.network(item, fit: BoxFit.cover, width: 1000),
                      )),
                ))
                    .toList(),
              )),
        Expanded(
            child:
            ListView.builder(
                itemCount: courselist.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){

                      if(index==0){
                        // Navigator.push(context, MaterialPageRoute
                        //   (builder: (context)=> ));
                      }
                      else if(index==1){
                        // Navigator.push(context, MaterialPageRoute
                        //   (builder: (context)=> ));
                      }
                      else if(index==2){
                        // Navigator.push(context, MaterialPageRoute
                        //   (builder: (context)=> ));
                      }

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: btnColor[index],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                      ),
                      height: 50,
                      child: Center(child: Text(courselist[index])),
                    ),
                  );
                }
            )
        )
        ],
      ),
    );
  }
}
