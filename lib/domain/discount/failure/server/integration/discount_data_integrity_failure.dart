import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

class DiscountDataIntegrityFailure extends BaseDiscountDataIntegrityFailure {
  final String? debugMessage;
  final String? rawSource;

  const DiscountDataIntegrityFailure({
    this.debugMessage,
    this.rawSource,
  });
}
