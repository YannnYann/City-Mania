package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Settings;

/* JADX INFO: loaded from: classes4.dex */
public class ScreenTapTask extends DefaultTask {
    public int amount;

    public ScreenTapTask(int i, String str, int i2, City city) {
        super(i, str, city);
        this.amount = i2;
    }

    @Override // info.flowersoft.theotown.components.notification.task.DefaultTask
    public long getRawValue() {
        return Settings.screenTaps;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public long getTargetValue() {
        return getRawValue() + ((long) this.amount);
    }
}
