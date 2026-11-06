package info.flowersoft.theotown.drawing;

import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.FloatArray;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.MinimapRenderer;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.neighbors.RealNeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.SortedList;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.DynamicTextureSource;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Texture;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: TSMapBackgroundDrawer.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TSMapBackgroundDrawer implements Disposable {
    public final City city;
    public final Texture rectTex;
    public final float rectU;
    public final float rectV;
    public TSMapStyle style;
    public final Texture texture;
    public final FloatArray waterQuads;

    public final int toInt(boolean z) {
        return z ? 1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [info.flowersoft.theotown.drawing.TSMapBackgroundDrawer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [info.flowersoft.theotown.drawing.TSMapBackgroundDrawer] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public TSMapBackgroundDrawer(City city, TSMapStyle style) {
        int i;
        Intrinsics.checkNotNullParameter(city, "city");
        Intrinsics.checkNotNullParameter(style, "style");
        ?? obj = new Object();
        obj.city = city;
        obj.style = style;
        obj.waterQuads = new FloatArray();
        obj.rectTex = Resources.IMAGE_WORLD.getTexture(Resources.FRAME_RECT);
        float[] uVCoords = Resources.IMAGE_WORLD.getUVCoords(Resources.FRAME_RECT, new float[4]);
        obj.rectU = uVCoords[0];
        obj.rectV = uVCoords[1];
        MinimapRenderer minimapRenderer = new MinimapRenderer(city);
        int rotation = city.getRotation();
        city.setRotation(0);
        minimapRenderer.render(false);
        DynamicTextureSource dynamicTextureSource = new DynamicTextureSource(minimapRenderer.getWidth(), minimapRenderer.getHeight());
        dynamicTextureSource.setData(minimapRenderer.getData(), minimapRenderer.getWidth(), minimapRenderer.getHeight());
        city.setRotation(rotation);
        Texture texture = new Texture(dynamicTextureSource);
        obj.texture = texture;
        texture.setFiltering(9729, 9729);
        int height = city.getHeight();
        int i2 = 0;
        ?? r0 = obj;
        while (i2 < height) {
            int i3 = 0;
            ?? r02 = r0;
            while (i3 < r02.city.getWidth()) {
                float f = i3;
                float height2 = (r02.city.getHeight() - 1) - i2;
                if (r02.city.getTiles().isGroundWater(i3, i2)) {
                    i = i3;
                    while (i < r02.city.getWidth() && r02.city.getTiles().isGroundWater(i, i2)) {
                        i++;
                    }
                    float f2 = i;
                    float f3 = height2 + 1.0f;
                    r02.add(r02.waterQuads, f, height2, f2, height2, f2, f3, f, f3);
                } else {
                    int i4 = 0;
                    for (int i5 = 0; i5 < 4; i5++) {
                        int iFromIndex = Direction.fromIndex(i5);
                        int iDifferenceX = Direction.differenceX(iFromIndex) + i3;
                        int iDifferenceY = Direction.differenceY(iFromIndex) + i2;
                        i4 |= r02.toInt(r02.city.isValid(iDifferenceX, iDifferenceY) && r02.city.getTiles().isGroundWater(iDifferenceX, iDifferenceY)) << i5;
                    }
                    i = i3 + 1;
                    if (i4 == 3) {
                        float f4 = f + 1.0f;
                        r02.add(r02.waterQuads, f, height2, f4, height2, f4, height2 + 1.0f, f, height2);
                    } else if (i4 == 6) {
                        r02.add(r02.waterQuads, f, height2, f + 1.0f, height2, f, height2 + 1.0f, f, height2);
                    } else if (i4 == 9) {
                        float f5 = f + 1.0f;
                        float f6 = height2 + 1.0f;
                        r02.add(r02.waterQuads, f5, f6, f, f6, f5, height2, f5, f6);
                    } else if (i4 == 12) {
                        float f7 = f + 1.0f;
                        float f8 = height2 + 1.0f;
                        r02.add(r02.waterQuads, f7, f8, f, f8, f, height2, f7, f8);
                    }
                    r02 = this;
                }
                i3 = i;
                r02 = r02;
            }
            i2++;
            r0 = this;
        }
    }

    public final void setStyle(TSMapStyle tSMapStyle) {
        Intrinsics.checkNotNullParameter(tSMapStyle, "<set-?>");
        this.style = tSMapStyle;
    }

    public final void draw(Engine engine, float f, float f2, float f3, float f4) {
        TSMapBackgroundDrawer tSMapBackgroundDrawer = this;
        Engine engine2 = engine;
        Intrinsics.checkNotNullParameter(engine2, "engine");
        engine2.setColorAndTransparency(tSMapBackgroundDrawer.style.getMapColor());
        engine2.drawImage(Resources.IMAGE_WORLD, f3 - (f * 5.0f), f4 - (f2 * 5.0f), (tSMapBackgroundDrawer.city.getWidth() * f) + (f * 2.0f * 5.0f), (tSMapBackgroundDrawer.city.getHeight() * f2) + (2.0f * f2 * 5.0f), Resources.FRAME_RECT);
        float height = tSMapBackgroundDrawer.city.getHeight() / tSMapBackgroundDrawer.texture.getHeight();
        engine2.setColorAndTransparency(tSMapBackgroundDrawer.style.getMapTintColor());
        engine2.drawTextureRect(tSMapBackgroundDrawer.texture, f3, f4, f3, f4 + (tSMapBackgroundDrawer.city.getHeight() * f2), f3 + (tSMapBackgroundDrawer.city.getWidth() * f), f4 + (tSMapBackgroundDrawer.city.getHeight() * f2), f3 + (tSMapBackgroundDrawer.city.getWidth() * f), f4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, height, tSMapBackgroundDrawer.city.getWidth() / tSMapBackgroundDrawer.texture.getWidth(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0);
        engine2.setColorAndTransparency(tSMapBackgroundDrawer.style.getWaterColor());
        boolean z = false;
        char c = '\b';
        IntProgression intProgressionStep = RangesKt___RangesKt.step(RangesKt___RangesKt.until(0, tSMapBackgroundDrawer.waterQuads.size), 8);
        int first = intProgressionStep.getFirst();
        int last = intProgressionStep.getLast();
        int step = intProgressionStep.getStep();
        if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
            int i = first;
            while (true) {
                Texture texture = tSMapBackgroundDrawer.rectTex;
                float f5 = (tSMapBackgroundDrawer.waterQuads.get(i) * f) + f3;
                float f6 = (tSMapBackgroundDrawer.waterQuads.get(i + 1) * f2) + f4;
                float f7 = (tSMapBackgroundDrawer.waterQuads.get(i + 2) * f) + f3;
                float f8 = (tSMapBackgroundDrawer.waterQuads.get(i + 3) * f2) + f4;
                float f9 = (tSMapBackgroundDrawer.waterQuads.get(i + 4) * f) + f3;
                float f10 = (tSMapBackgroundDrawer.waterQuads.get(i + 5) * f2) + f4;
                float f11 = (tSMapBackgroundDrawer.waterQuads.get(i + 6) * f) + f3;
                float f12 = (tSMapBackgroundDrawer.waterQuads.get(i + 7) * f2) + f4;
                float f13 = tSMapBackgroundDrawer.rectU;
                float f14 = tSMapBackgroundDrawer.rectV;
                int i2 = i;
                int i3 = last;
                engine2.drawTextureRect(texture, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f13, f14, 0);
                if (i2 == i3) {
                    break;
                }
                i = i2 + step;
                last = i3;
                z = false;
                c = '\b';
                tSMapBackgroundDrawer = this;
            }
        }
        engine2.reset();
        int iCountNeighbors = this.city.countNeighbors();
        for (int i4 = 0; i4 < iCountNeighbors; i4++) {
            NeighborCity neighbor = this.city.getNeighbor(i4);
            RealNeighborCity realNeighborCity = neighbor instanceof RealNeighborCity ? (RealNeighborCity) neighbor : null;
            if (realNeighborCity != null && realNeighborCity.isDirect()) {
                if (realNeighborCity.isCreated()) {
                    engine2.setColorAndTransparency(this.style.getNeighborColor());
                } else {
                    engine2.setColorAndTransparency(this.style.getNeighborInactiveColor());
                }
                engine2.drawNinePatch(Resources.IMAGE_WORLD, (realNeighborCity.getX() * f) + f3, (((this.city.getHeight() - realNeighborCity.getY()) - realNeighborCity.getHeight()) * f2) + f4, realNeighborCity.getWidth() * f, realNeighborCity.getHeight() * f2, Resources.NP_REGION_BORDER);
                if (realNeighborCity.isCreated()) {
                    engine2.setColorAndTransparency(this.style.getNeighborNameColor());
                    Drawing.getInstance().drawOutlinedText(realNeighborCity.getName(), ((realNeighborCity.getX() + (realNeighborCity.getWidth() * 0.5f)) * f) + f3, (((this.city.getHeight() - realNeighborCity.getY()) - (realNeighborCity.getHeight() * 0.5f)) * f2) + f4, Resources.skin.fontDefault, Colors.BLACK, engine, 0.5f, 0.5f);
                    engine2 = engine;
                }
            }
        }
        SortedList<Building> buildingsOfType = this.city.getBuildings().getBuildingsOfType(BuildingType.LANDMARK);
        Drawer drawer = this.city.getDrawer();
        engine2.reset();
        drawer.begin(engine2);
        float f15 = f / 32.0f;
        drawer.scaleX = f15;
        float f16 = f2 / 32.0f;
        drawer.scaleY = f16;
        engine2.setScale(f15, f16);
        int size = buildingsOfType.size();
        for (int i5 = 0; i5 < size; i5++) {
            Building building = buildingsOfType.get(i5);
            if (building == null) {
                break;
            }
            engine2.setColorAndTransparency(this.style.getLandmarkTintColor());
            drawer.setTile(building.getX(), building.getY(), building.getX(), building.getY());
            drawer.baseTerrainHeight = 0;
            drawer.terrainHeight = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            drawer.x = (building.getX() * f) + f3;
            drawer.y = (((this.city.getHeight() - 1) - building.getY()) * f2) + f4;
            building.draw(drawer);
        }
        int i6 = 0;
        drawer.end();
        engine2.reset();
        engine2.setColorAndTransparency(this.style.getGridColor());
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, this.city.getWidth(), 8);
        if (progressionLastElement >= 0) {
            int i7 = 0;
            while (true) {
                engine2.drawImage(Resources.IMAGE_WORLD, ((i7 * f) - (f * 0.25f)) + f3, f4, f * 0.5f, f2 * this.city.getHeight(), Resources.FRAME_RECT);
                if (i7 == progressionLastElement) {
                    break;
                }
                i7 += 8;
                engine2 = engine;
            }
        }
        int progressionLastElement2 = ProgressionUtilKt.getProgressionLastElement(0, this.city.getHeight(), 8);
        if (progressionLastElement2 >= 0) {
            while (true) {
                engine.drawImage(Resources.IMAGE_WORLD, f3, ((i6 * f2) - (f2 * 0.25f)) + f4, f * this.city.getWidth(), f2 * 0.5f, Resources.FRAME_RECT);
                if (i6 == progressionLastElement2) {
                    break;
                } else {
                    i6 += 8;
                }
            }
        }
        engine.reset();
    }

    public final void add(FloatArray floatArray, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        floatArray.add(f, f2, f3, f4);
        floatArray.add(f5, f6, f7, f8);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.texture.release();
    }
}
