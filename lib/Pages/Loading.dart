import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: SpinKitDualRing(
              color: Colors.white,
              size: 50.0,
            )
        )
    );;
  }
}


// class Loading extends StatefulWidget {
//
//   @override
//   State<Loading> createState() => _LoadingState();
// }
//
// class _LoadingState extends State<Loading> {
//
//   //burayı fonksiyona taşı
//   void redirectToHome(){
//
//     Future.delayed(const Duration(milliseconds: 500), (){
//       Navigator.pushReplacementNamed(context, '/home');
//     });
//   }
//
//   void initState() {
//     super.initState();
//     redirectToHome();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         body: Center(
//             child: SpinKitDualRing(
//               color: Colors.white,
//               size: 50.0,
//             )
//         )
//     );
//   }
// }
