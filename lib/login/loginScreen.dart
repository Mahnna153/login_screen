import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  var emailCon = TextEditingController();
  var passCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('LogIn',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Hello, login now to see our sales :)',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: emailCon,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value){
                    print(value.toUpperCase());
                  },
                  decoration: const InputDecoration(
                    labelText: 'Enter Email Address :)',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: passCon,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Enter Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  // clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadiusDirectional.all(Radius.circular()),
                  ),
                  width: double.infinity,
                  child: MaterialButton(
                    height: 48,
                    color: Colors.blueGrey,
                      child: const Text(
                          'LogIn',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                      onPressed: (){
                      print(emailCon.text);
                      print(passCon.text);
                      }/////////////////////////////////////////////////
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t Have an Account?',
                    ),
                    TextButton(onPressed: (){}, child: const Text('SignUp',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 17
                    ),))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
