package info.flowersoft.theotown.components.notification.task;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.RoadDraft;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RoadTask extends DefaultTask {
    public int amount;
    public List<RoadDraft> roadDrafts;

    public RoadTask(int i, String str, List<RoadDraft> list, int i2, City city) {
        super(i, str, city);
        this.roadDrafts = list;
        this.amount = i2;
    }

    @Override // info.flowersoft.theotown.components.notification.task.DefaultTask
    public long getRawValue() {
        List<RoadDraft> list = this.roadDrafts;
        if (list == null || list.isEmpty()) {
            return this.city.getRoads().size();
        }
        int size = 0;
        for (int i = 0; i < this.roadDrafts.size(); i++) {
            size += this.city.getRoads().getRoadsOfDraft(this.roadDrafts.get(i)).size();
        }
        return size;
    }

    @Override // info.flowersoft.theotown.components.notification.task.Task
    public long getTargetValue() {
        return getRawValue() + ((long) ((this.amount * (getLevel() + 5)) / 5));
    }
}
