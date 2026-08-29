import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

class DiscountModelParsingFailure extends BaseDiscountModelParsingFailure {
  final String? debugMessage;
  final String? rawSource;

  const DiscountModelParsingFailure({
    this.debugMessage,
    this.rawSource,
  });
}
