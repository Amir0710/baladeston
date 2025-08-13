

import 'package:baladeston/data/models/purchase/purchase_model.dart';
import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';

extension PurchaseModelMapper on PurchaseModel {
  PurchaseEntity toEntity() {
    return PurchaseEntity(
      id: id,
      status: status,
      userId: userId,
      categoryId: categoryId,
      discountId: discountId,
      finalPrice: finalPrice,
      purchaseTime: purchaseTime,
      expiresAt: expiresAt,
      createdAt: createdAt, updateAt: updateAt,
    );
  }
}

extension PurchaseEntityMapper on PurchaseEntity {
  PurchaseModel toModel() {
    return PurchaseModel(
      id: id,
      status: status,
      userId: userId,
      categoryId: categoryId,
      discountId: discountId,
      finalPrice: finalPrice,
      purchaseTime: purchaseTime,
      expiresAt: expiresAt,
      createdAt: createdAt,updateAt: updateAt,
    );
  }
}
