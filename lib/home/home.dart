import "package:flutter/material.dart";
import "package:pofato/widgets/appBar.dart" as bar;
import "package:pofato/components/Home/homeHelp.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
