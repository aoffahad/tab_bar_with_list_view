import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.pink,
        title: Text("TabBar"),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 60, 
                color: Colors.white ,
                child: TabBar(
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.only(top: 10, bottom: 10,right: 10,left: 10), 
                  unselectedLabelColor: Colors.pink, 
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), 
                    color: Colors.pinkAccent, 
                  ), 
                  tabs: [
                    Tab(
                      child: Container(
                        height: 50, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), 
                          border: Border.all(color: Colors.pinkAccent, width: 1) 
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Chat"),
                        ),
                      ),
                    ),
                     Tab(
                      child: Container(
                        height: 50, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), 
                          border: Border.all(color: Colors.pinkAccent, width: 1) 
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Status"),
                        ),
                      ),
                    ),
                     Tab(
                      child: Container(
                        height: 50, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), 
                          border: Border.all(color: Colors.pinkAccent, width: 1) 
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Call"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                 ListView.separated(
                  padding: EdgeInsets.all(15),
                  itemCount: 20, 
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemBuilder: (context, index){
                    return ListTile(
                      onTap: (){},
                      title: Text("Chat List $index"),
                      subtitle: Text("History"),
                      trailing: IconButton(
                      onPressed: (){
                        print("Button Pressed");
                      }, icon: Icon(Icons.chat_bubble))
                    );
                  }, 
                  ),
                   ListView.separated(
                  padding: EdgeInsets.all(15),
                  itemCount: 20, 
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemBuilder: (context, index){
                    return ListTile(
                      onTap: (){},
                      title: Text("Status List $index"),
                      subtitle: Text("History"),
                      trailing: IconButton(
                      onPressed: (){
                        print("Button Pressed");
                      }, icon: Icon(Icons.stacked_bar_chart))
                    );
                  }, 
                  ),
                   ListView.separated(
                  padding: EdgeInsets.all(15),
                  itemCount: 20, 
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemBuilder: (context, index){
                    return ListTile(
                      onTap: (){},
                      title: Text("Call List $index"),
                      subtitle: Text("History"),
                      trailing: IconButton(
                      onPressed: (){
                        print("Button Pressed");
                      }, icon: Icon(Icons.call_made))
                    );
                  }, 
                  ),
                ],
              ),
            )
          ],
        )
        
        ),
    );
  }
}