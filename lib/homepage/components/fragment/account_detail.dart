import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';


class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Image.asset("ic_user.png"),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text(
                          "My account",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                    ),
                  ],
                ),
            ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Image.asset("icon_email.png"),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    "My email",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Image.asset("icon_lock.png"),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    "My password",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Image.asset("ic_phone.png"),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    "My phone",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset("assets/icons/facebook-2.svg"),
                ),
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset("assets/icons/google-icon.svg"),
                ),
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset("assets/icons/twitter.svg"),
                )
              ],

            ),
        ),
      ],
    );
  }


}
