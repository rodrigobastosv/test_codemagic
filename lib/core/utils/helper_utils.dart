String sanitizePhone(String phone) {
  return phone
      .replaceAll('+', '')
      .replaceAll('(', '')
      .replaceAll(')', '')
      .replaceAll('-', '')
      .replaceAll(' ', '')
      .trim();
}
