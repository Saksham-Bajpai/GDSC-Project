import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_buttons.dart';
import 'package:emart_app/widgets_common/bg_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                //edit profile button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.edit, color: whiteColor))
                      .onTap(() {}),
                ),

                //use details section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                          .box
                          .roundedFull
                          .clip(Clip.antiAlias)
                          .make(),
                      10.widthBox,
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Siddarth Mishra".text.fontFamily(semibold).white.make(),
                          "siddarth@GDSClead.com".text.white.make(),
                        ],
                      )),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                          color: Colors.white,
                        )),
                        onPressed: () {},
                        child: logout.text.fontFamily(semibold).white.make(),
                      ),
                    ],
                  ),
                ),

                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCart(
                        count: "00",
                        title: "in your cart",
                        width: context.screenWidth / 3.4),
                    detailsCart(
                        count: "32",
                        title: "in your wishlist",
                        width: context.screenWidth / 3.4),
                    detailsCart(
                        count: "67",
                        title: "in your orders",
                        width: context.screenWidth / 3.4),
                  ],
                ),

                //buttons section
                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Divider(color: lightGrey);
                  },
                  itemCount: profileButtonsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                        profileButtonsList[index],
                        width: 23,
                      ),
                      title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                    );
                  },
                )
                    .box
                    .white
                    .rounded
                    .margin(EdgeInsets.all(12))
                    .padding(const EdgeInsets.symmetric(horizontal: 16))
                    .shadowSm
                    .make()
                .box.color(redColor).make(),
              ],
            )),
      ),
    );
  }
}
