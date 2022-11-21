import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Aplikasi Berita'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "BERITA TERBARU",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "CUACA HARI INI",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.purpleAccent)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/SEVENTEEN%28%EC%84%B8%EB%B8%90%ED%8B%B4%29_-_%27Ready_to_love%27_%EC%9D%91%EC%9B%90%EB%B2%95_3m_25s.jpg/1024px-SEVENTEEN%28%EC%84%B8%EB%B8%90%ED%8B%B4%29_-_%27Ready_to_love%27_%EC%9D%91%EC%9B%90%EB%B2%95_3m_25s.jpg"),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: const Text(
                        "Grup Idol SEVENTEEN Kembali Mengadakan Konser Ke-3 di Penghujung Tahun",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.network(
                              "https://pict.sindonews.net/dyn/732/pena/news/2022/09/01/187/872805/lebih-dikenal-sebagai-aktor-iqbaal-ramadhan-tak-pernah-tinggalkan-dunia-musik-ztf.jpg"),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: const Text(
                                "Upload Foto dengan Gitar, Iqbaal Kembali Bermusik?"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      child: const Text("Jakarta, 01 November 2022"),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/SEVENTEEN%28%EC%84%B8%EB%B8%90%ED%8B%B4%29_-_%27Ready_to_love%27_%EC%9D%91%EC%9B%90%EB%B2%95_3m_25s.jpg/1024px-SEVENTEEN%28%EC%84%B8%EB%B8%90%ED%8B%B4%29_-_%27Ready_to_love%27_%EC%9D%91%EC%9B%90%EB%B2%95_3m_25s.jpg"),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: const Text(
                                "Grup Idol SEVENTEEN Kembali Mengadakan Konser Ke-3 di Penghujung Tahun"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      child: const Text("Jakarta, 01 November 2022"),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.network(
                              'https://pict.sindonews.net/dyn/732/pena/news/2022/09/01/187/872805/lebih-dikenal-sebagai-aktor-iqbaal-ramadhan-tak-pernah-tinggalkan-dunia-musik-ztf.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: const Text(
                                "Upload Foto dengan Gitar, Iqbaal Kembali Bermusik?"),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      child: const Text("Jakarta, 01 November 2022"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
