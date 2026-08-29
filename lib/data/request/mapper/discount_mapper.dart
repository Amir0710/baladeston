
import 'package:baladeston/data/discount/model/discount_model.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';

extension DiscountModelMapper on DiscountModel {
  DiscountEntity toEntity() {
    return DiscountEntity(

      ownerId: userId,
      id: id,
      categoryId: categoryId,
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
      ownerId: userId,
      id: id,
      categoryId: categoryId,
      percent: percent,
      status: status,
      expiresAt: expiresAt,
      videoId:videoId,
      maxUse:maxUse ,
      usage:usage ,
    );
  }
}
