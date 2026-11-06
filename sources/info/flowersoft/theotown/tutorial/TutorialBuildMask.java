package info.flowersoft.theotown.tutorial;

import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.components.DefaultBuildMask;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.PackedInt2;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;

/* JADX INFO: loaded from: classes4.dex */
public class TutorialBuildMask extends DefaultBuildMask {
    public TileCondition condition;
    public Runnable onConditionFulfilled;
    public final IntSet placesXY = new IntSet();
    public final IntSet clickablePlacesXY = new IntSet();
    public final int[] tileMarkMask = new int[4];

    public interface TileCondition {
        boolean isFulfilled(Tiles tiles, int i, int i2);
    }

    @Override // info.flowersoft.theotown.components.DefaultBuildMask, info.flowersoft.theotown.city.components.BuildMask
    public boolean accessGranted(int i, int i2) {
        if (this.placesXY.isEmpty()) {
            return true;
        }
        return this.placesXY.contains(PackedInt2.pack(i, i2));
    }

    @Override // info.flowersoft.theotown.components.DefaultBuildMask, info.flowersoft.theotown.city.components.BuildMask
    public boolean isClickable(int i, int i2) {
        if (this.placesXY.isEmpty()) {
            return true;
        }
        return this.clickablePlacesXY.contains(PackedInt2.pack(i, i2));
    }

    @Override // info.flowersoft.theotown.components.DefaultBuildMask, info.flowersoft.theotown.city.components.BuildMask
    public int[] correct(int i, int i2) {
        int i3;
        if (isClickable(i, i2)) {
            return null;
        }
        int i4 = 0;
        int i5 = Integer.MAX_VALUE;
        int i6 = 0;
        for (int i7 = -1; i7 <= 1; i7++) {
            for (int i8 = -1; i8 <= 1; i8++) {
                int i9 = i + i8;
                int i10 = i2 + i7;
                if (isClickable(i9, i10) && (i3 = (i8 * i8) + (i7 * i7)) < i5) {
                    i4 = i9;
                    i6 = i10;
                    i5 = i3;
                }
            }
        }
        if (i5 < Integer.MAX_VALUE) {
            return new int[]{i4, i6};
        }
        return null;
    }

    public void setCondition(TileCondition tileCondition, Runnable runnable) {
        this.condition = tileCondition;
        this.onConditionFulfilled = runnable;
    }

    public void addTile(int i, int i2) {
        addTile(i, i2, true);
    }

    public void addTile(int i, int i2, boolean z) {
        int iPack = PackedInt2.pack(i, i2);
        this.placesXY.add(iPack);
        if (z) {
            this.clickablePlacesXY.add(iPack);
        }
    }

    public void addTiles(int i, int i2, int i3, int i4) {
        addTiles(i, i2, i3, i4, true);
    }

