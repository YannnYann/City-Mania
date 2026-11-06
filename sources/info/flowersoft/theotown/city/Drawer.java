package info.flowersoft.theotown.city;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.Catastrophe;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.components.LODController;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultSigns;
import info.flowersoft.theotown.components.disaster.CrimeDisaster;
import info.flowersoft.theotown.components.disaster.FireDisaster;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.WinterManager;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.util.ScreenRect;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Drawer {
    public long absoluteDay;
    public int animationSpotFlags;
    public int bTileX;
    public int bTileY;
    public int baseTerrainHeight;
    public final City city;
    public DefaultDate date;
    public double day;
    public float daytime;
    public double daytimeDay;
    public Engine engine;
    public boolean flat;
    public Ground ground;
    public IconDrawer iconDrawer;
    public IsoConverter iso;
    public LODController lod;
    public float rectX0;
    public float rectX1;
    public float rectY0;
    public float rectY1;
    public int rotation;
    public float scaleX;
    public float scaleY;
    public int shadingBlue;
    public int shadingGreen;
    public int shadingRed;
    public float shiftX;
    public float shiftY;
    public float targetScale;
    public float terrainHeight;
    public int tileX;
    public int tileY;
    public final Tiles tiles;
    public int time;
    public int timeDelta;
    public int upDirs;
    public boolean winter;
    public float x;
    public float y;
    public int shortBuildTimeFactor = 1;
    public boolean useShading = false;

    public interface IconDrawer {
        void draw(Engine engine, float f, float f2, int i);
    }

    public static float interpolate(float f, float f2, float f3) {
        return ((1.0f - f) * f2) + (f * f3);
    }

    public void end() {
    }

    public Drawer(City city) {
        this.city = city;
        this.tiles = city.getTiles();
    }

    public void setTo(Drawer drawer) {
        this.x = drawer.x;
        this.y = drawer.y;
        this.shiftX = drawer.shiftX;
        this.shiftY = drawer.shiftY;
        this.iso = drawer.iso;
        this.rectX0 = drawer.rectX0;
        this.rectY0 = drawer.rectY0;
        this.rectX1 = drawer.rectX1;
        this.rectY1 = drawer.rectY1;
        this.scaleX = drawer.scaleX;
        this.scaleY = drawer.scaleY;
        this.targetScale = drawer.targetScale;
        this.date = drawer.date;
        this.engine = drawer.engine;
        this.rotation = drawer.rotation;
        this.lod = drawer.lod;
        this.time = drawer.time;
        this.timeDelta = drawer.timeDelta;
        this.day = drawer.day;
        this.shortBuildTimeFactor = drawer.shortBuildTimeFactor;
        this.terrainHeight = drawer.terrainHeight;
        this.baseTerrainHeight = drawer.baseTerrainHeight;
        this.flat = drawer.flat;
        this.upDirs = drawer.upDirs;
        this.ground = drawer.ground;
        this.tileX = drawer.tileX;
        this.tileY = drawer.tileY;
        this.bTileX = drawer.bTileX;
        this.bTileY = drawer.bTileY;
        this.useShading = drawer.useShading;
        this.shadingRed = drawer.shadingRed;
        this.shadingGreen = drawer.shadingGreen;
        this.shadingBlue = drawer.shadingBlue;
        this.daytime = drawer.daytime;
        this.daytimeDay = drawer.daytimeDay;
        this.winter = drawer.winter;
        this.animationSpotFlags = drawer.animationSpotFlags;
        this.absoluteDay = drawer.absoluteDay;
    }

    public void begin(Engine engine) {
        this.engine = engine;
        this.rotation = this.city.getRotation();
        this.iso = this.city.getIsoConverter();
        ScreenRect view = this.city.getView();
        this.rectX0 = view.getX();
        this.rectY0 = view.getY();
        this.rectX1 = view.getX() + view.getWidth();
        this.rectY1 = view.getY() + view.getHeight();
        this.date = (DefaultDate) this.city.getComponent(1);
        this.lod = this.city.getLod();
        this.scaleX = this.iso.getAbsScaleX();
        this.scaleY = this.iso.getAbsScaleY();
        this.targetScale = this.city.getTargetScale();
        this.time = this.date.getAnimationTime();
        this.timeDelta = this.date.getAnimationTimeDelta();
        long absoluteDay = this.date.getAbsoluteDay();
        this.absoluteDay = absoluteDay;
        this.day = absoluteDay + ((double) this.date.getDayPart());
        this.shortBuildTimeFactor = GameHandler.getInstance().getTimedEffectManager().getShortBuildTimeFactor();
        this.animationSpotFlags = 0;
        List<Disaster> disasters = ((Catastrophe) this.city.getComponent(6)).getDisasters();
        for (int i = 0; i < disasters.size(); i++) {
            Disaster disaster = disasters.get(i);
            if (disaster.isActive()) {
                if (disaster instanceof FireDisaster) {
                    this.animationSpotFlags |= 1;
                }
                if (disaster instanceof CrimeDisaster) {
                    this.animationSpotFlags |= 2;
                }
            }
        }
        CityComponent component = this.city.getComponent(18);
        if (component instanceof DefaultSigns) {
            this.iconDrawer = ((DefaultSigns) component).getIconDrawer();
        } else {
            this.iconDrawer = null;
        }
        if (WinterManager.getInstance().isWinter()) {
            this.animationSpotFlags |= 16;
        } else {
            this.animationSpotFlags |= 8;
        }
    }

    public City getCity() {
        return this.city;
    }

    public float getShiftX() {
        return this.shiftX;
    }

    public float getShiftY() {
        return this.shiftY;
    }

    public void setRealTile(int i, int i2) {
        setTile(this.city.originalToRotatedX(i, i2), this.city.originalToRotatedY(i, i2), i, i2);
    }

    public void setShadingColor(int i, int i2, int i3) {
        this.shadingRed = i;
        this.shadingGreen = i2;
        this.shadingBlue = i3;
    }

    public boolean isUseShading() {
        return this.useShading;
    }

    public void setUseShading(boolean z) {
        this.useShading = z;
    }

    public void setTile(int i, int i2, int i3, int i4) {
        if (this.city.isValid(i3, i4)) {
            this.tileX = i3;
            this.tileY = i4;
            this.bTileX = i3;
            this.bTileY = i4;
            Ground ground = this.tiles.getGround(i3, i4);
            this.ground = ground;
            this.terrainHeight = ground.getTerrainAverageHeight();
            this.baseTerrainHeight = this.ground.getBaseTerrainHeight();
            this.upDirs = this.ground.getUpDirs();
            this.flat = this.ground.isFlat();
            Building building = this.tiles.getBuilding(i3, i4);
            if (building != null) {
                this.bTileX = building.getX();
                this.bTileY = building.getY();
            }
        } else {
            this.tileX = i3;
            this.tileY = i4;
            this.bTileX = i3;
            this.bTileY = i4;
            this.ground = null;
            this.terrainHeight = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.baseTerrainHeight = 0;
            this.upDirs = 0;
            this.flat = true;
        }
        float f = i;
        float f2 = i2;
        this.x = this.iso.isoToAbsX(f, f2);
        this.y = this.iso.isoToAbsY(f, f2);
    }

    public void draw(Image image, float f, float f2, int i) {
        int red = this.engine.getRed();
        int green = this.engine.getGreen();
        int blue = this.engine.getBlue();
        if (this.useShading) {
            this.engine.setColor((this.shadingRed * red) / 255, (this.shadingGreen * green) / 255, (this.shadingBlue * blue) / 255);
        }
        this.engine.drawImage(image, this.x + ((f + this.shiftX) * this.scaleX), this.y + ((f2 + this.shiftY) * this.scaleY), i);
        if (this.useShading) {
            this.engine.setColor(red, green, blue);
        }
    }

    public float getDrawingX(float f) {
        return this.x + ((f + this.shiftX) * this.scaleX);
    }

    public float getDrawingY(float f) {
        return this.y + ((f + this.shiftY) * this.scaleY);
    }

    public void drawTriangle(Image image, int i, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12) {
        int red = this.engine.getRed();
        int green = this.engine.getGreen();
        int blue = this.engine.getBlue();
        if (this.useShading) {
            this.engine.setColor((this.shadingRed * red) / 255, (this.shadingGreen * green) / 255, (this.shadingBlue * blue) / 255);
        }
        Texture texture = image.getTexture(i);
        float[] uVStream = image.getUVStream();
        int uVStreamPos = image.getUVStreamPos(i);
        int i2 = uVStreamPos + 2;
        float fInterpolate = interpolate(f7, uVStream[uVStreamPos], uVStream[i2]);
        int i3 = uVStreamPos + 1;
        int i4 = uVStreamPos + 3;
        float fInterpolate2 = interpolate(f8, uVStream[i3], uVStream[i4]);
        float fInterpolate3 = interpolate(f9, uVStream[uVStreamPos], uVStream[i2]);
        float fInterpolate4 = interpolate(f10, uVStream[i3], uVStream[i4]);
        float fInterpolate5 = interpolate(f11, uVStream[uVStreamPos], uVStream[i2]);
        float fInterpolate6 = interpolate(f12, uVStream[i3], uVStream[i4]);
        Engine engine = this.engine;
        float f13 = this.x;
        float f14 = this.shiftX;
        float f15 = this.scaleX;
        float f16 = this.y;
        float f17 = this.shiftY;
        float f18 = this.scaleY;
        engine.drawTextureTriangle(texture, f13 + ((f + f14) * f15), ((f2 + f17) * f18) + f16, ((f3 + f14) * f15) + f13, ((f4 + f17) * f18) + f16, f13 + ((f5 + f14) * f15), f16 + ((f6 + f17) * f18), fInterpolate, fInterpolate2, fInterpolate3, fInterpolate4, fInterpolate5, fInterpolate6, 0);
        this.engine.setColor(red, green, blue);
    }

    public float getDrawingX() {
        return this.x + (this.shiftX * this.scaleX);
    }

    public float getDrawingY() {
        return this.y + (this.shiftY * this.scaleY);
    }

    public void addShift(float f, float f2) {
        this.shiftX += f;
        this.shiftY += f2;
    }

    public void addShiftToTile(float f, float f2) {
        addShift(((f + f2) * 32.0f) / 2.0f, ((f - f2) * 16.0f) / 2.0f);
    }

    public void resetShift() {
        this.shiftX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.shiftY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public void setShift(float f, float f2) {
        this.shiftX = f;
        this.shiftY = f2;
    }

    public void setClipRect(int i, int i2, int i3, int i4) {
        this.engine.setClipRect(((i + this.shiftX) * this.scaleX) + this.x, ((i2 + this.shiftY) * this.scaleY) + this.y, i3 * this.iso.getAbsScaleX(), i4 * this.iso.getAbsScaleY());
    }

    public void resetClipping() {
        this.engine.resetClipping();
    }

    public boolean isTileVisible() {
        float f = this.scaleX;
        float f2 = this.scaleY;
        return this.x + ((this.shiftX + 32.0f) * f) >= this.rectX0 && this.y + (((this.shiftY + 24.0f) - ((float) (this.baseTerrainHeight * 12))) * f2) >= this.rectY0 && this.x + (this.shiftX * f) < this.rectX1 && this.y + ((((this.shiftY - 8.0f) - 8.0f) - (((float) Math.ceil((double) this.terrainHeight)) * 12.0f)) * f2) < this.rectY1;
    }

    public boolean isBuildingVisible(Building building) {
        int visualWidth = building.getVisualWidth(this.rotation);
        int visualHeight = building.getVisualHeight(this.rotation);
        float f = this.scaleX;
        float f2 = this.scaleY;
        return this.x + ((this.shiftX + ((float) (((visualHeight + visualWidth) * 32) / 2))) * f) >= this.rectX0 && this.y + ((this.shiftY + ((float) ((visualWidth * 16) / 2))) * f2) >= this.rectY0 && this.x + (this.shiftX * f) < this.rectX1 && this.y + (((this.shiftY - ((float) ((((building.getDraft().buildHeight + visualWidth) + visualHeight) * 16) / 2))) - (this.terrainHeight * 12.0f)) * f2) < this.rectY1;
    }

    public float getYFactor(int i) {
        return (this.y + ((this.shiftY + i) * this.iso.getAbsScaleY())) / this.iso.getView().getHeight();
    }

    public void drawSign(float f, float f2, int i) {
        IconDrawer iconDrawer = this.iconDrawer;
        if (iconDrawer != null) {
            iconDrawer.draw(this.engine, this.x + ((f + this.shiftX) * this.scaleX), this.y + ((f2 + this.shiftY) * this.scaleY), i);
        }
    }
}
