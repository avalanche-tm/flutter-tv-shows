isFieldEmptyValidator(String? value, String label) {
  if (value == null || value.isEmpty) {
    return label;
  }
  return null;
}
