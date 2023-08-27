
// ignore_for_file: empty_catches

import 'package:delivery_food_app/data/service/service.dart';
import 'package:get_it/get_it.dart';

import 'prefs.dart';

final getIt = GetIt.instance;

Future<void> registerSingelton() async {
  final prefUtils  = PrefUtils();
  await prefUtils.initInstane();

  getIt.registerSingleton(prefUtils);
  await provideApiService();
}

Future<void> provideApiService()async{
  try{
    await getIt.unregister<ApiService>();
  }
  catch(e){

  }
  final api = ApiService();
  await api.addHeadrs();
  getIt.registerSingleton(api);
}