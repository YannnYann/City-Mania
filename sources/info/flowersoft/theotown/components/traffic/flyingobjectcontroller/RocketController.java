package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.disaster.MeteoriteDisaster;
import info.flowersoft.theotown.components.disaster.UfoDisaster;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DataAccessor;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.SortedList;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class RocketController extends FlyingObjectController {
    public final BuildingDraft baseDraft;
    public boolean causedDisaster;
    public final DefaultDate date;
    public final FlyingObjectDraft rocketDraft;

    public RocketController(City city, FlyingObjectSpawner flyingObjectSpawner) {
        super(city, flyingObjectSpawner);
        this.baseDraft = (BuildingDraft) Drafts.ALL.get("$mltry_missilesilo00");
        this.rocketDraft = (FlyingObjectDraft) Drafts.ALL.get("$rocket_mltry00");
        this.date = (DefaultDate) city.getComponent(1);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void onTarget(FlyingObject flyingObject) {
        flyingObject.flyTo(0, 1, Math.round((flyingObject.getNextHeight() + 36.0f) * 1.2f) - 34);
        if (flyingObject.getHeight() > 2048.0f) {
            this.spawner.remove(flyingObject);
            onDespawnRocket();
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void onSpawned(FlyingObject flyingObject) {
        flyingObject.setSpeed(1.0f);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void update() {
        SortedList<Building> buildingsOfDraft = this.city.getBuildings().getBuildingsOfDraft(this.baseDraft);
        int animationTime = this.date.getAnimationTime();
        for (Building building : new SafeListAccessor(buildingsOfDraft)) {
            if (building.isWorking()) {
                int x = building.getX() + (building.getWidth() / 2);
                int y = building.getY() + (building.getHeight() / 2);
                if (this.tiles.getFlyingObject(x, y) == null) {
                    int animationTimeShift = building.getAnimationTimeShift(animationTime);
                    if (building.getFrame() == 0) {
                        if (Resources.RND.nextFloat() < 0.05f) {
                            building.setFrame(1);
                            building.setAnimationTimeShift(animationTime, 0);
                        }
                    } else if (animationTimeShift > 10000) {
                        building.setFrame(0);
                        building.setAnimationTimeShift(animationTime, 0);
                    } else if (animationTimeShift > 2000) {
                        create(building, x, y);
                    }
                }
            }
        }
    }

    public final void onDespawnRocket() {
        Random random = Resources.RND;
        if (random.nextFloat() < 0.001f) {
            DefaultCatastrophe defaultCatastrophe = (DefaultCatastrophe) this.city.getComponent(6);
            if (defaultCatastrophe.isActive()) {
                return;
            }
            if (random.nextFloat() < 0.9f) {
                ((MeteoriteDisaster) defaultCatastrophe.getDisaster(MeteoriteDisaster.class)).issue();
            } else {
                ((UfoDisaster) defaultCatastrophe.getDisaster(UfoDisaster.class)).issue();
            }
            this.causedDisaster = true;
        }
    }

    public boolean hasCausedDisasterAndReset() {
        boolean z = this.causedDisaster;
        this.causedDisaster = false;
        return z;
    }

    public final FlyingObject create(Building building, int i, int i2) {
        FlyingObject flyingObjectSpawn = this.spawner.spawn(this.rocketDraft, i, i2, 0, (building.getMaxTerrainLevel() * 12) - 36);
        setState(flyingObjectSpawn, i, i2);
        return flyingObjectSpawn;
    }

    public final void setState(FlyingObject flyingObject, int i, int i2) {
        flyingObject.data = DataAccessor.write(DataAccessor.write(flyingObject.data, 10, 54, i), 10, 44, i2);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public String getTag() {
        return "rocket";
    }
}
