import 'package:evently_c14_online_sun/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sun/data/data_model/categoryDM.dart';

class ConstantManager {
  static List<CategoryDM> categories = const [
    CategoryDM(id: "0", name: "All", iconPath: SvgAssets.sports),
    CategoryDM(id: "1", name: "Sports", iconPath: SvgAssets.sports),
    CategoryDM(id: "2", name: "Birthday", iconPath: SvgAssets.sports),
    CategoryDM(id: "3", name: "Meeting", iconPath: SvgAssets.sports),
    CategoryDM(id: "4", name: "Gaming", iconPath: SvgAssets.sports),
    CategoryDM(id: "5", name: "Eating", iconPath: SvgAssets.sports),
    CategoryDM(id: "6", name: "Holiday", iconPath: SvgAssets.sports),
    CategoryDM(id: "7", name: "Exhibition", iconPath: SvgAssets.sports),
    CategoryDM(id: "8", name: "Workshop", iconPath: SvgAssets.sports),
    CategoryDM(id: "9", name: "BookClub", iconPath: SvgAssets.sports),
  ];
  static List<CategoryDM> categoriesWithoutAll = const [
    CategoryDM(id: "1", name: "Sports", iconPath: SvgAssets.sports),
    CategoryDM(id: "2", name: "Birthday", iconPath: SvgAssets.sports),
    CategoryDM(id: "3", name: "Meeting", iconPath: SvgAssets.sports),
    CategoryDM(id: "4", name: "Gaming", iconPath: SvgAssets.sports),
    CategoryDM(id: "5", name: "Eating", iconPath: SvgAssets.sports),
    CategoryDM(id: "6", name: "Holiday", iconPath: SvgAssets.sports),
    CategoryDM(id: "7", name: "Exhibition", iconPath: SvgAssets.sports),
    CategoryDM(id: "8", name: "Workshop", iconPath: SvgAssets.sports),
    CategoryDM(id: "9", name: "BookClub", iconPath: SvgAssets.sports),
  ];
}
