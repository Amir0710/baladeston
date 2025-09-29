
import 'package:baladeston/data/models/discount/discount_model.dart';
import 'package:baladeston/domain/entitys/discount/discount_entity.dart';

extension DiscountModelMapper on DiscountModel {
  DiscountEntity toEntity() {
    return DiscountEntity(
      userId: userId,
      id: id,
      category: category,
      percent: percent,
      status: status,
      expiresAt: expiresAt,
      videoId:videoId,
       maxUse:maxUse ,
      usage:usage ,
    );
  }
}

extension DiscountEntityMapper on DiscountEntity {
  DiscountModel toModel() {
    return DiscountModel(
      userId: userId,
      id: id,
      category: category,
      percent: percent,
      status: status,
      expiresAt: expiresAt,
      videoId:videoId,
      maxUse:maxUse ,
      usage:usage ,
    );
  }
}
