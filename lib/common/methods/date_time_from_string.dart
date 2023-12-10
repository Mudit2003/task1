DateTime dateTimeFromString(String dateObj) {
  Iterable<int> dateList = dateObj.split('-').map((str) => int.parse(str));
  return DateTime(
    dateList.elementAt(2),
    dateList.elementAt(1),
    dateList.elementAt(0),
  );
}
