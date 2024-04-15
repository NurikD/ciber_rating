import 'package:flutter/material.dart';

class authPage extends StatefulWidget {
  const authPage({super.key});

  @override
  State<authPage> createState() => _authPageState();
}

class _authPageState extends State<authPage> {

  bool _isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000527),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height:
                    MediaQuery.of(context).size.height * 0.4,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff272C49),
                    ),
                    child: Form(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100, 40, 100, 100),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Center(
                                  child: Text(
                                    'Вход',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                              const Text(
                                'Email',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.009,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  hintText: '*****@gmail.com',
                                  fillColor: const Color(0xffB7B1ED),
                                  filled: true,
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.015,
                              ),
                              const Text(
                                'Пароль',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.009,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    hintText: '********',
                                    fillColor: const Color(0xffB7B1ED),
                                    filled: true,
                                    suffixIcon: IconButton(
                                      icon: Icon(_isObscure
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                      onPressed: (){
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      },
                                    )
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: _isObscure,
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.02,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Color(0xFFB7B1ED)),
                                  foregroundColor: MaterialStateProperty.all(Colors.black54),
                                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  elevation: MaterialStateProperty.all(5),
                                ),
                                child: const Text(
                                  'Войти',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
