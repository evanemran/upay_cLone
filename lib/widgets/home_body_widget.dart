

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enum/home_menu.dart';
import '../pages/details_page.dart';
import 'app_bar_widget.dart';
import 'home_menu_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<HomeMenu> homeMenuList = [
    HomeMenu.SEND_MONEY,
    HomeMenu.MOBILE_RECHARGE,
    HomeMenu.CASH_OUT,
    HomeMenu.PAYMENT,

    HomeMenu.PAY_BILL,
    HomeMenu.ADD_MONEY,
    HomeMenu.REQUEST_MONEY,
    HomeMenu.FUND_TRANSFER,

      HomeMenu.TRAFFIC_FINE,
      HomeMenu.INDIAN_VISA,
      HomeMenu.TICKET,
      HomeMenu.HOTEL,

      HomeMenu.ZAKAT,
      HomeMenu.DONATION,
      HomeMenu.GOVT_PAY,
      HomeMenu.INSURANCE,

    ];

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

            Container(
              color: Colors.white,
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(bottom: 12.0),
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // Generate 100 widgets that display their index in the List.
                children: List.generate(homeMenuList.length, (index) {
                  return Center(
                    child: InkWell(child: MenuWidget(title: homeMenuList[index].title, image: homeMenuList[index].icon),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailsPage(menu: homeMenuList[index],)),
                        );
                      },),
                  );
                }),
              ),
            ),

          ],
        ),
      ),
    );
  }
}