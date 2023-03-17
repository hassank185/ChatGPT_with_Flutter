


import 'package:flutter/material.dart';
import 'package:flutter_chat_gpt/features/app/app_const/page_const.dart';
import 'package:flutter_chat_gpt/features/app/home/widget/home_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 60,),
                Image.asset("assets/app_logo.png"),
              ],
            ),
            Column(
              children: [
                HomeButtonWidget(
                  textData: "Image Generation - OpenAI",
                  iconData: Icons.image_outlined,
                  onTap: (){
                    Navigator.pushNamed(context, PageConst.ImageGenerationPage);
                  }
                ),
                SizedBox(height: 30,),
                HomeButtonWidget(
                    textData: "Text Completion - OpenAI",
                    iconData: Icons.text_fields_outlined,
                    onTap: (){
                      Navigator.pushNamed(context, PageConst.TextCompletionPage);
                    }
                ),
              ],
            ),
            Text("ChatGPT: Optimizing Language Models for Dialogue",style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
