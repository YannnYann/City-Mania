package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.SortedList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class GenericHelicopterController extends OperationalHelicopterController {
    public BuildingDraft buildingDraft;
    public SortedList<Building> buildings;
    public FlyingObjectDraft helicopterDraft;

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public boolean onActionPlace(FlyingObject flyingObject) {
        return false;
    }

    public GenericHelicopterController(BuildingDraft buildingDraft, City city, FlyingObjectSpawner flyingObjectSpawner) {
        super(city, flyingObjectSpawner, -1);
        this.buildingDraft = buildingDraft;
        this.buildings = city.getBuildings().getBuildingsOfDraft(buildingDraft);
        this.helicopterDraft = (FlyingObjectDraft) Drafts.ALL.get(buildingDraft.helicopterSpawner.id);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public void onSpawnedAfterSetup(FlyingObject flyingObject) {
        super.onSpawned(flyingObject);
        setTarget(flyingObject);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public FlyingObjectDraft getDraft(Building building) {
        return this.helicopterDraft;
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public List<Building> getBuildings() {
        return this.buildings;
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController, info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SimpleHelicopterController
    public void finishedFlightCommand(FlyingObject flyingObject) {
        super.finishedFlightCommand(flyingObject);
        setTarget(flyingObject);
    }

    public final void setTarget(FlyingObject flyingObject) {
        Building buildingData = getBuildingData(flyingObject);
        if (buildingData != null) {
            Random random = Resources.RND;
            if (random.nextFloat() < 0.9f) {
                int i = this.buildingDraft.helicopterSpawner.radius;
                int iMax = Math.max(0, buildingData.getX() - i);
                int iMax2 = Math.max(0, buildingData.getY() - i);
                flyTo(flyingObject, random.nextInt((Math.min(this.city.getWidth() - 1, buildingData.getX() + i) - iMax) + 1) + iMax, random.nextInt((Math.min(this.city.getHeight() - 1, buildingData.getY() + i) - iMax2) + 1) + iMax2, false);
                return;
            }
            flyToBase(flyingObject);
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public int getInnerX(Building building) {
        return this.buildingDraft.helicopterSpawner.x;
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public int getInnerY(Building building) {
        return this.buildingDraft.helicopterSpawner.y;
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public String getTag() {
        return "generic helicopter" + this.buildingDraft.id;
    }
}
