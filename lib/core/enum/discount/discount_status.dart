enum DiscountStatus {
  draft, // not published
  active,
  scheduled, // it hasn't started yet.
  paused,
  exhausted, // usage limit
  expired,
  disabled,
  archived,
}