    public void addTiles(int i, int i2, int i3, int i4, boolean z) {
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                addTile(i + i5, i2 + i6, z);
            }
        }
    }

    public void clear() {
        this.placesXY.clear();
        this.clickablePlacesXY.clear();
        this.condition = null;
        this.onConditionFulfilled = null;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        if (this.condition == null || this.onConditionFulfilled == null) {
            return;
        }
        IntSet.IntSetIterator it = this.placesXY.iterator();
        while (it.hasNext) {
            int next = it.next();
            if (!this.condition.isFulfilled(this.city.getTiles(), PackedInt2.unpackX(next), PackedInt2.unpackY(next))) {
                return;
            }
        }
        Runnable runnable = this.onConditionFulfilled;
        this.onConditionFulfilled = null;
        runnable.run();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        int i;
        super.drawAfter(drawer);
        Engine engine = drawer.engine;
        IsoConverter isoConverter = this.city.getIsoConverter();
        engine.setScale(isoConverter.getAbsScaleX(), isoConverter.getAbsScaleY());
        float f = 255.0f;
        int iRound = Math.round(((((float) Math.sin((TimeUtils.millis() * 6.283185307179586d) / 1000.0d)) * 0.2f) + 0.8f) * 255.0f);
        engine.setColor(Colors.WHITE);
        IntSet.IntSetIterator it = this.placesXY.iterator();
        while (it.hasNext) {
            int next = it.next();
            int iUnpackX = PackedInt2.unpackX(next);
            int iUnpackY = PackedInt2.unpackY(next);
            if (this.clickablePlacesXY.contains(next)) {
                TileCondition tileCondition = this.condition;
                if (tileCondition == null || !tileCondition.isFulfilled(this.city.getTiles(), iUnpackX, iUnpackY)) {
                    int i2 = 0;
                    if (accessGranted(iUnpackX - 1, iUnpackY)) {
                        i = 0;
                    } else {
                        this.tileMarkMask[0] = 0;
                        i = 1;
                    }
                    if (!accessGranted(iUnpackX, iUnpackY + 1)) {
                        this.tileMarkMask[i] = 1;
                        i++;
                    }
                    if (!accessGranted(iUnpackX + 1, iUnpackY)) {
                        this.tileMarkMask[i] = 2;
                        i++;
                    }
                    if (!accessGranted(iUnpackX, iUnpackY - 1)) {
                        this.tileMarkMask[i] = 3;
                        i++;
                    }
                    while (i2 < i) {
                        float f2 = iUnpackX;
                        float f3 = iUnpackY;
                        float fOriginalToRotatedX = this.city.originalToRotatedX(f2, f3);
                        float fOriginalToRotatedY = this.city.originalToRotatedY(f2, f3);
                        float scaleX = engine.getScaleX();
                        int iFloor = (int) Math.floor(this.city.getIsoConverter().isoToAbsX(fOriginalToRotatedX, fOriginalToRotatedY));
                        float fIsoToAbsY = this.city.getIsoConverter().isoToAbsY(fOriginalToRotatedX, fOriginalToRotatedY);
                        float f4 = f;
                        IntSet.IntSetIterator intSetIterator = it;
                        int iFloor2 = (int) Math.floor(fIsoToAbsY);
                        engine.setTransparency(iRound);
                        float f5 = iFloor;
                        float f6 = iFloor2;
                        engine.drawImage(Resources.IMAGE_WORLD, f5, f6, Resources.FRAME_TILEMARK + this.tileMarkMask[i2]);
                        float fSin = (((float) Math.sin(((double) (((r2 % 1000) / 1000.0f) * 2.0f)) * 3.141592653589793d)) + 2.0f) * scaleX;
                        engine.setScale(fSin, fSin);
                        engine.setTransparency(Math.round(f4 - (((fSin / scaleX) - 1.0f) * 100.0f)));
                        engine.drawImage(Resources.IMAGE_WORLD, (f5 + (scaleX * 16.0f)) - (fSin * 16.0f), f6, Resources.FRAME_TILEMARK + this.tileMarkMask[i2]);
                        engine.setScale(scaleX, scaleX);
                        i2++;
                        f = f4;
                        it = intSetIterator;
                    }
                }
            }
            f = f;
            it = it;
        }
    }

    public static /* synthetic */ boolean $r8$lambda$_yqzL60P7KOncJGqG9lPV44nQ0E(ZoneDraft zoneDraft, Tiles tiles, int i, int i2) {
        return tiles.getZone(i, i2) == zoneDraft || tiles.hasRoad(i, i2);
    }

    public static TileCondition getZoneCondition(final ZoneDraft zoneDraft) {
        return new TileCondition() { // from class: info.flowersoft.theotown.tutorial.TutorialBuildMask$$ExternalSyntheticLambda1
            @Override // info.flowersoft.theotown.tutorial.TutorialBuildMask.TileCondition
            public final boolean isFulfilled(Tiles tiles, int i, int i2) {
                return TutorialBuildMask.$r8$lambda$_yqzL60P7KOncJGqG9lPV44nQ0E(zoneDraft, tiles, i, i2);
            }
        };
    }

    public static TileCondition getRoadCondition() {
        return new TileCondition() { // from class: info.flowersoft.theotown.tutorial.TutorialBuildMask$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.tutorial.TutorialBuildMask.TileCondition
            public final boolean isFulfilled(Tiles tiles, int i, int i2) {
                return TutorialBuildMask.m2361$r8$lambda$xjL9YA1NtUI5okWQirAD4QVb04(tiles, i, i2);
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$xjL9YA1NtUI5o-kWQirAD4QVb04, reason: not valid java name */
    public static /* synthetic */ boolean m2361$r8$lambda$xjL9YA1NtUI5okWQirAD4QVb04(Tiles tiles, int i, int i2) {
        for (int i3 = 0; i3 < 2; i3++) {
            if (tiles.getRoad(i, i2, i3) != null) {
                return true;
            }
        }
        return false;
    }
}
