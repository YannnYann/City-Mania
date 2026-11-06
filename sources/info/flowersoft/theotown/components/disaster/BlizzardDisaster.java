package info.flowersoft.theotown.components.disaster;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.WinterManager;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Random;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class BlizzardDisaster extends Disaster {
    public final AnimationDraft SNOW_ON_ROAD_ANIM = (AnimationDraft) Drafts.get("$animationsnowroad", AnimationDraft.class);
    public final BuildingDraft SNOW_TILE = (BuildingDraft) Drafts.get("$snowtile00", BuildingDraft.class);
    public boolean active;
    public long startDay;
    public int x;
    public int y;

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "start day":
                    this.startDay = jsonReader.nextLong();
                    break;
                case "active":
                    this.active = jsonReader.nextBoolean();
                    break;
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("active").value(this.active);
        if (this.active) {
            jsonWriter.name("x").value(this.x);
            jsonWriter.name("y").value(this.y);
            jsonWriter.name("start day").value(this.startDay);
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void update() {
        if (this.active) {
            long absoluteDay = this.date.getAbsoluteDay() - this.startDay;
            if (absoluteDay >= 30) {
                end();
            } else {
                update(absoluteDay, absoluteDay / (r4 - r2));
            }
        }
    }

    public final void end() {
        this.active = false;
        WinterManager.getInstance().setWinter(WinterManager.shouldItBeWinter(Settings.winter));
    }

    public final void update(long j, float f) {
        DefaultWeather defaultWeather = (DefaultWeather) this.city.getComponent(12);
        if (j == 3) {
            WinterManager.getInstance().setWinter(true);
        }
        if (j == 4) {
            defaultWeather.setDownfallSpeed(2.0f);
            defaultWeather.setFogEnabled(true);
        }
        if (j == 5) {
            defaultWeather.setDownfallSpeed(3.0f);
        }
        if (j == 6) {
            defaultWeather.setDownfallSpeed(4.0f);
        }
        if (j == 20) {
            defaultWeather.setDownfallSpeed(1.0f);
        }
        if (j == 25) {
            WinterManager.getInstance().setWinter(false);
            defaultWeather.setFogEnabled(false);
        }
        if (j < 5 || j > 20) {
            return;
        }
        spawnSnow();
    }

    public final void spawnSnow() {
        for (int i = 0; i < 100; i++) {
            Random random = Resources.RND;
            float fNextFloat = random.nextFloat() * 2.0f * 3.1415927f;
            float fNextFloat2 = random.nextFloat() * 32.0f;
            double d = fNextFloat;
            spawnSnow(Math.round(((float) Math.cos(d)) * fNextFloat2) + this.x, Math.round(fNextFloat2 * ((float) Math.sin(d))) + this.y);
        }
    }

    public final void spawnSnow(int i, int i2) {
        Road topRoad;
        if (this.city.isValid(i, i2)) {
            if (this.city.getTiles().hasVisibleRoad(i, i2)) {
                if (Resources.RND.nextBoolean() && (topRoad = this.city.getTiles().getTopRoad(i, i2)) != null && topRoad.dLevel == 0) {
                    topRoad.setOccupation(this.SNOW_ON_ROAD_ANIM);
                    return;
                }
                return;
            }
            if (!this.city.getTiles().hasWire(i, i2) && this.city.getTiles().getRail(i, i2) == null && this.modifier.isBuildable(this.SNOW_TILE, i, i2)) {
                this.modifier.build(this.SNOW_TILE, i, i2, -1, (LuaValue) null);
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isActive() {
        return this.active;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean issue(int i, int i2) {
        if (isActive()) {
            return false;
        }
        this.startDay = this.date.getAbsoluteDay();
        this.x = i;
        this.y = i2;
        this.active = true;
        ((DefaultWeather) this.city.getComponent(12)).setTime(607697);
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public int[] getLocation() {
        return new int[]{this.x, this.y};
    }
}
