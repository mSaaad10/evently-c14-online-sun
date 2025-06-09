import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently_c14_online_sun/data/data_model/event_DM.dart';

class fbservices
{
  static addeventtofb(EventDM event)
  {
    FirebaseFirestore db = FirebaseFirestore.instance;
    CollectionReference<Map<String,dynamic>>events= db.collection("events");
    DocumentReference<Map<String,dynamic>>documetion= events.doc();
    documetion.set(
    event.tojson()
    );
  }
}
