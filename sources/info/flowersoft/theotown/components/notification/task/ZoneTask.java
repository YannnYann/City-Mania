package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.ZoneDraft;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ZoneTask extends DefaultTask {
    public final int amount;
    public final List<ZoneDraft> zones;

    public ZoneTask(int i, String str, List<ZoneDraft> list, int i2, City city) {
        super(i, str, city);
        this.zones = list;
        this.amount = i2;
    }

    @Override // info.flowersoft.theotown.components.notification.task.DefaultTask
    public long getRawValue() {
        int[] zoneCounter = this.city.getZoneCounter();
        int i = 0;
        for (int i2 = 0; i2 < this.zones.size(); i2++) {
            i += zoneCounter[this.zones.get(i2).tempId];
        }
        return i;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public long getTargetValue() {
        return getRawValue() + ((long) ((this.amount * (getLevel() + 3)) / 3));
    }
}
