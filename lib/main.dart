import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wa_clone/Chat/chat_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'WhatsApp '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;
  List messages = List.generate(
      12,
      (index) =>
          {'name': 'Ayoni', 'message': 'Message $index', 'time': '22:50'});

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
            backgroundColor: Color(0xff0F0F0F),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
            backgroundColor: Color(0xff0F0F0F),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Tools',
            backgroundColor: Color(0xff0F0F0F),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Chats',
            backgroundColor: Color(0xff0F0F0F),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color(0xff0F0F0F),
          ),
        ],
      ),

      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: ,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Calls'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Tools'),
        ),
        ChatsPage(),
        Container(
            alignment: Alignment.center,
            child: Flexible(
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                        height: 120,
                      ),
                    );
                  }),
            )),
      ][currentPageIndex],
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff1A120B),
        padding: const EdgeInsets.only(top: 50, left: 22, right: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Edit',
                    style: TextStyle(
                        color: Color(0xff34b7f1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff34b7f1)),
                  ),
                  Row(
                    children: [
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Color(0xff34b7f1),
                          )),
                      Gap(20),
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Icon(
                            Icons.edit_square,
                            color: Color(0xff34b7f1),
                          ))
                    ],
                  )
                ],
              ),
            ),
            Gap(10),
            Text('WA Business',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                )),
            Gap(10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      'Broadcast Lists',
                      style: TextStyle(
                          color: Color(0xff34b7f1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff34b7f1)),
                    )),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    'New Group',
                    style: TextStyle(
                        color: Color(0xff34b7f1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff34b7f1)),
                  ),
                )
              ],
            ),
            const Gap(20),
            const SizedBox(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    Gap(20),
                    Text(
                      'Archived',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  '6',
                  style: TextStyle(
                      color: Color(0xff34b7f1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decorationColor: Color(0xff34b7f1)),
                ),
              ],
            )),
            Divider(
              color: Colors.white,
              thickness: 0.1,
            ),
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                itemBuilder: (context, index) {
                  return ChatCard(
                    name: 'Ayoni',
                    message: 'Message $index',
                    time: '22:50',
                  );
                },
                itemCount: 20,
                // separatorBuilder: (context, index) {
                //   return const Divider(
                //     color: Colors.white,
                //     thickness: 0.1,
                //   );
                // },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// _home() 
