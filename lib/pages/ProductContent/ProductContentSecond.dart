import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../../config/Config.dart';

class ProductContentSecond extends StatefulWidget {
  final List _productContentList;
  ProductContentSecond(this._productContentList, {Key key}) : super(key: key);

  _ProductContentSecondState createState() => _ProductContentSecondState();
}

class _ProductContentSecondState extends State<ProductContentSecond>
    with AutomaticKeepAliveClientMixin {
  var _id;
  bool get wantKeepAlive => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._id = widget._productContentList[0].sId;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: InAppWebView(
              initialUrl: "${Config.domain}pcontent?id=${this._id}",
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {},
            ),
          )
        ],
      ),
    );
  }
}
