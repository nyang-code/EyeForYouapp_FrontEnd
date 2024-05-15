import 'package:app_eyeforyou/ex_activity.dart';
import 'package:app_eyeforyou/ex_baldal.dart';
import 'package:app_eyeforyou/ex_childmental.dart';
import 'package:app_eyeforyou/ex_family.dart';
import 'package:app_eyeforyou/ex_gingeupbokji.dart';
import 'package:app_eyeforyou/ex_healthbohum.dart';
import 'package:app_eyeforyou/ex_taxi.dart';
import 'package:app_eyeforyou/ex_youthsupport.dart';
import 'package:flutter/material.dart';

class Life2NoSev extends StatelessWidget{

  final List<String> categories = [
    "장애인 콜택시 \n(두리발, 자비콜, \n마마콜, 쏠라티)",
    "긴급 복지 \n생계 지원",
    "건강보험 \n산정특례 \n등록 신청",
    "[바우처]\n아동청소년심리\n치유서비스\n(우리아이가\n달라졌어요!)",
    "[바우처]\n발달재활\n서비스",
    "[바우처]\n아동정서 \n발달지원\n서비스",
    "장애가족\n역량강화\n프로그램",
    "[바우처]\n장애인\n활동지원\n서비스"
  ];

  final List<Widget> pages = [
    ExTaxi(),
    ExGingeupBokji(),
    ExHealthBohum(),
    ExChildMental(),
    ExBaldal(),
    ExYouthSupport(),
    ExFamily(),
    ExActivity()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("아동 & 청소년, 경증 혜택",
          style: TextStyle(
            fontSize: 19,
          ),
        ),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        leading:  IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            icon: Icon(Icons.arrow_back,
                semanticLabel: "뒤로가기")
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.question_mark_rounded,
                semanticLabel: "도움말"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,    // 2열
            crossAxisSpacing: 20, // 왼쪽 오른쪽 간격
            mainAxisSpacing: 40, // 위 아래 간격
            childAspectRatio: 1, // 정사각형
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  categories[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}