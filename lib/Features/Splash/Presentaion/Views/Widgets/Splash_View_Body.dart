import 'dart:ffi';
import 'package:get/get.dart';
import 'package:bookly_app/Features/Splash/Presentaion/Views/Widgets/Sliding_Text.dart';
import 'package:bookly_app/Features/home/Presentation/Views/Home_Page.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
 
  late AnimationController animationController;
  late Animation<Offset> slidingAnimaion;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    InitSlidingAnimation();

    navigateToHome();

  }

  void navigateToHome() {
      Future.delayed(const Duration(seconds:4),(){
      Get.to(()=>HomePage(),transition:Transition.fade,duration:Duration(milliseconds: 500));
    });
  }

  void InitSlidingAnimation() {
     animationController=AnimationController(vsync:this,duration: Duration(seconds: 2));
       
       slidingAnimaion=Tween<Offset>(
    begin: Offset(0,10),
    end: Offset.zero
      ).animate(animationController);
     animationController.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Image.asset("assets/images/Logo.png"),
      SizedBox(height: 10,),
       Sliding_Text(slidingAnimaion: slidingAnimaion)
        
      ],
    );
  }
}

