import 'package:intl/intl.dart';

class Request_model {
   String username;
   String userprofile;
   String request;
   String requestPhoto;
   DateTime datetime;

   String get dateonly
    {
      String formattedDate = DateFormat("yyyy/MM/dd").format(datetime);
      return formattedDate;
    }

   String get timeonly
    {
      bool time = DateFormat("a").format(datetime)=="PM";

      String day = "";
      switch(datetime.weekday)
      {
        case DateTime.friday : {day = "الجمعة"; }break;
        case DateTime.saturday : {day = "السبت"; }break;
        case DateTime.sunday : {day = "الأحد"; }break;
        case DateTime.monday : {day = "الإثنين"; }break;
        case DateTime.tuesday : {day = "الثلاثاء"; }break;
        case DateTime.wednesday : {day = "الإربعاء"; }break;
        case DateTime.thursday : {day = "الخميس"; }break;
      }


      String daynight = time?"مساءا":"صباحا";


      String formattedTime = DateFormat("hh:mm").format(datetime);

      return daynight+" "+formattedTime + "  "+day;
    }


   Request_model ({
    required this.username,
    required this.request,
    required this.datetime,
    required this.requestPhoto,
    required this.userprofile,

  });
}