package info.flowersoft.theotown.notification;

import android.app.AlarmManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.android.gms.common.GoogleApiAvailability$$ExternalSyntheticApiModelOutline4;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.online.OnlineNotificationManager;
import info.flowersoft.theotown.online.VirtualNotification;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationHandler extends BroadcastReceiver {
    public Context context;

    public NotificationHandler() {
    }

    public NotificationHandler(Context context) {
        this.context = context;
    }

    public synchronized boolean isEnabled() {
        return this.context.getSharedPreferences("info.flowersoft.theotown.theotown.reminder", 0).getBoolean("enabled", true);
    }

    public synchronized boolean isOnlineModeEnabled() {
        return this.context.getSharedPreferences("info.flowersoft.theotown.theotown.reminder", 0).getBoolean("online enabled", true);
    }

    public synchronized void setEnabled(boolean z, boolean z2) {
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("info.flowersoft.theotown.theotown.reminder", 0).edit();
        editorEdit.putBoolean("enabled", z);
        editorEdit.putBoolean("online enabled", z2);
        editorEdit.apply();
        scheduleNextWakeup();
    }

    public final synchronized long getLastShownOnlineNotificationTime() {
        return this.context.getSharedPreferences("info.flowersoft.theotown.theotown.reminder", 0).getLong("omnotiftime", 0L);
    }

    public synchronized void setLastShownOnlineNotificationTime(long j) {
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("info.flowersoft.theotown.theotown.reminder", 0).edit();
        editorEdit.putLong("omnotiftime", j);
        editorEdit.apply();
    }

    public synchronized void addNotification(String str, String str2, String str3, String str4, long j, long j2, int i) {
        JSONObject jSONObjectBuildNotificationData = buildNotificationData(str, str2, str3, str4, 0, 0, j, j2, i);
        removeNotificationRaw(str2);
        addNotificationRaw(jSONObjectBuildNotificationData);
        scheduleNextWakeup();
    }

    public synchronized boolean removeNotification(String str) {
        boolean zRemoveNotificationRaw;
        zRemoveNotificationRaw = removeNotificationRaw(str);
        if (zRemoveNotificationRaw) {
            scheduleNextWakeup();
        }
        return zRemoveNotificationRaw;
    }

    public synchronized void addChannel(String str, String str2, String str3) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationHandler$$ExternalSyntheticApiModelOutline1.m();
            NotificationChannel notificationChannelM = GoogleApiAvailability$$ExternalSyntheticApiModelOutline4.m(str, str2, 3);
            notificationChannelM.setDescription(str3);
            ((NotificationManager) this.context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannelM);
        }
    }

    public synchronized void cancelAll() {
        ((NotificationManager) this.context.getSystemService("notification")).cancelAll();
    }

    public final JSONArray getScheduledNotifications() {
        try {
            return new JSONArray(this.context.getSharedPreferences("info.flowersoft.theotown.theotown.reminder", 0).getString("scheduled", "[]"));
        } catch (JSONException e) {
            e.printStackTrace();
            return new JSONArray();
        }
    }

    public final void setScheduledNotifications(JSONArray jSONArray) {
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("info.flowersoft.theotown.theotown.reminder", 0).edit();
        editorEdit.putString("scheduled", jSONArray.toString());
        editorEdit.apply();
    }

    public final void addNotificationRaw(JSONObject jSONObject) {
        JSONArray scheduledNotifications = getScheduledNotifications();
        scheduledNotifications.put(jSONObject);
        setScheduledNotifications(scheduledNotifications);
    }

    public final boolean removeNotificationRaw(String str) {
        JSONArray scheduledNotifications = getScheduledNotifications();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < scheduledNotifications.length(); i++) {
            JSONObject jSONObjectOptJSONObject = scheduledNotifications.optJSONObject(i);
            if (!str.equals(jSONObjectOptJSONObject.optString(C3670j8.x))) {
                jSONArray.put(jSONObjectOptJSONObject);
            }
        }
        setScheduledNotifications(jSONArray);
        return scheduledNotifications.length() != jSONArray.length();
    }

    public final long getTimeOfNotification(JSONObject jSONObject, long j) {
        long jOptLong = jSONObject.optLong("time");
        long jOptLong2 = jSONObject.optLong("repeat time");
        long jOptLong3 = jSONObject.optLong("repeat num");
        return (jOptLong2 <= 0 || jOptLong3 <= 0 || j < jOptLong) ? jOptLong : jOptLong + (Math.min((((j - jOptLong) + jOptLong2) - 1) / jOptLong2, jOptLong3) * jOptLong2);
    }

    public final JSONObject getNextScheduledNotification(long j) {
        JSONArray scheduledNotifications = getScheduledNotifications();
        long j2 = Long.MAX_VALUE;
        JSONObject jSONObject = null;
        for (int i = 0; i < scheduledNotifications.length(); i++) {
            JSONObject jSONObjectOptJSONObject = scheduledNotifications.optJSONObject(i);
            long timeOfNotification = getTimeOfNotification(jSONObjectOptJSONObject, j);
            if (timeOfNotification > j && timeOfNotification < j2) {
                jSONObject = jSONObjectOptJSONObject;
                j2 = timeOfNotification;
            } else if (timeOfNotification <= j) {
                removeNotificationRaw(jSONObjectOptJSONObject.optString(C3670j8.x));
            }
        }
        return jSONObject;
    }

    public final JSONObject buildNotificationData(String str, String str2, String str3, String str4, int i, int i2, long j, long j2, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("channel id", str);
            jSONObject.put(C3670j8.x, str2);
            jSONObject.put(C3522b4.i.D0, str3);
            jSONObject.put(C3522b4.i.K0, str4);
            jSONObject.put("time", j);
            jSONObject.put("repeat time", j2);
            jSONObject.put("repeat num", i3);
            jSONObject.put("action", "custom");
            jSONObject.put("region_id", i);
            jSONObject.put("city_id", i2);
            return jSONObject;
        } catch (JSONException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final void setupIntent(PendingIntent pendingIntent, long j) {
        try {
            ((AlarmManager) this.context.getSystemService("alarm")).set(0, j, pendingIntent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static PendingIntent createStartIntent(Context context, JSONObject jSONObject) {
        Intent intent = new Intent(context, (Class<?>) NotificationHandler.class);
        intent.setAction("action start notification");
        intent.putExtra("json data", jSONObject.toString());
        return PendingIntent.getBroadcast(context, 0, intent, 67108864);
    }

    public static PendingIntent createDeleteIntent(Context context, JSONObject jSONObject) {
        Intent intent = new Intent(context, (Class<?>) NotificationHandler.class);
        intent.setAction("action delete notification");
        intent.putExtra("json data", jSONObject.toString());
        return PendingIntent.getBroadcast(context, 0, intent, 67108864);
    }

    public final void scheduleNextWakeup() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject nextScheduledNotification = getNextScheduledNotification(jCurrentTimeMillis);
        long j = 1800000 + jCurrentTimeMillis;
        if (nextScheduledNotification != null) {
            long timeOfNotification = getTimeOfNotification(nextScheduledNotification, jCurrentTimeMillis + 1000);
            if (timeOfNotification <= j) {
                setupIntent(createStartIntent(this.context, nextScheduledNotification), timeOfNotification);
                return;
            }
        }
        setupIntent(createStartIntent(this.context, new JSONObject()), j);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.context = context;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        try {
            String action = intent.getAction();
            int iHashCode = action.hashCode();
            if (iHashCode != -1405520365) {
                if (iHashCode != -719473578) {
                    return;
                }
                action.equals("action delete notification");
                return;
            }
            if (action.equals("action start notification")) {
                scheduleNextWakeup();
                if (isEnabled()) {
                    String stringExtra = intent.getStringExtra("json data");
                    ArrayList arrayList = new ArrayList();
                    if (stringExtra.length() > 2) {
                        arrayList.add(stringExtra);
                    }
                    if (isOnlineModeEnabled()) {
                        collectOnlineModeNotifications(arrayList);
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i < arrayList.size(); i++) {
                        jSONArray.put(arrayList.get(i));
                    }
                    startIntent(context, NotificationIntentService.createIntentStartNotificationIntent(context, jSONArray.toString()));
                }
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public final void startIntent(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.notification.NotificationHandler$1ResultHolder, reason: invalid class name */
    public class C1ResultHolder {
        public boolean failed;
        public List<VirtualNotification> list;

        public C1ResultHolder() {
        }
    }

    public final void collectOnlineModeNotifications(List<String> list) {
        final C1ResultHolder c1ResultHolder = new C1ResultHolder();
        Backend backend = Backend.getInstance();
        if (backend == null) {
            return;
        }
        backend.setRunTemporary(true);
        OnlineNotificationManager.getInstance().fetchDirect(true, new Setter<List<VirtualNotification>>() { // from class: info.flowersoft.theotown.notification.NotificationHandler.1
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(List<VirtualNotification> list2) {
                if (list2.isEmpty()) {
                    return;
                }
                c1ResultHolder.list = list2;
            }
        }, new Setter<String>() { // from class: info.flowersoft.theotown.notification.NotificationHandler.2
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(String str) {
                c1ResultHolder.failed = true;
            }
        });
        for (int i = 0; i < 10 && c1ResultHolder.list == null && !c1ResultHolder.failed; i++) {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        backend.setRunTemporary(false);
        if (c1ResultHolder.list != null) {
            long lastShownOnlineNotificationTime = getLastShownOnlineNotificationTime();
            for (int size = c1ResultHolder.list.size() - 1; size >= 0; size--) {
                if (c1ResultHolder.list.get(size).getTime() > lastShownOnlineNotificationTime) {
                    VirtualNotification virtualNotification = c1ResultHolder.list.get(size);
                    list.add(buildNotificationData("onlinemode", "" + virtualNotification.getId(), "Online Mode", virtualNotification.getText(), virtualNotification.getRegionId(), virtualNotification.getCityId(), virtualNotification.getTime() * 1000, 0L, 0).toString());
                    lastShownOnlineNotificationTime = virtualNotification.getTime();
                }
            }
            setLastShownOnlineNotificationTime(lastShownOnlineNotificationTime);
        }
    }
}
