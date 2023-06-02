import 'package:flutter/material.dart';
/*=====================================================================================================================*/

/*=====================================================================================================================*/
void main() {
  runApp(const MyApp());
}
/*=====================================================================================================================*/

/*=====================================================================================================================*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ứng dụng nấu ăn',
      home: Mon_chay(),
    );
  }
}

Widget eval_chay(String text) {
  return evalString_chay(text);
}

Widget evalString_chay(String string) {
  // Bỏ đi dấu ngoặc đơn và cặp ngoặc ()
  string = string.replaceAll('(', '').replaceAll(')', '');
  // Tạo tên Widget
  final Widget widget = (string == 'mon_chay1')
      ? mon_chay1()
      : (string == 'mon_chay2')
          ? mon_chay2()
          : (string == 'mon_chay3')
              ? mon_chay3()
              : (string == 'mon_chay4')
                  ? mon_chay4()
                  : (string == 'mon_chay5')
                      ? mon_chay5()
                      : mon_chay1();
  return widget;
}

Widget eval_man(String text) {
  return evalString_man(text);
}

Widget evalString_man(String string) {
  // Bỏ đi dấu ngoặc đơn và cặp ngoặc ()
  string = string.replaceAll('(', '').replaceAll(')', '');
  // Tạo tên Widget
  final Widget widget = (string == 'mon_man1')
      ? mon_man1()
      : (string == 'mon_man2')
          ? mon_man2()
          : (string == 'mon_man3')
              ? mon_man3()
              : (string == 'mon_man4')
                  ? mon_man4()
                  : (string == 'mon_man5')
                      ? mon_man5()
                      : mon_man1();
  return widget;
}
/*=====================================================================================================================*/

/*=====================================================================================================================*/
// màn hình chính
class Mon_chay extends StatelessWidget {
  Mon_chay({Key? key}) : super(key: key);
  final List<String> name = [
    'Khuôn đậu xào xả ớt',
    'Khuôn đậu xào rau củ',
    'Chả giò',
    'Mì xào nấm',
    'Canh nấm bông cải chay',
  ];

  final List<String> image = [
    'chay1.jpg',
    'chay2.jpg',
    'chay3.jpg',
    'chay4.jpg',
    'chay5.jpg',
  ];

  final List<String> list = [
    'mon_chay1()',
    'mon_chay2()',
    'mon_chay3()',
    'mon_chay4()',
    'mon_chay5()',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'CÁC MÓN CHAY',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
/*=====================================================================================================================*/
// Thêm danh sách các món ăn
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  image[index],
                  fit: BoxFit.cover,
                  height: 200,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => eval_chay(list[index]),
                      ),
                    );
                    // Hành động khi nhấn nút
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    width: 1700,
                    height: 50,
                    child: Text(
                      name[index],
                      textAlign: TextAlign.center, // Căn giữa văn bản
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),

/*=====================================================================================================================*/
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
// Hành động khi nhấn nút 1
                },
                child: Container(
                  width: 730,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant_menu,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'MÓN CHAY',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mon_man(),
                    ),
                  );
