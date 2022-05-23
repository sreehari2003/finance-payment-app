import 'package:flutter/material.dart';

class CostumAppBar extends StatefulWidget {
  final IconData leftIcon;
  final IconData? rightIcon;
  final Function? leftcallback;
  final String? image;
  const CostumAppBar(
      {Key? key,
      this.rightIcon,
      required this.leftIcon,
      this.leftcallback,
      this.image})
      : super(key: key);

  @override
  State<CostumAppBar> createState() => _CostumAppBarState();
}

class _CostumAppBarState extends State<CostumAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 5,
        right: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (widget.leftcallback != null) {
                widget.leftcallback!();
              } else {
                null;
              }
            },
            // child: Column(children: [...setIcon(widget.leftIcon)]),
            child: setNewIcon(widget.leftIcon),
          ),

          setNewIcon(widget.rightIcon),
          // ...setIcon(widget.rightIcon)
        ],
      ),
    );
  }
}

Widget setNewIcon(IconData? icon) {
  if (icon != null) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 173, 171, 171),
      ),
      child: Icon(
        icon,
        size: 25,
      ),
    );
  }
  return const SizedBox();
}

Widget setAvatar(String? img) {
  if (img != null) {
    return CircleAvatar(
      backgroundImage: NetworkImage(img),
      radius: 10,
    );
  } else {
    return const SizedBox();
  }
}




//   if (icon != null) {
//     return [
//       Container(
//         padding: const EdgeInsets.all(8),
//         decoration: const BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.white,
//         ),
//         child: Icon(icon),
//       )
//     ];
//   }
//   return [];
// }