import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/model/fake_data.dart';
import 'package:techblog/my_color.dart';

class Mainscrren extends StatelessWidget {
  const Mainscrren({super.key});

  @override
  Widget build(BuildContext context) {

    var texttheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;
    
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0,16,0,0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              
                  Icon(Icons.menu),
                  Image(image: Assets.images.splash.provider(),
                  height: size.height / 13.6,
                  ),
                  Icon(Icons.search),
              
                ],
              ),
              SizedBox(height: 15),
              Stack(
                children: [

                  Container(
                    width: size.width / 1.20,
                    height: size.height / 4.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image: AssetImage(homePagePoterMap["imageAssets"]),
                        fit: BoxFit.cover,
                        ),
                    ),
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(
                        colors: gradientColor.homepoterCoverGradient,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),

                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 10,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(homePagePoterMap["writer"]+" - "+homePagePoterMap["date"],style: texttheme.titleMedium),
                            Row(
                              children: [
                                Text(homePagePoterMap["view"],style: texttheme.titleMedium),
                                SizedBox(width: 8),
                                Icon(Icons.remove_red_eye_sharp,color: Colors.white,size: 16,),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text("دوازده قدم برنامه نویسی یک دوره ی...",style: texttheme.displayLarge,),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 16),
              // ListTag
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tagList.length,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, index==0?bodyMargin:15, 8),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24),
                        ),
                        gradient: LinearGradient(colors: gradientColor.tags,
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                        child: Row(
                          children: [
                            ImageIcon(
                                Assets.icons.hashtag.provider(),
                                color: Colors.white,
                                size: 16,
                              ),
                            SizedBox(width: 8),
                            Text(tagList[index].title,style: texttheme.displayMedium,),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
              ),
            ],
          ),
        ),
          ));
  }
}
