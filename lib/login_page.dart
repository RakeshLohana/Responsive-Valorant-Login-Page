import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? _checked = false;


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;


    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                        'https://static.vecteezy.com/system/resources/previews/019/017/450/non_2x/valorant-logo-transparent-free-png.png',
                        height: 100),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(13)),
                        child: Icon(
                          Icons.question_mark,
                          color: Colors.white,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sign in with your',
                          style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Riot Account',
                          style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ]),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.grey.shade300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'USERNAME',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 44, 42, 42),
                                fontSize: 15,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.grey.shade300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'PASSWORD',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 44, 42, 42),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CheckboxListTile(
                        title: Text('Stay Signed in'),
                        value: _checked,
                        onChanged: (bool? value) {
                          setState(() {
                            _checked = value;
                          });
                        },
                        activeColor: Colors.grey.shade400,
                        checkColor: Colors.white,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      SizedBox(
                        height:height*0.03 ,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Center(
                            child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.red.shade700,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(
                                  Icons.arrow_forward_sharp,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height*0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('CREATE ACCOUNT'),
                              SizedBox(height: 6,),
                              Text("CAN'T SIGN IN"),
                            ],
                          ),
                          Text('V20.7.0')
                        ],
                      )
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
