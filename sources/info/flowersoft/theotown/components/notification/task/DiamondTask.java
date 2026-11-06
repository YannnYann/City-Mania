package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.mechanics.GameHandler;

/* JADX INFO: loaded from: classes4.dex */
public class DiamondTask extends DefaultTask {
    public int amount;
    public int factor;

    public DiamondTask(int i, String str, int i2, int i3, City city) {
        super(i, str, city);
        this.factor = i2;
        this.amount = i3;
    }

    @Override // info.flowersoft.theotown.components.notification.task.DefaultTask
    public long getRawValue() {
        return this.factor * GameHandler.getInstance().getDiamonds();
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public long getTargetValue() {
        return getRawValue() + ((long) this.amount);
    }
}
