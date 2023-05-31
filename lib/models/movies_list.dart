import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_list.freezed.dart';
part 'movies_list.g.dart';

@freezed
class MoviesListModel with _$MoviesListModel {
  factory MoviesListModel({
    required bool? adult,
    required String? backdrop_path,
    required int id,
    required String? title,
    required String? original_language,
    required String? original_title,
    required String? overview,
    required String? poster_path,
    required String? media_type,
    required List<int>? genre_ids,
    required double? popularity,
    required String? release_date,
    required bool? video,
    required int? vote_average,
    required int? vote_count,


  }) = _MoviesListModel;
  factory MoviesListModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesListModelFromJson(json);
}
