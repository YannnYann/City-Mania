package info.flowersoft.theotown.stages.gameuibuilder.collectors;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.selectable.SelectableRawBuildingDraft;
import info.flowersoft.theotown.ui.selectable.Separator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RawBuildingCollector extends SelectableCollector {
    public int icon;
    public int titleId;
    public BuildingType type;

    public RawBuildingCollector(City city, int i, BuildingType buildingType, int i2) {
        super(city);
        this.titleId = i;
        this.type = buildingType;
        this.icon = i2;
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getNameId() {
        return this.titleId;
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public int getIconId() {
        return this.icon;
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public void collect(List<Selectable> list) {
        for (int i = 0; i < 3; i++) {
            ArrayList arrayList = new ArrayList();
            if (i > 0) {
                list.add(new Separator());
            }
            for (BuildingDraft buildingDraft : Drafts.BUILDINGS) {
                if (buildingDraft.buildingType == this.type && buildingDraft.level - 1 == i && !buildingDraft.hidden) {
                    arrayList.add(buildingDraft);
                }
            }
            Collections.sort(arrayList, new Comparator<BuildingDraft>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.collectors.RawBuildingCollector.1
                @Override // java.util.Comparator
                public int compare(BuildingDraft buildingDraft2, BuildingDraft buildingDraft3) {
                    if (buildingDraft2.getArea() != buildingDraft3.getArea()) {
                        return buildingDraft2.getArea() - buildingDraft3.getArea();
                    }
                    return ((buildingDraft2.habitants + buildingDraft2.workers) - buildingDraft3.habitants) - buildingDraft3.workers;
                }
            });
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                list.add(new SelectableRawBuildingDraft(this.city, (BuildingDraft) it.next()));
            }
        }
        if (this.type == BuildingType.INDUSTRIAL) {
            list.add(new Separator());
            for (BuildingDraft buildingDraft2 : Drafts.FARMS) {
                if (!buildingDraft2.hidden) {
                    list.add(new SelectableRawBuildingDraft(this.city, buildingDraft2));
                }
            }
            list.add(new Separator());
            for (BuildingDraft buildingDraft3 : Drafts.HARBOR_PIERS) {
                if (!buildingDraft3.hidden) {
                    list.add(new SelectableRawBuildingDraft(this.city, buildingDraft3));
                }
            }
            for (BuildingDraft buildingDraft4 : Drafts.HARBORS) {
                if (!buildingDraft4.hidden) {
                    list.add(new SelectableRawBuildingDraft(this.city, buildingDraft4));
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.stages.gameuibuilder.collectors.SelectableCollector
    public String getTag() {
        return "RawBuldingCollector";
    }
}
