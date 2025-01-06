import 'package:newsapp/models/categories_new_model.dart';
import 'package:newsapp/models/news_channel_headlines_model.dart';
import 'package:newsapp/repository/news_ropository.dart';

class NewViewModel{
  final _rep= NewsRepository();


  Future<NewsChannelHeadlinesModel> fetchNewChannelHeadlinesApi(String channelName) async{
    final response=  await _rep.fetchNewsChannelHeadlinesApi(channelName);
    return response;
  }
  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async{
    final response1 =  await _rep.fetchNewsCategoires(category);
    return response1 ;
  }
}