// Hành động khi nhấn nút 2
                },
                child: Container(
                  width: 730,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(5, 5, 10, 5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.restaurant_menu),
                      SizedBox(width: 5),
                      Text(
                        'MÓN MẶN',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// màn hình thứ 2
class Mon_man extends StatelessWidget {
  Mon_man({Key? key}) : super(key: key);
  final List<String> name = [
    'Thịt ba chỉ kho tiêu',
    'Sườn xào chua ngọt',
    'Thịt bò xào rau bí',
    'Cá bống kho tiêu',
    'Lòng xào dưa chua',
  ];

  final List<String> image = [
    'man1.jpeg',
    'man2.jpg',
    'man3.jpg',
    'man4.jpg',
    'man5.jpg',
  ];

  final List<String> list = [
    'mon_man1()',
    'mon_man2()',
    'mon_man3()',
    'mon_man4()',
    'mon_man5()',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'CÁC MÓN MẶN',
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          automaticallyImplyLeading: false),
/*=====================================================================================================================*/
// Thêm danh sách các món ăn
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  image[index],
                  fit: BoxFit.cover,
                  height: 200,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => eval_man(list[index]),
                      ),
                    );
                    // Hành động khi nhấn nút
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    width: 1700,
                    height: 50,
                    child: Text(
                      name[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),

/*=====================================================================================================================*/
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
// Hành động khi nhấn nút 1
                },
                child: Container(
                  width: 730,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant_menu,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'MÓN CHAY',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
// Hành động khi nhấn nút 2
                },
                child: Container(
                  width: 730,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(5, 5, 10, 5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant_menu,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'MÓN MẶN',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*=====================================================================================================================*/

/*=====================================================================================================================*/
// các món chay
//khuôn đậu xào xả ớt
class mon_chay1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Khuôn đậu xào xả ớt',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'chay1.jpg',
                width: 300,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Khuôn đậu xào xả ớt',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ 4 miếng đậu hũ.',
                  '+ 4 cây sả, 4 trái ớt, 3 tép tỏi (có thể thay bằng hành paro).',
                  '+ Gia vị: Nước tương, hạt nêm chay, tương ớt, đường, bột ngọt, dầu ăn.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Sơ chế nguyên liệu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Rửa khuôn đậu để ráo nước, rửa sả ớt và lột vỏ tỏi',
                  '+ Chiên khuôn đậu vàng đều 4 mặt sau đó vớt ra cắt miếng vừa ăn',
                  '+ Tiếp đến, băm sả, ớt, tỏi cho nhuyễn',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Nấu sốt kho sả ớt và ướp đậu hũ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Cho 3 muỗng canh dầu ăn, chờ nóng dầu. Cho tỏi vào phi thơm, tiếp cho sả, ớt vào đảo đều.',
                  '+ Khi thấy hỗn hợp sền sệt và khô lại thì thêm nước và nêm gia vị (hạt nêm chay, tương ớt, ít đường, ít bột ngọt) và khuấy đều gia vị',
                  '+ Cho khuôn đậu vào, đảo lửa nhỏ 2 phút và tắt lửa.',
                  '+ cuối cùng là thành phẩm mà bạn đã cố gắng làm',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

// khuôn đậu xào rau củ
class mon_chay2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Khuôn đậu xào rau củ',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'chay2.jpg',
                width: 350,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Khuôn đậu xào rau củ',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ 2 miếng đậu hũ.',
                  '+ 1/2 Bông cải xanh, 1/2 bông cải trắng',
                  '+ 1 trái ớt chuông, Hành',
                  '+ Gia vị: Nước tương, hạt nêm chay, đường, bột ngọt, dầu ăn.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Sơ chế nguyên liệu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Rửa khuôn đậu để ráo nước, rửa bông cải, rửa ớt chuông, rửa hành',
                  '+ Chiên khuôn đậu vàng đều 4 mặt sau đó vớt ra cắt miếng vừa ăn, luộc qua bông cải để nguội',
                  '+ Tiếp đến, cắt nhỏ bông cải, ớt chuông và hành',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Xào khuôn đậu với rau củ quả',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Cho 3 muỗng canh dầu ăn, chờ nóng dầu. Cho tỏi vào phi thơm, tiếp cho sả, ớt vào đảo đều.',
                  '+ Trộn hỗn hợp: lấy 1 chén nước luộc bông cải, cho nước tương, hạt nêm chay, đường, bột ngọt và nêm nếm vừa miệng',
                  '+ Bắt chảo lên, cho dầu ăn vào và phi hành. Sau khi hành thơm thì cho hỗn hợp trên vào đun sôi.',
                  '+ Khi hỗn hợp sôi thì cho bông cải, ớt chuông, khuôn đậu vào đảo đều tay khoảng 5 phút và tắt bếp',
                  '+ Dọn đậu hũ xào bông cải ra dĩa và rắc thêm ít hạt tiêu cho thơm',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

// Chả giò
class mon_chay3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Chả giò chay',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'chay3.jpg',
                width: 350,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Chả giò chay',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ 1 củ khoai lang, 1/2 củ sắn, 1/2 củ khoai môn cao',
                  '+ 1/4 củ cà rốt',
                  '+ 6 tai mộc nhĩ nhỏ hạt nêm chay, đường, bột ngọt, dầu ăn.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Sơ chế nguyên liệu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Gọt vỏ khoai lang, môn và cà rốt, sau đó bào sợi',
                  '+ Củ sắn cũng gọt vỏ nhưng bào sợi riêng và vắt nước cho thật khô',
                  '+ Mộc nhĩ thái sợi',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Ướp nhân',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Cho tất cả các nguyên liệu trên vào tô rồi nêm nếm: hạt nêm, bột ngọt, tiêu, đường.',
                  '+ Trộn đều tất cả lên rồi ướp khoảng 20 phút',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 3: Hấp nhân và cuốn chả giò',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Hấp nhân 6-7 phút cho nhân chín. Sau khi hấp xong thì cho ra dĩa để nguội',
                  '+ Cuốn chả giò và cho vào ngăn đá để làm đông chả giò, khi chiên sẽ giòn hơn',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 4: Chiên chả giò',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Cho dầu vào chảo',
                  '+ Tiếp đến, cho giò vào chiên nhanh cho vàng đều rồi vớt ra để ráo dầu',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

// Mì xào nấm
class mon_chay4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Mì xào nấm chay',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'chay4.jpg',
                width: 350,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Mì xào nấm chay',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ 1 gói mì chay.',
                  '+ 3 Khuôn đậu.',
                  '+ 300g nấm rơm.',
                  '+ 1 bó bắp cải, 1 cà rốt.',
                  '+ Rau mùi, bột nêm chay, muối và dầu ăn.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Sơ chế nguyên liệu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Nấm rơm cắt bỏ gốc và rửa thật sạch với nước muối pha loãng. sau đó rửa lại bằng nước sạch và để khô. Cắt nấm làm đôi.',
                  '+ Các loại rau nhặt, rửa với nước muối. Sau đó rửa lại bằng nước sạch và để khô. Dùng dao cắt các loại rau củ thành miếng vừa ăn.',
                  '+ Cà rốt gọt vỏ, rửa sạch, thái lát mỏng.',
                  '+ Khuôn đậu rửa sơ qua, để ráo nước rồi cắt thành miếng vừa ăn.',
                  '+ Bún ngâm nước ấm để mì mềm rồi vớt ra, xả lại nước sạch, để ráo. Cho ít dầu ăn vào mì, để mì mềm và khỏi dính nhau.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Xào rau và nấm',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Bắt chảo, cho dầu ăn vào và bật bếp. Khi dầu sôi thì bỏ bắp cải vào xào nhẹ, thấy rau săn lại thì cho nấm và cà rốt vào xào cùng.',
                  '+ Khi rau và nấm gân chín, nêm thêm chút hạt nêm chay và muối cho vừa ăn. Đảo đều tay để vật liệu thấm gia vị. Sau đó cho ra đĩa riêng.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 3: Chiên đậu hủ trắng',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Bắt chảo dầu cho sôi. Sau đó, cho khuôn đậu vào chiên đều các mặt rồi vớt ra.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 4: Xào mì chay',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Bắt chảo cho ít dầu để sôi và cho mì vào xào.',
                  '+ Cho cải và nấm vào xào chung. Nêm nếm gia vị lại cho vừa ăn, đảo thêm 2-3 phút rồi cho ra dĩa.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

// Canh nấm bông cải
class mon_chay5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Canh nấm bông cải',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'chay5.jpg',
                width: 350,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Canh nấm bông cải chay',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ 1/2 cái Bông cải xanh',
                  '+ 100 gr Nấm hỗn hợp',
                  '+ 1/4 củ Cà rốt',
                  '+ 1 miếng Đậu hủ',
                  '+ Hành ngò',
                  '+ 1 tô Nước dùng rau củ',
                  '+ Poro hoặc hành tím băm',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Phi thơm hành tím/poro xào nấm chín, thêm nước dùng nấu sôi.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Thêm cà rốt, bông cải nấu sôi nêm nếm vừa ăn. Thả nhẹ đậu hủ vào.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 3: Múc ra tô rắc hành ngò tiêu xay tắt bếp.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

/*=====================================================================================================================*/

/*=====================================================================================================================*/
// các món mặn
// Thịt ba chỉ kho tiêu
class mon_man1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Thịt ba chỉ kho tiêu',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'man1.jpeg',
                width: 300,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Thịt ba chỉ kho tiêu',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Thịt ba chỉ 400 gr',
                  '+ Ớt 3 trái',
                  '+ Hành tím băm 1 củ',
                  '+ Tỏi băm 2 tép',
                  '+ Nước mắm 1 muỗng canh',
                  '+ Tiêu hạt 1 muỗng canh',
                  '+ Gia vị thông dụng 1 ít(muối/ đường/ bột ngọt/ hạt nêm/ tiêu)',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Sơ chế',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Thịt ba chỉ mau về dùng muối chà xát, sau đó rửa lại với nước sạch.',
                  '+ Đun sôi 1 nồi nước, đợi nước sôi thì bỏ vài lát gừng và ít muối vào. Tiếp đến, cho thịt heo vào luộc qua trong vòng 3 - 4 phút rồi vớt ra để trong nước đá.',
                  '+ Sau đó, rửa sạch thịt và các thành miếng nhỏ vừa ăn.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Ướp thịt',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Cho thịt vào tô lớn, nêm 1 muỗng cà phê đường, 1 muỗng cà phê bột ngọt, 1 muỗng cà phê hạt nêm, 1 muỗng cà phê tiêu rồi trọn đều lên.',
                  '+ Cuối cùng, bỏ hành tím, tỏi băm vào và trộn đều lên, để yên cho thịt thấm giá vị khoảng 20 phút.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Kho thịt',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Cho đường vào nồi cùng 1 muỗng canh nước để thắng đường làm nước màu.',
                  '+ Khi thấy nước đường sôi lên và chuyển màu nâu đẹp thì cho thịt vào xào cho săn thịt lại rồi đổ 150ml nước vào rồi cho ớt vào.',
                  '+ Nấu được khoảng 10 phút thì bạn cho 1 muỗng canh nước mắm vào, hạ nhỏ lửa và tiếp tục nấu thêm 2 phút.',
                  '+ Đến khi nước thịt sôi lên lần nữa và bắt đầu cạn thì nêm nếm cho vừa ăn, tắt bếp, bỏ vào 1 muỗng canh tiêu hạt vào nữa là hoàn thành.',
                  '+ Cuối cùng, chúng ta chỉ cần múc ra dĩa là đã có ngay một món thịt kho tiêu nóng hổi thơm ngon rồi.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

// Sườn xào chua ngọt
class mon_man2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Sườn xào chua ngọt',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'man2.jpg',
                width: 300,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Sườn xào chua ngọt',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Sườn heo non 500 gr',
                  '+ Ớt chuông 3 trái(mỗi loại một màu)',
                  '+ Hành tây nhỏ 1 củ',
                  '+ Hành 2 củ',
                  '+ Tỏi 1 củ',
                  '+ Ớt 3 trái',
                  '+ Ngò',
                  '+ Gia vị thông dụng 1 ít (Giấm, nước nắm, dầu ăn, bột năng, muối, tiêu, hạt nêm, đường)',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Sơ chế sườn non',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Để sườn non sạch và hết mùi hôi thì nên rửa sạch với nước, sau đó bắc 1 cái nồi lên bếp cho vào 1 chút muối. Khi nước sôi, cho sườn vào chần sơ khoảng 3 - 5 phút.',
                  '+ Vớt sườn non ra tô cho ráo nước, sau đó ướp vào sườn với 2 muỗng cà phê nước mắm, 1 muỗng cà phê đường, 1 muỗng cà phê hạt nêm trong khoảng 15 phút.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Chiên sườn',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Sau khi sườn thấm gia vị, lăn sườn qua một lớp bột năng.',
                  '+ Tiếp theo, cho dầu vào một chiếc chảo và bắc lên bếp.',
                  '+ Khi dầu nóng, cho sườn vào chiên tới khi vàng đều, sau đó gắp ra dĩa có lót giấy thấm dầu.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 3: Sơ chế ớt chuông và hành tây',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Cắt nhỏ ớt chuông và hành tây thành miếng vừa ăn.',
                  '+ Tiếp theo pha sốt chua ngọt gồm:',
                  '  - 3 muỗng canh giấm.',
                  '  - 1 muỗng canh đường',
                  '  - 2 muỗng canh nước mắm.',
                  '  - 2 tép tỏi băm.',
                  '  - 1 trái ớt băm (khẩu vị có thể tăng giảm theo ý thích của bạn nhé), sau đó khuấy đều.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 4: Xào sườn chua ngọt',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Bắc 1 cái chảo khác lên bếp, cho vào một ít dầu và cho 1 ít hành tím băm vào xào cho thơm. Tiếp đến, cho ớt chuông vào xào.',
                  '+ Rồi cho sườn vào xào chung. Khi ớt chuông sắp chín, bạn cho hành tây và sốt chua ngọt vào xào.',
                  'Cuối cùng hòa 1 muỗng cà phê bột năng vào một tí nước rồi cho vào sườn xào tới khi sệt lại là đạt.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

// Thịt bò xào rau bí
class mon_man3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Thịt bò xào rau bí',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'man3.jpg',
                width: 300,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Thịt bò xào rau bí',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Rau bí 700gr',
                  '+ Thịt bò 200gr',
                  '+ Ớt',
                  '+ Tỏi',
                  '+ Gia vị thông dụng 1 ít (hạt nêm, nước nắm, dầu ăn, tiêu)',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Sơ chế thịt bò',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Thịt bò đem rửa sạch sau đó thái miếng mỏng rồi ướp với 1 chút tiêu, 1 thìa cà phê hạt nêm, 1 thìa dầu ăn, ướp thịt 15 phút cho ngấm gia vị.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Sơ chế các nguyên liệu khác',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Rau bí mua về lựa lấy phần non, tước bỏ sơ và lấy cọng rau bí non để riêng, phần lá rau bí tước bỏ sơ ở phần gân lá sau đó đem rửa sạch sẽ vài lần với nước.',
                  '+ Phần lá bạn đem vò qua cho nát để khi ăn rau được mềm.',
                  '+ Tỏi bóc sạch vỏ rồi băm nhỏ. Ớt sừng cắt miếng vừa ăn.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 3: Chần sơ rau bí',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Bạn bắc một nồi nước trên bếp, khi nước sôi thì cho vào một muỗng cà phê muối và cho ru bí vào chần sơ trong khoảng 2-3 phút.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 4: Xào đọt bí với thịt bò',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Bạn cho dầu ăn vào chảo và phi thơm phần tỏi băm còn lại cho đến khi tỏi vàng đều ngoài mặt.',
                  '+ Sau đó bạn cho tiếp rau bí vào xào và nêm chút muối, bột ngọt, 1 xíu nước mắm cho vừa khẩu vị rồi xào cho rau bí chín mềm.',
                  '+ Sau cùng bạn trút thịt bò vào xào cùng và đảo đều cho đến khi thịt bò chín thì tắt bếp, Cho ớt sừng vào và rắc lên một ít tiêu, cuối cùng xúc rau bí xào thịt bò ra đĩa.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

// Cá bống kho tiêu
class mon_man4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Cá bống kho tiêu',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'man4.jpg',
                width: 300,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Cá bống kho tiêu',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Cá bống',
                  '+ Ớt bột',
                  '+ Màu kho cá',
                  '+ Gia vị thông dụng 1 ít (muối, nước nắm, dầu ăn, đường, tiêu, bọt ngọt)',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Sơ chế cá bống',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Để tiết kiệm thời gian sơ chế, bạn nhờ người bán cắt bỏ đầu (vì đầu cá bống xương và không ngon), làm sẵn cá.',
                  '+ Mua về bạn chỉ cần rửa với nước, đánh vảy và chà xát muối lên thân cá để loại bỏ hết nhớt, rửa lại vài lần với nước và để ráo.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Ướp cá',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Cho cá bống vào nồi, ướp cá với hỗn hợp gia vị gồm: ',
                  '  - 2 muỗng cà phê tiêu xay',
                  '  - 2 muỗng cà phê ớt bột',
                  '  - 1 muỗng cà phê bột ngọt',
                  '  - 1.5 muỗng canh đường',
                  '  - 3 muỗng canh nước mắm',
                  '  - 1 muỗng canh dầu ăn và 1 ít màu kho cá (tùy theo mức độ đậm nhạt của nước cá) để thành phẩm có màu đẹp bắt mắt hơn.',
                  '+ Sau khi cho đầy đủ các gia vị vào cá, bạn dùng đũa đảo nhẹ, ướp cá khoảng 15 - 20 phút để cá thấm gia vị.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 3: Kho cá',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Sau thời gian ướp ta bắc nồi cá lên bếp đun với lửa vừa và cho thêm 1 ít nước vừa ngập cá.',
                  '+ Đến khi sôi, thì giảm lửa nhỏ, kho thêm 5 - 10 phút bạn trở mặt cá, nêm nếm lại gia vị sao cho vừa miệng và tiếp tục kho đến khi cá rút nước và sệt lại còn 1/3 so với lượng nước ban đầu thì tắt bếp.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

// Lòng xào dưa chua
class mon_man5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Lòng xào dưa chua',
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Image.asset(
                'man5.jpg',
                width: 300,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Lòng xào dưa chua',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '1. Nguyên liệu cần chuẩn bị:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ 1 bộ lòng non heo',
                  '+ dưa cải',
                  '+ Hành lá, tỏi, cà chua, gừng',
                  '+ Gia vị thông dụng (muối, nước nắm, dầu ăn, đường, tiêu, bọt ngọt)',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '2. Cách làm:\nBước 1: Sơ chế nguyên liệu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Lòng heo sau khi rửa sạch thì cắt thành miếng vừa ăn.',
                  '+ Dưa chua bạn rửa với nước sạch cho bớt mặn và chua, hành lá, cà chua thái nhỏ, hành khô băm nhỏ. Tỏi và gừng bạn đập dập, băm nhuyễn.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Bước 2: Xào lòng heo với dưa chua',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var step in [
                  '+ Bạn cho vào chảo 20ml dầu ăn sau đó cho gừng và tỏi vào phi thơm, tiếp tục bạn cho lòng vào và xào trong vòng 3 phút, khi lòng chín tới thì bạn tắt bếp và cho lòng ra đĩa.',
                  '+ Tiếp tục, vẫn với chiếc chảo đó thì bạn cho dưa cải, cà chua, hành lá đã cắt nhỏ vào và xào đều trong lửa vừa sau đó nêm vào ½ muỗng canh nước mắm, ½ muỗng canh bột nêm, ⅓ muỗng cà phê bột ngọt.',
                  '+ Sau khi rau củ chín tới thì bạn cho phần lòng vào và xào tiếp ở lửa to trong vòng 5 phút nữa, trong lúc xào thì bạn cho thêm vào 1 muỗng cà phê tiêu, ½ muỗng cà phê muối vào và trộn đều cho món ăn thêm đậm vị.',
                ])
                  Text(
                    step,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

/*=====================================================================================================================*/
