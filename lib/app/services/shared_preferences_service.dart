import 'package:shared_preferences/shared_preferences.dart';

import '../repository/shared_preferences_repository.dart';

class LocalStorageService {
  LocalStorageService(SharedPreferencesRepository repository);

  // Função disso daqui, é pegar todas as funções do repository, que são
  // básicas, e transformar elas em grandes, tipo: criar usuário, autenticar
  // usuário, tudo isso abstraido aqui, e usando o repository para se comunicar
}
