import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mlkit_demoapp/core/services/image_picker_service.dart';
import 'package:mlkit_demoapp/features/tflite_classifer/models/prediction_model.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class TfliteProvider extends ChangeNotifier {
  final ImagePickerService _picker;
  final AssetBundle _bundle;
  Interpreter? _interpreter;
  List<String> _labels = [];
  bool _disposed = false;

  TfliteProvider(this._picker,{AssetBundle? bundle})
      : _bundle = bundle ?? rootBundle;

  File? selectedImage;
  List<PredictionModel> predictions = [];
  List<int> inputShape = [];
  List<int> outputShape = [];
  TensorType? inputType;
  TensorType? outputType;
  bool isBusy = false;
  bool isReady = false;
  String? error;

  // STEP 1 — Load model + labels, then inspect their tensor contract
  Future<void> initModel() {
    if(_disposed || isBusy || isReady) return;
    isBusy = true;
    error = null;
    notifyListeners();
    Interpreter? loaded;

    try {
      try {
        
      }
    } catch(failure) {

    } finally {
      _finish();
    }

  }

  void _finish() {
    if(_disposed) return;
    isBusy = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _disposed = true;
    _interpreter?.close();
    _interpreter = null;
    super.dispose();
  }
}