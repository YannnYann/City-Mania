package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.resources.Drafts;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SWATHelicopterController extends OperationalHelicopterController {
    public SWATHelicopterController(City city, FlyingObjectSpawner flyingObjectSpawner) {
        super(city, flyingObjectSpawner, ActionPlaceType.SWAT);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public FlyingObjectDraft getDraft(Building building) {
        return (FlyingObjectDraft) Drafts.ALL.get("$heliswat00");
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public List<Building> getBuildings() {
        return this.city.getBuildings().getBuildingsOfDraft((BuildingDraft) Drafts.ALL.get("$police02"));
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController
    public boolean onActionPlace(FlyingObject flyingObject) {
        int actualX = flyingObject.getActualX();
        int actualY = flyingObject.getActualY();
        int i = 0;
        for (int i2 = actualY - 6; i2 <= actualY + 6; i2++) {
            for (int i3 = actualX - 6; i3 <= actualX + 6; i3++) {
                int i4 = i3 - actualX;
                int i5 = i2 - actualY;
                if ((i4 * i4) + (i5 * i5) <= 36 && this.city.isValid(i3, i2)) {
                    Road topRoad = this.tiles.getTopRoad(i3, i2);
                    Road bottomRoad = topRoad != null ? this.tiles.getBottomRoad(i3, i2) : null;
                    if (topRoad != null && bottomRoad != null) {
                        for (int i6 = bottomRoad.level; i6 <= topRoad.level; i6++) {
                            Road road = this.tiles.getRoad(i3, i2, i6);
                            if (road != null && (road.getOccupationRemoveFlags() & 7) != 0) {
                                road.setOccupation(null);
                                i++;
                            }
                        }
                    }
                }
            }
        }
        if (i <= 0 || !this.city.canAchieve()) {
            return true;
        }
        TheoTown.gamesService.unlockAchievement("swat_send");
        return true;
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public String getTag() {
        return "swat helicopter";
    }
}
