package info.flowersoft.theotown.components.decoration;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class HarborDecorator extends Decorator {
    public HarborDecorator(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean canDecorate(Building building) {
        return building.getBuildingType() == BuildingType.HARBOR_IND;
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean decorate(Building building) {
        for (int iMax = Math.max(building.getY() - 6, 0); iMax < Math.min(building.getY() + building.getHeight() + 3, this.city.getHeight() - 2); iMax++) {
            for (int iMax2 = Math.max(building.getX() - 6, 0); iMax2 < Math.min(building.getX() + building.getWidth() + 3, this.city.getWidth() - 2); iMax2++) {
                if ((iMax2 < building.getX() - 2 || iMax < building.getY() - 2 || iMax2 >= building.getX() + building.getWidth() || iMax >= building.getY() + building.getHeight()) && tryToDecorate(iMax2, iMax)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean tryToDecorate(int i, int i2) {
        int i3 = 1;
        while (i3 <= 8) {
            int iDifferenceX = Direction.differenceX(i3);
            int iDifferenceY = Direction.differenceY(i3);
            int i4 = -iDifferenceY;
            int i5 = i + 1 + iDifferenceX;
            int i6 = i2 + 1 + iDifferenceY;
            if (isLand(i5, i6) && this.tiles.getZone(i5, i6) == Zones.getInstance().HARBOR) {
                int i7 = (i5 - iDifferenceX) - i4;
                int i8 = (i6 - iDifferenceY) - iDifferenceX;
                for (int i9 = 0; i9 < 3; i9++) {
                    if (countWaterTiles(i7 + (i9 * i4), i8 + (i9 * iDifferenceX), -iDifferenceX, i4, 4) < 4) {
                        return false;
                    }
                }
                BuildingDraft buildingDraft = Drafts.HARBOR_PIERS.get(Resources.RND.nextInt(Drafts.HARBOR_PIERS.size()));
                if (this.modifier.isBuildable(buildingDraft, i, i2) && nothingHasToBeRemoved(buildingDraft, i, i2)) {
                    this.modifier.build(buildingDraft, i, i2, Direction.toIndex(i3), (LuaValue) null);
                    return true;
                }
            }
            i3 *= 2;
            i = i;
            i2 = i2;
        }
        return false;
    }

    public final boolean nothingHasToBeRemoved(BuildingDraft buildingDraft, int i, int i2) {
        int width = buildingDraft.getWidth(0);
        int height = buildingDraft.getHeight(0);
        for (int i3 = i2; i3 < i2 + height; i3++) {
            for (int i4 = i; i4 < i + width; i4++) {
                if (this.tiles.getBuilding(i4, i3) != null) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean isLand(int i, int i2) {
        return !this.city.getTiles().getGround(i, i2).isWater();
    }

    public final int countWaterTiles(int i, int i2, int i3, int i4, int i5) {
        int i6 = 0;
        while (true) {
            if ((this.city.isValid(i, i2) && !this.city.getTiles().getGround(i, i2).isWater()) || i6 >= i5) {
                break;
            }
            i += i3;
            i2 += i4;
            i6++;
        }
        return i6;
    }
}
