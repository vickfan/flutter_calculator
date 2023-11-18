import "package:flutter/material.dart";
import "package:iphone_calculator/constants/colors.dart";
import "package:iphone_calculator/model/button.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(children: [
              display(),
              Expanded(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Button(
                          label: 'AC',
                          backgroundColor: grey,
                          labelColor: Colors.black,
                          onTap: () {
                            print('taptap');
                          }),
                      Button(
                        backgroundColor: grey,
                        label: '+/-',
                        labelColor: Colors.black,
                        onTap: () {},
                      ),
                      Button(
                          label: '%',
                          onTap: () {},
                          backgroundColor: grey,
                          labelColor: Colors.black),
                      Button(
                          label: '÷',
                          onTap: () {},
                          backgroundColor: grey,
                          labelColor: Colors.black)
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                          label: '7',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '8',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '9',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: 'x',
                          onTap: () {},
                          backgroundColor: orange,
                          labelColor: Colors.white)
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                          label: '4',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '5',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '6',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '-',
                          onTap: () {},
                          backgroundColor: orange,
                          labelColor: Colors.white)
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                          label: '1',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '2',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '3',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '+',
                          onTap: () {},
                          backgroundColor: orange,
                          labelColor: Colors.white)
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                          label: '0',
                          isLongButton: true,
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '.',
                          onTap: () {},
                          backgroundColor: darkGrey,
                          labelColor: Colors.white),
                      Button(
                          label: '=',
                          onTap: () {},
                          backgroundColor: orange,
                          labelColor: Colors.white)
                    ],
                  )
                ],
              )),
            ]),
          )
        ],
      ),
    );
  }

  Container display() {
    return Container(
        alignment: Alignment.bottomRight,
        margin: EdgeInsets.only(top: 40),
        width: double.infinity,
        height: 80,
        decoration:
            BoxDecoration(border: Border.all(width: 1.0, color: Colors.white)),
        child: Text(
          '0',
          style: TextStyle(
              color: Colors.white, fontSize: 70, fontWeight: FontWeight.w500),
        ));
  }
}
