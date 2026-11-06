package info.flowersoft.theotown.online;

import com.ironsource.C3939y2;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class OnlineNotificationManager {
    public static OnlineNotificationManager instance;
    public long lastQueryTime;
    public long lastResultTime;
    public int unseenNotificationsCtr;
    public RegionUploader uploader = new RegionUploader();
    public List<VirtualNotification> notifications = new ArrayList();
    public List<Runnable> newDataListeners = new ArrayList();

    public boolean isAvailable() {
        User user = Backend.getInstance().getUser();
        return user.isValid() && user.isForumConnected();
    }

    public void resetUnseenCounter() {
        this.unseenNotificationsCtr = 0;
    }

    public void markAsRead() {
        if (isAvailable()) {
            this.uploader.markNotificationsAsSeen(new Service.Handler() { // from class: info.flowersoft.theotown.online.OnlineNotificationManager.1
                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onFailure(JSONObject jSONObject) {
                }

                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onSuccess(JSONObject jSONObject) {
                }
            });
        }
    }

    public void fetch(boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (isAvailable()) {
            if (!z) {
                long j = this.lastQueryTime;
                if (j != 0 && (jCurrentTimeMillis - j <= 30000 || jCurrentTimeMillis - this.lastResultTime <= 30000)) {
                    return;
                }
            }
            this.lastQueryTime = jCurrentTimeMillis;
            fetchDirect(false, new Setter<List<VirtualNotification>>() { // from class: info.flowersoft.theotown.online.OnlineNotificationManager.2
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(List<VirtualNotification> list) {
                    int i = 0;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        if (list.get(i2).getSeenTime() == 0) {
                            i++;
                        }
                    }
                    OnlineNotificationManager.this.unseenNotificationsCtr = i;
                    OnlineNotificationManager.this.notifications = list;
                    OnlineNotificationManager.this.lastResultTime = System.currentTimeMillis();
                    synchronized (OnlineNotificationManager.this) {
                        for (int i3 = 0; i3 < OnlineNotificationManager.this.newDataListeners.size(); i3++) {
                            try {
                                ((Runnable) OnlineNotificationManager.this.newDataListeners.get(i3)).run();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
            }, new Setter<String>() { // from class: info.flowersoft.theotown.online.OnlineNotificationManager.3
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(String str) {
                }
            });
        }
    }

    public void fetchDirect(boolean z, final Setter<List<VirtualNotification>> setter, final Setter<String> setter2) {
        if (isAvailable()) {
            this.uploader.listNotifications(new Service.Handler() { // from class: info.flowersoft.theotown.online.OnlineNotificationManager.4
                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onSuccess(JSONObject jSONObject) {
                    setter.set(OnlineNotificationManager.this.buildNotifications(jSONObject.optJSONArray(C3939y2.x)));
                }

                @Override // info.flowersoft.theotown.backend.Service.Handler
                public void onFailure(JSONObject jSONObject) {
                    setter2.set(jSONObject.optString("hint", jSONObject.optString("status", "Error")));
                }
            }, z);
        } else {
            setter2.set("Not logged in");
        }
    }

    public final List<VirtualNotification> buildNotifications(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                try {
                    arrayList.add(new VirtualNotification(jSONObjectOptJSONObject));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    public List<VirtualNotification> getNotifications() {
        return this.notifications;
    }

    public int getUnseenNotificationsCount() {
        return this.unseenNotificationsCtr;
    }

    public static OnlineNotificationManager getInstance() {
        if (instance == null) {
            synchronized (OnlineNotificationManager.class) {
                try {
                    if (instance == null) {
                        instance = new OnlineNotificationManager();
                    }
                } finally {
                }
            }
        }
        return instance;
    }
}
