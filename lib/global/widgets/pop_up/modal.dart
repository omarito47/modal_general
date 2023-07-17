import 'package:flutter/material.dart';

class modal_pop_up {
  modal_pop_up({
    required BuildContext context,
    Icon? icon,
    required String header,
    required String description,
    required numberButton,
    required buttonText2,
    Function? function2,
    required String buttonText1,
    required Function function1,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            icon: Container(
              margin: EdgeInsets.only(bottom: 15),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 245, 245, 245),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8),
              child: icon,
            ),
            iconColor: Color.fromARGB(255, 235, 92, 44),
            title: Text(header),
            content: Text(
              description,
              textAlign: TextAlign.center,
            ),
            actions: numberButton == 2
                ? <Widget>[
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: button(
                            buttonText: buttonText1,
                            function: function2 ?? () {},
                            context: context,
                            backgroundColor: Color.fromARGB(255, 245, 245, 245),
                            textColor: Colors.black)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.21),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.only(right: 10),
                      child: button(
                          buttonText: buttonText2,
                          function: function1,
                          context: context,
                          backgroundColor: Color.fromARGB(255, 235, 92, 44),
                          textColor: Colors.white),
                    ),
                  ]
                : <Widget>[
                    TextButton(
                      child: Text(buttonText1),
                      onPressed: () {
                        function1;
                      },
                    ),
                  ]);
      },
    );
  }

  ElevatedButton button(
      {required buttonText,
      required Function function,
      required context,
      required backgroundColor,
      required Color textColor}) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor)),
      child: Text(
        buttonText,
        style: TextStyle(color: textColor),
      ),
      onPressed: () {
        function;
      },
    );
  }
}
