package info.flowersoft.theotown.creation;

import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.Notificator;

/* JADX INFO: loaded from: classes4.dex */
public final class DummyNotificator extends Notificator {
    @Override // info.flowersoft.theotown.city.components.Notificator
    public Notification getCurrentNotification() {
        return null;
    }

    @Override // info.flowersoft.theotown.city.components.Notificator
    public void lock(Notification notification) {
    }

    @Override // info.flowersoft.theotown.city.components.Notificator
    public void poll() {
    }

    @Override // info.flowersoft.theotown.city.components.Notificator
    public void unlock() {
    }
}
