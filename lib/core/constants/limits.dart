class Limits {
  // user
  final int maxUserImageSize;
  final int minPasswordLength;
  final int phoneNumberLength;

  //category
  final int maxCategoryImageSize;
  final int minCategoryCount;
  final int maxCategoryCount;
  final int minCategoryTitle;
  final int maxCategoryTitle;
  final int minCategoryDescription;
  final int maxCategoryDescription;

  final int minCategoryItemTitle;
  final int maxCategoryItemTitle;

  // category filter
  final int minCategoryFilterSearchTermLength;
  final int maxCategoryFilterSearchTermLength;

  // category item filter
  final int minCategoryItemFilterSearchTermLength;
  final int maxCategoryItemFilterSearchTermLength;

  //collection
  final int maxCollectionImageSize;
  final int minCollectionCount;
  final int maxCollectionCount;
  final int minCollectionTitle;
  final int maxCollectionTitle;
  final int minCollectionDescription;
  final int maxCollectionDescription;
  final int minCollectionPrice;
  final int maxCollectionPrice;

  //collection item
  final int minCollectionItemTitle;
  final int maxCollectionItemTitle;

  // collection filter
  final int minCollectionFilterSearchTermLength;
  final int maxCollectionFilterSearchTermLength;

  // collection item filter
  final int minCollectionItemFilterSearchTermLength;
  final int maxCollectionItemFilterSearchTermLength;

  // comment filter
  final int minCommentFilterSearchTermLength;
  final int maxCommentFilterSearchTermLength;

  // discount
  final int minDiscountCode;
  final int maxDiscountCode;
  final int minDiscountTitle;
  final int maxDiscountTitle;
  final int minDiscountAmount;
  final int maxDiscountAmount;
  final int minDiscountPercent;
  final int maxDiscountPercent;
  final int minDiscountOrderAmount;
  final int maxDiscountOrderAmount;
  final int maxDiscountValidityDays;
  final int minDiscountMaxUse;

  // discount filter
  final int minDiscountFilterSearchTermLength;
  final int maxDiscountFilterSearchTermLength;

  //video
  final int maxVideoImageSize;
  final int maxVideoFileSize;
  final int maxVideoPrice;
  final int minVideoPrice;
  final int maxVideoRecommendedAge;
  final int minVideoRecommendedAge;
  final int minVideoDescription;
  final int maxVideoDescription;
  final int minVideoTitle;
  final int maxVideoTitle;

  // video filter
  final int minVideoFilterSearchTermLength;
  final int maxVideoFilterSearchTermLength;
  final int minVideoFilterRecommendedAge;
  final int maxVideoFilterRecommendedAge;

  //comment & rate
  final int minRate;
  final int maxRate;
  final int minCommentLength;
  final int maxCommentLength;

  //query
  final int minFilterLimitSize;
  final int maxFilterLimitSize;

  // global
  final int maxImageUrlLength;
  final int maxVideoUrlLength;

  const Limits({
    // user
    this.maxUserImageSize = 5 * 1024 * 1024,

    // category
    this.maxCategoryImageSize = 10 * 1024 * 1024,
    this.maxCategoryDescription = 300,
    this.minCategoryDescription = 20,
    this.maxCategoryTitle = 25,
    this.minCategoryTitle = 10,

    // category item
    this.maxCategoryItemTitle = 25,
    this.minCategoryItemTitle = 10,

    // category filter
    this.minCategoryFilterSearchTermLength = 2,
    this.maxCategoryFilterSearchTermLength = 20,

    // category item filter
    this.minCategoryItemFilterSearchTermLength = 2,
    this.maxCategoryItemFilterSearchTermLength = 20,

    // count of category collection
    this.minCategoryCount = 0,
    this.maxCategoryCount = 50,

    // video
    this.maxVideoImageSize = 5 * 1024 * 1024,
    this.maxVideoFileSize = 300 * 1024 * 1024,
    this.minPasswordLength = 8,
    this.phoneNumberLength = 11,
    this.maxVideoPrice = 10000000,
    this.minVideoPrice = 0,
    this.maxVideoRecommendedAge = 99,
    this.minVideoRecommendedAge = 5,
    this.maxVideoDescription = 300,
    this.minVideoDescription = 20,
    this.maxVideoTitle = 25,
    this.minVideoTitle = 10,

    // collection
    this.maxCollectionImageSize = 10 * 1024 * 1024,
    this.maxCollectionDescription = 300,
    this.minCollectionDescription = 20,
    this.maxCollectionTitle = 25,
    this.minCollectionTitle = 10,
    this.maxCollectionPrice = 99999999,
    this.minCollectionPrice = 0,
    this.minCollectionCount = 0,
    this.maxCollectionCount = 50,

    // collection item
    this.maxCollectionItemTitle = 25,
    this.minCollectionItemTitle = 10,

    // collection filter
    this.minCollectionFilterSearchTermLength = 2,
    this.maxCollectionFilterSearchTermLength = 20,

    // collection item filter
    this.minCollectionItemFilterSearchTermLength = 2,
    this.maxCollectionItemFilterSearchTermLength = 20,

    // comment filter
    this.minCommentFilterSearchTermLength = 2,
    this.maxCommentFilterSearchTermLength = 20,

    // discount
    this.minDiscountCode = 4,
    this.maxDiscountCode = 15,
    this.minDiscountTitle = 5,
    this.maxDiscountTitle = 50,
    this.minDiscountAmount = 0,
    this.maxDiscountAmount = 10000000,
    this.minDiscountPercent = 0,
    this.maxDiscountPercent = 100,
    this.minDiscountOrderAmount = 0,
    this.maxDiscountOrderAmount = 100000000,
    this.maxDiscountValidityDays = 365,
    this.minDiscountMaxUse = 1,

    // discount filter
    this.minDiscountFilterSearchTermLength = 2,
    this.maxDiscountFilterSearchTermLength = 20,

    // video filter
    this.minVideoFilterSearchTermLength = 2,
    this.maxVideoFilterSearchTermLength = 20,
    this.minVideoFilterRecommendedAge = 5,
    this.maxVideoFilterRecommendedAge = 99,

    // comment
    this.maxRate = 5,
    this.minRate = 0,
    this.maxCommentLength = 300,
    this.minCommentLength = 5,

    // query
    this.minFilterLimitSize = 5,
    this.maxFilterLimitSize = 25,
    this.maxImageUrlLength = 30,
    this.maxVideoUrlLength = 30,
  });
}
