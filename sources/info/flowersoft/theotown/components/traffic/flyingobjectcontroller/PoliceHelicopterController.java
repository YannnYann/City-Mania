package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.resources.Drafts;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PoliceHelicopterController extends OperationalHelicopterController {
    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public boolean onActionPlace(FlyingObject flyingObject) {
        return true;
    }

    public PoliceHelicopterController(City city, FlyingObjectSpawner flyingObjectSpawner) {
        super(city, flyingObjectSpawner, ActionPlaceType.POLICE);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public FlyingObjectDraft getDraft(Building building) {
        return (FlyingObjectDraft) Drafts.ALL.get("$helipolice00");
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public List<Building> getBuildings() {
        ArrayList arrayList = new ArrayList();
        Iterator it = Drafts.getDraftsWithTag("policehelicopter", BuildingDraft.class).iterator();
        while (it.hasNext()) {
            arrayList.addAll(this.city.getBuildings().getBuildingsOfDraft((BuildingDraft) it.next()));
        }
        return arrayList;
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public String getTag() {
        return "police helicopter";
    }
}
