package info.flowersoft.theotown.city.toolaction;

import info.flowersoft.theotown.input.KeyAction;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ToolAction {
    public KeyAction getHotkey() {
        return null;
    }

    public abstract int getIcon();

    public abstract String getId();

    public abstract String getName();

    public boolean isPressed() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    public abstract void onClick();

    public boolean isHotkeyActive() {
        return isVisible();
    }
}
