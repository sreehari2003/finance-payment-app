import "package:flutter/material.dart";
import "package:pofato/widgets/appBar.dart" as bar;
import "package:pofato/components/Home/homeHelp.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: const Color.fromARGB(255, 23, 92, 84),
            padding: const EdgeInsets.all(20),
            // color: colors.kPrimaryColor,
            child: Column(
              children: [
                const bar.CostumAppBar(
                    leftIcon: Icons.supervised_user_circle,
                    rightIcon: Icons.notifications),
                textAndaArrow("My Account"),
                cashInfo("1000,00"),
                menuInfo(),
                textAndaArrow("Next Payment"),
                cardInfo(Icons.play_circle, "Youtube Music", 9.99),
                cardInfo(
                    Icons.medical_services_rounded, "Zendesk Service", 19.99),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 20),
            color: Color(0xFFfaedcd),
            // height: 20,
            width: double.infinity,
            child: const Text(
              "Menu",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            color: Color(0xFFfaedcd),
            // height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    menuIconInfo(Icons.ac_unit, "Topup"),
                    menuIconInfo(Icons.card_giftcard, "Card"),
                    menuIconInfo(Icons.paste_sharp, "Pay bills")
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    menuIconInfo(Icons.transit_enterexit_outlined, "Transac"),
                    menuIconInfo(Icons.save, "Savings"),
                    menuIconInfo(Icons.share, "Sharing")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget textAndaArrow(String txt) {
  return Container(
    margin: const EdgeInsets.only(top: 23),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Text(
            txt,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        GestureDetector(
            onTap: () {},
            child: const Icon(Icons.arrow_forward_ios,
                color: Colors.white, size: 15))
      ],
    ),
  );
}

Widget cardInfo(IconData icon, String txt, double price) {
  return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        title: Text(
          txt,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        trailing: Text("\$$price",
            style: const TextStyle(color: Colors.white, fontSize: 16)),
      ));
}

Widget menuIconInfo(IconData ic, String txt) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.all(2),
    padding: EdgeInsets.all(10),
    height: 80,
    width: 80,
    child: Column(
      children: [Icon(ic), Text(txt)],
    ),
  );
}
