package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.components.disaster.FireDisaster;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.PackedInt2;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.SortedList;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class FireBrigadeHelicopterController extends OperationalHelicopterController {
    public BuildingDraft buildingDraft;
    public final List<Building> buildings;
    public UpgradeDraft neededUpgrade;

    public FireBrigadeHelicopterController(City city, FlyingObjectSpawner flyingObjectSpawner) {
        super(city, flyingObjectSpawner, ActionPlaceType.FIRE);
        this.buildings = new ArrayList();
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public FlyingObjectDraft getDraft(Building building) {
        return (FlyingObjectDraft) Drafts.ALL.get("$helifirefighter00");
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public List<Building> getBuildings() {
        if (this.buildingDraft == null) {
            this.buildingDraft = (BuildingDraft) Drafts.ALL.get("$firedepartment02");
            this.neededUpgrade = (UpgradeDraft) Drafts.ALL.get("$firedepartment02_heli00");
        }
        this.buildings.clear();
        SortedList<Building> buildingsOfDraft = this.city.getBuildings().getBuildingsOfDraft(this.buildingDraft);
        if (buildingsOfDraft != null) {
            for (Building building : new SafeListAccessor(buildingsOfDraft)) {
                if (building.hasUpgrade(this.neededUpgrade)) {
                    this.buildings.add(building);
                }
            }
        }
        return this.buildings;
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public boolean onActionPlace(FlyingObject flyingObject) {
        FireDisaster fireDisaster = (FireDisaster) ((DefaultCatastrophe) this.city.getComponent(6)).getDisaster(FireDisaster.class);
        IntList burningThingsInRange = fireDisaster.getBurningThingsInRange(flyingObject.getActualX(), flyingObject.getActualY(), 6);
        if (burningThingsInRange.isEmpty()) {
            return true;
        }
        Random random = Resources.RND;
        if (random.nextFloat() < 0.1f) {
            int size = burningThingsInRange.size();
            int i = burningThingsInRange.get(random.nextInt(size));
            int iUnpackX = PackedInt2.unpackX(i);
            int iUnpackY = PackedInt2.unpackY(i);
            Building building = this.tiles.getBuilding(iUnpackX, iUnpackY);
            Tree tree = this.city.getTiles().getTree(iUnpackX, iUnpackY);
            if (building != null) {
                fireDisaster.removeFire(building);
            }
            if (tree != null) {
                fireDisaster.removeFire(tree);
            }
            if (size <= 1) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public String getTag() {
        return "fire brigade helicopter";
    }
}
