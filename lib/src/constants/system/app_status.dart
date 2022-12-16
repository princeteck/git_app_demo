abstract class Status {
  const Status();
}

/// Cubit is in init / idle state
class Idle extends Status {}

/// Api / Processing call in Progress
class Loading extends Status {}

/// Api / Processing call in Succeed
class Succeed extends Status {}

/// Api / Processing call had a error
class Error extends Status {}

/// Api call to fetch Data
class Fetching extends Status {}

/// Api call to fetch Data Succeed
class FetchingSucceed extends Status {}

/// Api call had error while fetch Data
class ErrorWhileFetching extends Status {}

/// Api call to submit data
class Submitting extends Status {}

/// Api call to submit data succeed
class SubmittingSucceed extends Status {}

/// Api call had error while submit data
class ErrorWhileSubmitting extends Status {}
