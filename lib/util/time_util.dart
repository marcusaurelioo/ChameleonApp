class TimeUtil {
  static String _getTwoCharacters(int value) {
    if (value <= 9)
      return '0$value';
    else
      return '$value';
  }

  // retorna uma data que pode ser entendida pelo usuário
  static String getChatTime(int timestamp, bool timeInDescription) {
    // falta analisar se a data é de outro dia (Ontem, 27/12/2018, 25/11/2018... etc)

    var utc = DateTime.fromMillisecondsSinceEpoch(timestamp).toUtc();
    String hour = _getTwoCharacters(utc.hour);
    String minutes = _getTwoCharacters(utc.minute);

    DateTime now = DateTime.now();

    if (timeInDescription) {
      String result = now.day == utc.day ? "Today" : "Yesterday";
      return result + " $hour:$minutes";
    }

    return '$hour:$minutes';
  }
}
