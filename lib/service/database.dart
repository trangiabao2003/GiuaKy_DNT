import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addProductDetails(
      Map<String, dynamic> productInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("ProductInfo")
        .doc(id)
        .set(productInfoMap);
  }

  Future<Stream<QuerySnapshot>> getProductDetails() async {
    return await FirebaseFirestore.instance
        .collection("ProductInfo")
        .snapshots();
  }

  Future updateProductDetail(String id, Map<String, dynamic> updateInfo) async {
    return await FirebaseFirestore.instance
        .collection("ProductInfo")
        .doc(id)
        .update(updateInfo);
  }

  Future deleteProductDetail(String id) async {
    return await FirebaseFirestore.instance
        .collection("ProductInfo")
        .doc(id)
        .delete();
  }
}
