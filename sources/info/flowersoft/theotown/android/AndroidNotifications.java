package info.flowersoft.theotown.android;

import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.backends.android.AndroidApplication;
import info.flowersoft.theotown.crossplatform.Notifications;
import info.flowersoft.theotown.notification.NotificationHandler;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.theotown.R;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidNotifications implements Notifications {
    public NotificationHandler notificationHandler;
    public boolean runningRightNow;
    public boolean subscribed = true;
    public boolean subscribedOnline = true;

    public AndroidNotifications(AndroidApplication androidApplication) {
        NotificationHandler notificationHandler = new NotificationHandler(androidApplication);
        this.notificationHandler = notificationHandler;
        notificationHandler.addChannel("city", androidApplication.getResources().getString(R.string.channel_city_title), androidApplication.getResources().getString(R.string.channel_city_text));
        this.notificationHandler.addChannel("onlinemode", androidApplication.getResources().getString(R.string.channel_onlinemode_title), androidApplication.getResources().getString(R.string.channel_onlinemode_text));
        this.runningRightNow = true;
        this.notificationHandler.setEnabled(false, false);
        this.notificationHandler.cancelAll();
        androidApplication.addLifecycleListener(new LifecycleListener() { // from class: info.flowersoft.theotown.android.AndroidNotifications.1
            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                AndroidNotifications.this.runningRightNow = false;
                AndroidNotifications.this.notificationHandler.setEnabled(AndroidNotifications.this.subscribed, AndroidNotifications.this.subscribedOnline);
                AndroidNotifications.this.notificationHandler.setLastShownOnlineNotificationTime(InternetTime.getInstance().getTime() / 1000);
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
                AndroidNotifications.this.runningRightNow = true;
                AndroidNotifications.this.notificationHandler.setEnabled(false, false);
                AndroidNotifications.this.notificationHandler.cancelAll();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
                AndroidNotifications.this.notificationHandler.setEnabled(AndroidNotifications.this.subscribed, AndroidNotifications.this.subscribedOnline);
                AndroidNotifications.this.notificationHandler.setLastShownOnlineNotificationTime(InternetTime.getInstance().getTime() / 1000);
            }
        });
    }

    @Override // info.flowersoft.theotown.crossplatform.Notifications
    public void setSubscription(boolean z, boolean z2) {
        this.subscribed = z;
        this.subscribedOnline = z2;
        if (this.runningRightNow) {
            this.notificationHandler.setEnabled(false, false);
        } else {
            this.notificationHandler.setEnabled(z, z2);
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.Notifications
    public void add(String str, String str2, String str3, long j, long j2, int i) {
        this.notificationHandler.addNotification("city", str, str2, str3, System.currentTimeMillis() + j, j2, i);
    }

    @Override // info.flowersoft.theotown.crossplatform.Notifications
    public boolean remove(String str) {
        return this.notificationHandler.removeNotification(str);
    }
}
