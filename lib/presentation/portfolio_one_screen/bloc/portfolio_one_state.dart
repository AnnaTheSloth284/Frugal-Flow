// ignore_for_file: must_be_immutable

part of 'portfolio_one_bloc.dart';

/// Represents the state of PortfolioOne in the application.
class PortfolioOneState extends Equatable {
  PortfolioOneState({
    this.searchController,
    this.portfolioOneModelObj,
  });

  TextEditingController? searchController;

  PortfolioOneModel? portfolioOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        portfolioOneModelObj,
      ];
  PortfolioOneState copyWith({
    TextEditingController? searchController,
    PortfolioOneModel? portfolioOneModelObj,
  }) {
    return PortfolioOneState(
      searchController: searchController ?? this.searchController,
      portfolioOneModelObj: portfolioOneModelObj ?? this.portfolioOneModelObj,
    );
  }
}
