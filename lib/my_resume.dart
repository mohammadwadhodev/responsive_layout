import 'package:flutter/material.dart';
import 'package:learn_flutter/cancave_widget.dart';
import 'package:learn_flutter/customs/custom_tile.dart';
import 'package:learn_flutter/customs/fonst.dart';

class MyResume extends StatelessWidget {
  const MyResume({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          children: [
            profileWidget(),
            const SizedBox(height: 20),
            ConcaveWidget(child:Column(
              children: [
                contactAndProfile(),
              ],
            )),
          ],
        ),
      ),
    );
  }


  contactAndProfile(){
    return  Row(
      children: [
        Expanded(child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Text("Contact",style: boldFontStyle)),
            const SizedBox(height: 15),
            CustomTile(
                image: const Icon(Icons.phone,size: 15,color: Colors.blue),
                imageHeight: 30,
                imageWidth: 30,
                tileWidth: 300,
                child: Text("0317-241-3778",style: smallFontStyle.copyWith(fontWeight: FontWeight.bold,color: Colors.black))),

            const SizedBox(height: 15),

            CustomTile(
                image: const Icon(Icons.email,size: 15,color: Colors.blue),
                imageHeight: 30,
                imageWidth: 30,
                tileWidth: 300,
                child: Text("mohammadwadho5@gmail.com",
                    style: smallFontStyle.copyWith(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12))),

            const SizedBox(height: 15),
            CustomTile(
                image: const Icon(Icons.location_on,size: 12,color: Colors.blue),
                imageHeight: 30,
                imageWidth: 30,
                tileWidth: 300,
                child:  Text("D-STREET GIZRI KARACHI",
                    style: smallFontStyle.copyWith(fontWeight: FontWeight.bold,color: Colors.black))),

            const SizedBox(height: 15),

            CustomTile(
                image: const Icon(Icons.keyboard,size: 15,color: Colors.blue),
                imageHeight: 30,
                imageWidth: 30,
                tileWidth: 300,
                child:Text("mwadhosolutions.com",style: smallFontStyle.copyWith(fontWeight: FontWeight.bold,color: Colors.black))),

          ],
        )),

        Expanded(child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Text("Profile",style: boldFontStyle)),
            const SizedBox(height: 6),
            ConcaveWidget(child: Text("As a Full Stack Developer with 3.5 years of experience, I have expertise in mobile applications and developing web and using a variety of programming languages and frameworks. I have worked on several projects during my career, including teaching mobile app development, A team leader with excellent problem-solving and communication skills, with experience working with multiple clients across different projects.",style: mediumFontStyle.copyWith(fontSize: 13.9,fontWeight: FontWeight.w100)))
          ],
        )),
      ],
    );
  }

  Widget profileWidget(){
    return CustomTile(
        image: Image.asset("profile.png"),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Mohammad",
                    style: boldFontStyle.copyWith(fontSize: 22,fontStyle: FontStyle.italic)),
                const SizedBox(width: 5),
                Text("Wadho",
                    style: mediumFontStyle.copyWith(fontSize: 22,fontStyle: FontStyle.italic)),
              ],
            ),
            Text("SENIOR FLUTTER DEVELOPER",
                style: mediumFontStyle.copyWith(fontSize: 15,color: Colors.blue)),
          ],
        ));
  }


  Widget profile1(){
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ConcaveWidget(
              profileRadius: 60,
              height: 100,
              width: 100,
              child: Image.asset("dart.png"),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("Mohammad",
                        style: boldFontStyle.copyWith(fontSize: 22)),
                    const SizedBox(width: 5),
                    Text("Wadho",
                        style: mediumFontStyle.copyWith(fontSize: 22)),
                  ],
                ),
                Text("SENIOR FLUTTER DEVELOPER",
                    style: mediumFontStyle.copyWith(fontSize: 15,color: Colors.blue)),
              ],
            ),
            ConcaveWidget(
              profileRadius: 60,
              height: 100,
              width: 100,
              child: Image.asset("profile.png"),
            ),
          ],
        )

        // ConcaveWidget(
        //     height: screenHeight * 0.1,
        //     width: screenWidth * 1,
        //     child: const Text("hello")),
      ],
    );
  }

}
