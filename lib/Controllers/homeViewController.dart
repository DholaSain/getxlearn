import 'package:get/get.dart';
import 'package:results/Models/dataModel.dart';
import 'package:results/Services/databaseService.dart';

Rxn<bool> pressed = Rxn<bool>(false);
Rxn<String> apna = Rxn<String>('aaaa');

class HomeViewController extends GetxController {
  Rxn<List<DataModel>> dataModelList = Rxn<List<DataModel>>();

  List<DataModel>? get datamodalGetter => dataModelList.value;

  @override
  void onInit() {
    super.onInit();

    dataModelList.bindStream(Database().allDatabyFirestore());
  }

  @override
  void onClose() {
    super.onClose();
  }
}
