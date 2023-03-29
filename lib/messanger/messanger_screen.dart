import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {

  //context---> Screen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title:Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://i.pinimg.com/236x/5b/b5/df/5bb5df2f02b93f195e38a03d9c58b6be.jpg'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: ()
            {},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor:Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size:16.0,
                color: Colors.white,
              ),
            ),),
          IconButton(
            onPressed: ()
            {},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor:Colors.blue,
              child: Icon(
                Icons.edit,
                size:16.0,
                color: Colors.white,
              ),
            ),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color:Colors.grey[300],
                ),
                padding:EdgeInsets.all(5.0,),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated
                  (
                  scrollDirection: Axis.horizontal,
                  //context------>List
                  itemBuilder:(context, index) =>builtStoryItem(),
                  separatorBuilder: (context,item)=>SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>builtChatItem() ,
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.0,
                ),
                itemCount:15 ,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //1.build item
  //2.build list
  //3.add item to list


  //arrow function
  Widget builtChatItem()=>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://i.pinimg.com/236x/5b/b5/df/5bb5df2f02b93f195e38a03d9c58b6be.jpg'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius:7.0,
              backgroundColor: Colors.green,
            ),
          ),
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
              'Sophiya Adam',
              style:TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
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
                    'Hello My Name Is Sophiya Adam',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color:Colors.blue,
                      shape:BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '05:48 PM',
                ),
              ],
            ),
          ],
        ),
      ),

    ],
  );
  Widget builtStoryItem()=>Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://i.pinimg.com/236x/5b/b5/df/5bb5df2f02b93f195e38a03d9c58b6be.jpg'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius:7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          'Sophiya Adam',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}


