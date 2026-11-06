package info.flowersoft.theotown.components.decoration;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import java.lang.reflect.Array;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class FisherHutDecorator extends Decorator {
    public BuildingDraft draft;

    public FisherHutDecorator(City city) {
        super(city);
        BuildingDraft buildingDraft = (BuildingDraft) Drafts.ALL.get("$comfisherhut00");
        this.draft = buildingDraft;
        if (!buildingDraft.isSquare()) {
            throw new IllegalStateException();
        }
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean canDecorate(Building building) {
        return building.getBuildingType() == this.draft.buildingType && building.getLevel() == this.draft.level - 1 && Resources.RND.nextFloat() < 0.1f;
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean decorate(Building building) {
        int width = this.draft.getWidth(0);
        int height = this.draft.getHeight(0);
        for (int y = (building.getY() - height) - 1; y <= building.getY() + building.getHeight() + 1; y++) {
            for (int x = (building.getX() - width) - 1; x <= building.getX() + building.getWidth() + 1; x++) {
                if ((x <= building.getX() - width || y <= building.getY() - height || x >= building.getX() + building.getWidth() || y >= building.getY() + building.getHeight()) && tryToDecorate(x, y)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean tryToDecorate(int i, int i2) {
        int width = this.draft.getWidth(0);
        int height = this.draft.getHeight(0);
        if (this.city.isValid(i - 1, i2 - 1) && this.city.isValid(i + width, i2 + height)) {
            boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 2, 2);
            zArr[0][0] = this.city.getTiles().getGround(i, i2).isWater();
            int i3 = i + 1;
            zArr[1][0] = this.city.getTiles().getGround(i3, i2).isWater();
            int i4 = i2 + 1;
            zArr[0][1] = this.city.getTiles().getGround(i, i4).isWater();
            zArr[1][1] = this.city.getTiles().getGround(i3, i4).isWater();
            boolean[] zArr2 = zArr[0];
            boolean z = zArr2[0];
            boolean[] zArr3 = zArr[1];
            int i5 = (z ? 1 : 0) + (zArr3[0] ? 1 : 0) + (zArr2[1] ? 1 : 0) + (zArr3[1] ? 1 : 0);
            if (i5 >= 2 && i5 <= 3) {
                for (int i6 = 0; i6 < height; i6++) {
                    for (int i7 = 0; i7 < width; i7++) {
                        int i8 = i + i7;
                        int i9 = i2 + i6;
                        ZoneDraft zone = this.tiles.getZone(i8, i9);
                        if (zone != null && !zone.isSuperiorTo(this.draft.zone)) {
                            return false;
                        }
                        Building building = this.tiles.getBuilding(i8, i9);
                        if (building != null && building.getBuildingType() != BuildingType.DECORATION) {
                            return false;
                        }
                    }
                }
                int i10 = 1;
                while (i10 <= 8) {
                    int iDifferenceX = Direction.differenceX(i10);
                    int iDifferenceY = Direction.differenceY(i10);
                    int i11 = -iDifferenceX;
                    int i12 = ((1 - iDifferenceX) / 2) + iDifferenceX;
                    int i13 = ((1 - iDifferenceY) / 2) + iDifferenceY;
                    if (zArr[i12][i13] && zArr[((i12 + iDifferenceY) + 2) % 2][((i13 + i11) + 2) % 2] && this.modifier.isBuildable(this.draft, i, i2)) {
                        this.modifier.build(this.draft, i, i2, (Direction.toIndex(i10) + 2) % 4, (LuaValue) null);
                        return true;
                    }
                    i10 *= 2;
                    i = i;
                    i2 = i2;
                }
            }
        }
        return false;
    }
}
