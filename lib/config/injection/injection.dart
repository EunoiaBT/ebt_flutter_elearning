import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:ebt_flutter_elearning/core/store/cache_store.dart';
import 'package:ebt_flutter_elearning/core/store/user_store.dart';
import 'package:ebt_flutter_elearning/features/welcome/data/datasource/local.dart';
import 'package:ebt_flutter_elearning/features/welcome/data/repository/welcome_repository_impl.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/repository/welcome_repository.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/usecase/cache_first_timer.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/usecase/check_if_user_first_timer.dart';
import 'package:ebt_flutter_elearning/features/welcome/presentation/cubit/welcome_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'injection_main.dart';
