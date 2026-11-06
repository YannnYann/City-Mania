package info.flowersoft.theotown.city.components;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Notificator extends CityComponent {
    public final List<NotificationListener> listeners = new ArrayList();

    public abstract Notification getCurrentNotification();

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 4;
    }

    public abstract void lock(Notification notification);

    public abstract void poll();

    public abstract void unlock();

    public void informListeners(Notification notification) {
        Iterator<NotificationListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onNotification(notification);
        }
    }

    public void addListener(NotificationListener notificationListener) {
        this.listeners.add(notificationListener);
    }

    public void removeListener(NotificationListener notificationListener) {
        this.listeners.remove(notificationListener);
    }
}
