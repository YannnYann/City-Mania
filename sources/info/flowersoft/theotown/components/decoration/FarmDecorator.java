package info.flowersoft.theotown.components.decoration;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import java.util.List;
import java.util.Random;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class FarmDecorator extends Decorator {
    public List<BuildingDraft> farmFieldDrafts;

    public FarmDecorator(City city) {
        super(city);
        this.farmFieldDrafts = Drafts.getDraftsWithTag("farm field", BuildingDraft.class);
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean canDecorate(Building building) {
        return building.getBuildingType() == BuildingType.FARM;
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean decorate(Building building) {
        if (this.farmFieldDrafts.isEmpty()) {
            return false;
        }
        BuildingDraft buildingDraft = this.farmFieldDrafts.get(Resources.RND.nextInt(this.farmFieldDrafts.size()));
        int x = building.getX();
        int y = building.getY();
        int x2 = (building.getX() + building.getWidth()) - 1;
        int y2 = (building.getY() + building.getHeight()) - 1;
        for (int y3 = building.getY(); y3 < building.getY() + building.getHeight(); y3++) {
            for (int i = x - 1; i >= 0; i--) {
                ZoneDraft zone = this.tiles.getZone(i, y3);
                Building building2 = this.tiles.getBuilding(i, y3);
                if (zone != Zones.getInstance().FARM || !this.modifier.isBuildable(buildingDraft, i, y3) || building2 != null) {
                    break;
                }
                x = Math.min(i, x);
            }
            for (int i2 = x2 + 1; i2 < this.city.getWidth(); i2++) {
                ZoneDraft zone2 = this.tiles.getZone(i2, y3);
                Building building3 = this.tiles.getBuilding(i2, y3);
                if (zone2 != Zones.getInstance().FARM || !this.modifier.isBuildable(buildingDraft, i2, y3) || building3 != null) {
                    break;
                }
                x2 = Math.max(i2, x2);
            }
        }
        for (int x3 = building.getX(); x3 < building.getX() + building.getWidth(); x3++) {
            for (int i3 = y - 1; i3 >= 0; i3--) {
                ZoneDraft zone3 = this.tiles.getZone(x3, i3);
                Building building4 = this.tiles.getBuilding(x3, i3);
                if (zone3 != Zones.getInstance().FARM || !this.modifier.isBuildable(buildingDraft, x3, i3) || building4 != null) {
                    break;
                }
                y = Math.min(i3, y);
            }
            for (int i4 = y2 + 1; i4 < this.city.getHeight(); i4++) {
                ZoneDraft zone4 = this.tiles.getZone(x3, i4);
                Building building5 = this.tiles.getBuilding(x3, i4);
                if (zone4 != Zones.getInstance().FARM || !this.modifier.isBuildable(buildingDraft, x3, i4) || building5 != null) {
                    break;
                }
                y2 = Math.max(i4, y2);
            }
        }
        int i5 = (x2 - x) + 1;
        int i6 = (y2 - y) + 1;
        int x4 = building.getX() - x;
        int y4 = building.getY() - y;
        int x5 = building.getX();
        Random random = Resources.RND;
        int iNextInt = (x5 - random.nextInt(Math.min(1, x4 + 1))) - x4;
        int y5 = (building.getY() - random.nextInt(Math.min(1, y4 + 1))) - y4;
        int i7 = (i5 + iNextInt) - 1;
        int i8 = (i6 + y5) - 1;
        int iNextInt2 = random.nextInt(2);
        for (int i9 = y5; i9 <= i8; i9++) {
            for (int i10 = iNextInt; i10 <= i7; i10++) {
                ZoneDraft zone5 = this.tiles.getZone(i10, i9);
                Building building6 = this.tiles.getBuilding(i10, i9);
                if (zone5 == Zones.getInstance().FARM && this.modifier.isBuildable(buildingDraft, i10, i9) && building6 == null) {
                    int[] iArr = buildingDraft.frames;
                    this.modifier.build(buildingDraft, i10, i9, (iArr.length >= 4 ? (Resources.RND.nextInt(iArr.length / 2) * 2) + iNextInt2 : iNextInt2) % buildingDraft.frames.length, (LuaValue) null);
                }
            }
        }
        return true;
    }
}
