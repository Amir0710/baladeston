import 'package:baladeston/data/discount/model/discount_model.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';

extension DiscountModelMapper on DiscountModel {
  DiscountEntity toEntity() {
    return DiscountEntity(
      id: id,
      ownerId: ownerId,
      code: code,
      title: title,
      amount: amount,
      percent: percent,
      type: type,
      targetId: targetId,
      minOrderAmount: minOrderAmount,
      firstOrderOnly: firstOrderOnly,
      status: status,
      createdAt: createdAt,
      userCreated: userCreated,
      expiresAt: expiresAt,
      maxUse: maxUse,
      usage: usage,
    );
  }
}

extension DiscountEntityMapper on DiscountEntity {
  DiscountModel toModel() {
    return DiscountModel(
      id: id,
      ownerId: ownerId,
      code: code,
      title: title,
      amount: amount,
      percent: percent,
      type: type,
      targetId: targetId,
      minOrderAmount: minOrderAmount,
      firstOrderOnly: firstOrderOnly,
      status: status,
      createdAt: createdAt,
      userCreated: userCreated,
      expiresAt: expiresAt,
      maxUse: maxUse,
      usage: usage,
    );
  }
}
