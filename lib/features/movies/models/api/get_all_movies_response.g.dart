// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllMoviesResponse _$GetAllMoviesResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllMoviesResponse(
      json['poster_path'] as String?,
      json['id'] as int,
      json['backdrop_path'] as String,
      json['totalResults'] as int?,
      json['public'] as bool,
      GetAllMoviesResponse._getRevenue(json['revenue']),
      json['page'] as int,
      (json['results'] as List<dynamic>)
          .map((e) => MovieResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['iso_639_1'] as String,
      json['total_pages'] as int,
      json['description'] as String,
      (json['average_rating'] as num).toDouble(),
      json['runtime'] as int,
      json['name'] as String,
    );

Map<String, dynamic> _$GetAllMoviesResponseToJson(
        GetAllMoviesResponse instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'totalResults': instance.totalResults,
      'public': instance.public,
      'revenue': instance.revenue,
      'page': instance.page,
      'results': instance.results,
      'iso_639_1': instance.iso6391,
      'total_pages': instance.totalPages,
      'description': instance.description,
      'average_rating': instance.averageRating,
      'runtime': instance.runtime,
      'name': instance.name,
    };
