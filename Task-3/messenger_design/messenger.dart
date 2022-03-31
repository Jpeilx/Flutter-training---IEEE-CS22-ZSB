import 'package:flutter/material.dart';

class messenger extends StatelessWidget {
  const messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Row(children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://images2.minutemediacdn.com/image/upload/c_crop,w_4275,h_2404,x_0,y_93/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/images/GettyImages/mmsport/90min_en_international_web/01fyc0fywkg9t8x1xtdk.jpg'),
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            "Chats",
            style: TextStyle(color: Colors.white),
          ),
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 54, 53, 53),
                radius: 15.0,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 54, 53, 53),
                radius: 15.0,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 77, 73, 73),
              ),
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Icon(Icons.search),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'search',
                  style: TextStyle(color: Colors.black),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, Index) => builditemstory(),
                separatorBuilder: (context, index) => SizedBox(
                  width: 20,
                ),
                itemCount: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: ((context, index) => builditemchat()),
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount: 20)
          ]),
        ),
      ),
    );
  }
}

Widget builditemchat() => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/a-/AOh14Gj2cl9sXTLzQ7m7QSBnNSrMsqL5Cd4INm-98_3G=s360-p-rw-no'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 7.0,
              ),
            )
          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mohammed Mahmoud Ali Abdallah jbeil",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "hi salah i am big fan to you i wanna take a picture with you ",
                      style: TextStyle(color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Container(
                      height: 7.0,
                      width: 7.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Text(
                    "20.00",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
Widget builditemstory() => Container(
      width: 80,
      child: Column(
        children: [
          Stack(alignment: AlignmentDirectional.bottomEnd, children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/a-/AOh14Gj2cl9sXTLzQ7m7QSBnNSrMsqL5Cd4INm-98_3G=s360-p-rw-no'),
              radius: 30.0,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ]),
          SizedBox(
            height: 6.0,
          ),
          Text(
            'Mohammed Mahmoud jbeil ',
            style: TextStyle(color: Colors.white),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
