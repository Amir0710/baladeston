enum ReportStatus {
  pending,      // تازه ثبت شده، هنوز بررسی نشده
  inReview,     // در حال بررسی توسط ادمین/سیستم
  resolved,     // بررسی شده و اقدام لازم انجام شده
  rejected,     // گزارش نامعتبر تشخیص داده شده
  closed,       // پرونده بسته شده (final state)
}
