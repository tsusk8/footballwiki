// import 'package:dio/dio.dart';
 
// class ArticleListView extends StatefulWidget {
//   @override
//   _ArticleListView createState() => _ArticleListView();
// }

// class _ArticleListView extends State<ArticleListView>{
// final dio = new Dio();
// final url = "https://www.soccer-king.jp/news/world";
// final auth_token = "hogehoge";
 
// var data = await dio.get(
//     url,
//     options: Options(
//       headers: {
//         "Content-Type": "application/json",
//         "Authorization": " Bearer $auth_token",
//       },
//     ),
//   ).then((response) {
//     print(response.data);
//     return response.data;
//   }).catchError((err){
//     print(err);
//      return null;
// });
// }