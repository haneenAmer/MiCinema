// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviesListModel _$$_MoviesListModelFromJson(Map<String, dynamic> json) =>
    _$_MoviesListModel(
      adult: json['adult'] as bool?,
      backdrop_path: json['backdrop_path'] as String?,
      id: json['id'] as int,
      title: json['title'] as String?,
      original_language: json['original_language'] as String?,
      original_title: json['original_title'] as String?,
      overview: json['overview'] as String?,
      poster_path: json['poster_path'] as String?,
      media_type: json['media_type'] as String?,
      genre_ids:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      popularity: (json['popularity'] as num?)?.toDouble(),
      release_date: json['release_date'] as String?,
      video: json['video'] as bool?,
      vote_average: json['vote_average'] as int?,
      vote_count: json['vote_count'] as int?,
    );

Map<String, dynamic> _$$_MoviesListModelToJson(_$_MoviesListModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'id': instance.id,
      'title': instance.title,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'media_type': instance.media_type,
      'genre_ids': instance.genre_ids,
      'popularity': instance.popularity,
      'release_date': instance.release_date,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };
