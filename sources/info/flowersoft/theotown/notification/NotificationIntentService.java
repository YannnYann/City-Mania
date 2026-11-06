package info.flowersoft.theotown.notification;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.theotown.MainActivity;
import info.flowersoft.theotown.theotown.R;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationIntentService extends IntentService {
    public final void processDeleteNotification(JSONObject jSONObject) {
    }

    public static Intent createIntentStartNotificationIntent(Context context, String str) {
        return new Intent(context, (Class<?>) NotificationIntentService.class).setAction("action start").putExtra("json data", str);
    }

    public NotificationIntentService() {
        super(NotificationIntentService.class.getSimpleName());
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        JSONArray jSONArray;
        JSONObject jSONObject;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        try {
            jSONArray = new JSONArray(intent.getStringExtra("json data"));
        } catch (JSONException e) {
            e.printStackTrace();
            jSONArray = null;
        }
        if (jSONArray == null || jSONArray.length() == 0) {
            jSONArray = new JSONArray();
            jSONArray.put("");
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                jSONObject = new JSONObject(jSONArray.optString(i));
            } catch (JSONException e2) {
                e2.printStackTrace();
                jSONObject = null;
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            String action = intent.getAction();
            action.getClass();
            if (action.equals("action start")) {
                processStartNotification(jSONObject);
            } else if (action.equals("action delete")) {
                processDeleteNotification(jSONObject);
            }
        }
    }

    public final void processStartNotification(JSONObject jSONObject) {
        String strOptString;
        String strOptString2;
        int iHashCode = jSONObject.optString(C3670j8.x).hashCode();
        PendingIntent activity = PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) MainActivity.class).putExtra("info.flowersoft.theotown.theotown.SOURCE", "notification").putExtra("info.flowersoft.theotown.theotown.DATA", jSONObject.toString()), 201326592);
        String strOptString3 = jSONObject.optString("action");
        strOptString3.getClass();
        if (strOptString3.equals("custom")) {
            strOptString = jSONObject.optString(C3522b4.i.D0);
            strOptString2 = jSONObject.optString(C3522b4.i.K0);
        } else if (strOptString3.equals("test")) {
            strOptString = "Test notification";
            strOptString2 = "Hi, this notification is for pure test purposes";
        } else {
            strOptString = ".";
            strOptString2 = "No amazing news here. Yet, please consider to visit us again.";
        }
        NotificationCompat.Builder style = new NotificationCompat.Builder(this, jSONObject.optString("channel id")).setContentTitle(strOptString).setContentText(strOptString2).setAutoCancel(true).setColor(Colors.MARINE_BLUE.toARGB()).setContentIntent(activity).setDeleteIntent(NotificationHandler.createDeleteIntent(this, jSONObject)).setSmallIcon(R.drawable.ic_notification).setDefaults(5).setStyle(new NotificationCompat.BigTextStyle().bigText(strOptString2));
        try {
            startForeground(1, style.build());
            ((NotificationManager) getSystemService("notification")).notify(iHashCode, style.build());
            Log.d("INTENTService", "Notified");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
