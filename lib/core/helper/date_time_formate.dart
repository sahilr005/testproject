String extractDate(String dateTimeString) {
  try {
    final dateTime = DateTime.parse(dateTimeString);
    return "${dateTime.day} ${monthName(dateTime.month)} ${dateTime.year}";
  } catch (_) {
    return dateTimeString;
  }
}

String monthName(int month) {
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  return months[month - 1];
}

String formatTime(String dateTimeString) {
  try {
    final dateTime = DateTime.parse(dateTimeString);
    final hour = dateTime.hour % 12 == 0 ? 12 : dateTime.hour % 12;
    final minute = dateTime.minute.toString().padLeft(2, '0');
    final period = dateTime.hour >= 12 ? 'PM' : 'AM';
    return '$hour:$minute $period';
  } catch (_) {
    return dateTimeString; // fallback if parsing fails
  }
}
