import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants/color_constants.dart';

class custonotewidget extends StatefulWidget {
  const custonotewidget({
    Key? key,
    required this.title,
    required this.des,
    this.ondeletepressed,
    this.oneditpressed,
  }) : super(key: key);

  final String title;
  final String des;
  final VoidCallback? ondeletepressed;
  final VoidCallback? oneditpressed;

  @override
  State<custonotewidget> createState() => _custonotewidgetState();
}

class _custonotewidgetState extends State<custonotewidget> {
  bool isSelected = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      isChecked = !isChecked;
                      setState(() {});
                    },
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      widget.title,
                      style: TextStyle(
                          color: Colorconstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colorconstants.mainblack,
                    ),
                    onPressed: () {
                      widget.oneditpressed!();
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colorconstants.mainblack,
                    ),
                    onPressed: () {
                      widget.ondeletepressed!();
                    },
                  )
                ],
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  widget.des,
                  style: TextStyle(color: Colorconstants.mainblack),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
