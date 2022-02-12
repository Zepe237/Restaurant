import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'dart:io' as IO;

import 'home.dart';
class ScanPage extends StatefulWidget {
  const ScanPage({ Key? key }) : super(key: key);

  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller ;
  late Barcode result = new Barcode('', BarcodeFormat.qrcode, null) ;
void reassemble() {
    super.reassemble();
    if (IO.Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (IO.Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  String describeEnum(Object enumEntry) {
  final String description = enumEntry.toString();
  final int indexOfDot = description.indexOf('.');
  assert(
    indexOfDot != -1 && indexOfDot < description.length - 1,
    'The provided object "$enumEntry" is not an enum.',
  );
  return description.substring(indexOfDot + 1);
}

  @override
  void dispose(){
    controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildQrView(context),
          Positioned(top: 100, 
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.reviews)),  ),
          Positioned(bottom: 10, child: buildResult(),  )
        ],
      ),
    );
  }
  Widget buildResult()=> Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(color: Colors.white24,
      borderRadius: BorderRadius.circular(8)
    ),
    child:Center(
              child: (result != null)
                  ? Text(
                      'Barcode Type: ${describeEnum(result.format)}   Data: ${result.code}')
                  : Text('Scan a code'),
            ),
          
  );
  Widget buildQrView(BuildContext context)=>QRView(
    key: qrKey,
    onQRViewCreated: _onQRViewCreated,
    overlay: QrScannerOverlayShape(
      borderColor: Theme.of(context).accentColor,
      borderWidth:10,
      borderLength:20,borderRadius:10,
      cutOutSize: MediaQuery.of(context).size.width*0.8 ,
      
    ),
    onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),

  );

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    ('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('no Permission')),
      );
    }
  }

    void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
         Navigator.push( this.context , MaterialPageRoute(builder: (context) => HomePage())); 
      });
     
    });
  }
  
  
}
