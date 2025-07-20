// class Favorite {
//   final int userId;
//   final int targetId;
//   final DateTime interestedIn;

//   const Favorite({
//     required this.userId,
//     required this.targetId,
//     required this.interestedIn,
//   });
// }



import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
class Favorite with _$Favorite {

  factory Favorite(
    {
        required int userId,
  required int targetId,
  required DateTime interestedIn,
    }
  ) = _Favorite;

  factory Favorite.fromJson(Map<String, dynamic> json) => _$FavoriteFromJson(json);
}