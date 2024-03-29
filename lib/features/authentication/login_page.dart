import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool valueF = false;
  var _passwordVisible=false;


  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child:
        Container(
          width: w/1.20,height:h/1.50,
          decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(150),
            // topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(150.0)),
            color:Color(0xffFF5733),
      ),
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Center(child: Text("Welcome",style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),)),
                const SizedBox(height: 10,),
                const Text("ID No.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                const TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white,fontSize: 20),
                  decoration: InputDecoration(
                    // hintText: "ID No.",
                    // hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 2)

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 2)
                    )
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("Password",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                TextField(
                  style: const TextStyle(color: Colors.white,fontSize: 20),
                  obscureText: _passwordVisible,
                  obscuringCharacter: "*",
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                     // Here is key idea
                    suffixIcon: IconButton(
                  icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible
                  ? Icons.visibility
                    : Icons.visibility_off,
                    color: Colors.white,
                  ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },),
                    // hintText: "ID No.",
                    // hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white,width: 2)

                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      )
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
    Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
                        focusColor: Colors.white,
        // hoverColor: Colors.white,
        value: valueF,
        onChanged: (bool? value) {
        setState(() {
        valueF = value!;
        });}),
        const Text("Remember me",style: TextStyle(color: Colors.white),),
      ],
    ),


                    const Text("Forgot Password",style: TextStyle(color: Colors.white),),

                  ],
                ),
                const SizedBox(height: 20,),
                Center(
                  child: InkWell(
                    onTap: (){},
                      child: const SizedBox(height: 50,width: 100,child: Center(child: Card(color: Colors.white,child: Center(child: Text("Login")),)),)),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? ",style: TextStyle(color: Colors.white),),
                    GestureDetector(
                        onTap: (){},
                        child: const Text("Create account",style: TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold),)),

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
