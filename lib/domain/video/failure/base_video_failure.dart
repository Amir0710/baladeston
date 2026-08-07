abstract class VideoFailure {
  const VideoFailure();
}

abstract class BaseVideoInfrastructureFailure extends VideoFailure {
  const BaseVideoInfrastructureFailure();
}

abstract class BaseVideoDomainFailure extends VideoFailure {
  const BaseVideoDomainFailure();
}

abstract class BaseVideoValidationFailure extends BaseVideoDomainFailure {
  const BaseVideoValidationFailure();
}

abstract class BaseVideoAuthFailure extends BaseVideoDomainFailure {
  const BaseVideoAuthFailure();
}

abstract class BaseVideoNotFoundFailure extends BaseVideoDomainFailure {
  const BaseVideoNotFoundFailure();
}

class VideoUnknownFailure extends VideoFailure {
  const VideoUnknownFailure();
}
