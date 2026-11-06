package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.BuildingType;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingTypeTask extends DefaultTask {
    public int amount;
    public List<BuildingType> types;

    public BuildingTypeTask(int i, String str, List<BuildingType> list, int i2, City city) {
        super(i, str, city);
        this.types = list;
        this.amount = i2;
    }

    @Override // info.flowersoft.theotown.components.notification.task.DefaultTask
    public long getRawValue() {
        List<BuildingType> list = this.types;
        if (list == null || list.isEmpty()) {
            return this.city.getBuildings().size();
        }
        int size = 0;
        for (int i = 0; i < this.types.size(); i++) {
            size += this.city.getBuildings().getBuildingsOfType(this.types.get(i)).size();
        }
        return size;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public long getTargetValue() {
        return getRawValue() + ((long) ((this.amount * (getLevel() + 3)) / 3));
    }
}
