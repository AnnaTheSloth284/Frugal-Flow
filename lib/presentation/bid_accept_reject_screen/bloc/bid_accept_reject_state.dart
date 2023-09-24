// ignore_for_file: must_be_immutable

part of 'bid_accept_reject_bloc.dart';

/// Represents the state of BidAcceptReject in the application.
class BidAcceptRejectState extends Equatable {
  BidAcceptRejectState({
    this.searchController,
    this.bidAcceptRejectModelObj,
  });

  TextEditingController? searchController;

  BidAcceptRejectModel? bidAcceptRejectModelObj;

  @override
  List<Object?> get props => [
        searchController,
        bidAcceptRejectModelObj,
      ];
  BidAcceptRejectState copyWith({
    TextEditingController? searchController,
    BidAcceptRejectModel? bidAcceptRejectModelObj,
  }) {
    return BidAcceptRejectState(
      searchController: searchController ?? this.searchController,
      bidAcceptRejectModelObj:
          bidAcceptRejectModelObj ?? this.bidAcceptRejectModelObj,
    );
  }
}
