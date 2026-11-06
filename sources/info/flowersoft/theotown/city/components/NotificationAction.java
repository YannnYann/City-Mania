package info.flowersoft.theotown.city.components;

import io.blueflower.stapel2d.gui.Button;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationAction {
    public Runnable action;
    public Button cmd;
    public int iconId;
    public String id;
    public int nameId;

    public NotificationAction(int i, Runnable runnable) {
        this(i, runnable, null);
    }

    public NotificationAction(int i, Runnable runnable, String str) {
        this(i, -1, runnable, str);
    }

    public NotificationAction(int i, int i2, Runnable runnable, String str) {
        this.iconId = i;
        this.nameId = i2;
        this.action = runnable;
        this.id = str;
    }

    public int getIconId() {
        return this.iconId;
    }

    public int getNameId() {
        return this.nameId;
    }

    public void setButton(Button button) {
        this.cmd = button;
    }

    public Button getButton() {
        return this.cmd;
    }

    public void setAction(Runnable runnable) {
        this.action = runnable;
    }

    public Runnable getAction() {
        return this.action;
    }

    public String getId() {
        return this.id;
    }
}
