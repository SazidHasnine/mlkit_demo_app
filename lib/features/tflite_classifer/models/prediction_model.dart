class PredictionModel {
  final String label;
  final double confidence;
// Probability in the range 0–1, after dequantizing integer model outputs.

  PredictionModel({required this.label, required this.confidence});
}