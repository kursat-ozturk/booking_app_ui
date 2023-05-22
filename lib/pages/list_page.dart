import 'package:booking_app_ui/main.dart';
import 'package:booking_app_ui/models/model.dart';
import 'package:booking_app_ui/widgets/attraction_card.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Icon(Icons.pool, color: Colors.white),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: mainThemeColor,
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: attractionsList.length,
                  itemBuilder: (context, index) {
                    Attraction attr = attractionsList[index];

                    return AttractionCard(attraction: attr);
                  },
                ),
              ),
              BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
