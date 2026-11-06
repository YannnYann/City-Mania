package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.BuildingDraft;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingTask extends DefaultTask {
    public int amount;
    public List<BuildingDraft> buildingDrafts;

    public BuildingTask(int i, String str, List<BuildingDraft> list, int i2, City city) {
        super(i, str, city);
        this.buildingDrafts = list;
        this.amount = i2;
    }

    @Override // info.flowersoft.theotown.components.notification.task.DefaultTask
    public long getRawValue() {
        List<BuildingDraft> list = this.buildingDrafts;
        if (list == null || list.isEmpty()) {
            return this.city.getBuildings().size();
        }
        int size = 0;
        for (int i = 0; i < this.buildingDrafts.size(); i++) {
            size += this.city.getBuildings().getBuildingsOfDraft(this.buildingDrafts.get(i)).size();
        }
        return size;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public long getTargetValue() {
        return getRawValue();
    }
}
