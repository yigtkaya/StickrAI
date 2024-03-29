enum StorageKey {
  /// on first install show user the landing page ,
  /// type is [bool]
  showedLandingPage,

  // /// authenticated user token
  // /// stored type is [String]
  // authToken,

  // /// authenticated user refresh token
  // /// stored type is [String]
  // refreshToken,

  // /// authenticated user refresh token expiration
  // /// stored type is [String]
  // refreshTokenExpiration,

  // /// authenticated user id
  // /// stored type is [String]
  // userId,

  /// language id
  /// stored type is [int], Language model id
  languageId,

  /// for face id we are checking if user used log out option
  /// stored type is [bool]
  firstTime,

  // // otp time stamp
  // /// otpTimestamp type is [String]
  // otpTimestamp,

  // //  otpAuthorizationId
  // /// otpAuthorizationId type is [String]
  // otpAuthorizationId,

  /// user generated stickers
  /// user generated sticker type is [List<Map<String, List<Uint8List>>]
  userGeneratedStickers,

  /// daily usage limit
  /// daily usage limit type is [int]
  dailyUsageLimit,

  /// last action time
  /// last action time type is [int]
  lastActionTime,
}
