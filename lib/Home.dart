import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PDFDocument _doc;
  bool _isLoading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pdfLoading();
  }

  _pdfLoading() async{
    setState(() {
      _isLoading = true;
    });
    final doc =  await PDFDocument.fromAsset("asset/images/Memo.pdf");
    setState(() {
      _doc = doc;
      _isLoading = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pfd App',
          style: TextStyle(
              color: Colors.white
          ),
        ),

      ),
      body: Center(
        child: _isLoading ? Center(
          child: CircularProgressIndicator(),
        ): PDFViewer(document: _doc,
        )
        )
    );
  }
}
