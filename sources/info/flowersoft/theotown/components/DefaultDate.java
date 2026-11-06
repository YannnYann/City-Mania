package info.flowersoft.theotown.components;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.tools.BuildTool;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultDate extends CityComponent {
    public long absoluteDay;
    public long absoluteMS;
    public int animationTime;
    public int animationTimeDelta;
    public float dayPart;
    public long lastUpdateMS;
    public int speed;

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 1;
    }

    public DefaultDate(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "animation time":
                    this.animationTime = jsonReader.nextInt();
                    break;
                case "absolute day":
                    this.absoluteDay = jsonReader.nextInt();
                    break;
                case "speed":
                    this.speed = jsonReader.nextInt();
                    break;
                case "animation time delta":
                    this.animationTimeDelta = jsonReader.nextInt();
                    break;
                case "day part":
                    this.dayPart = jsonReader.nextFloat();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public DefaultDate() {
        this.lastUpdateMS = 0L;
        this.absoluteDay = 0L;
        this.speed = 0;
        this.animationTime = 0;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        super.prepare();
        this.absoluteMS = TimeUtils.millis();
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("absolute day").value(this.absoluteDay);
        jsonWriter.name("speed").value(this.speed);
        jsonWriter.name("animation time").value(this.animationTime);
        jsonWriter.name("animation time delta").value(this.animationTimeDelta);
        jsonWriter.name("day part").value(this.dayPart);
    }

    public final int getCurrentDayLength() {
        int i = this.speed;
        if (i == 0) {
            return 2000;
        }
        if (i == 1) {
            return 1000;
        }
        if (i != 3) {
            return i != 4 ? 0 : 8000;
        }
        return 500;
    }

    public boolean isInFreezeMode() {
        Tool tool = (Tool) this.city.getComponent(13);
        return (tool instanceof BuildTool) && ((BuildTool) tool).hasHistory();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        long jMillis = TimeUtils.millis();
        this.absoluteMS = jMillis;
        if (this.lastUpdateMS == 0) {
            this.lastUpdateMS = jMillis;
        }
        int iMax = (int) Math.max(jMillis - this.lastUpdateMS, 0L);
        if (iMax > 1000) {
            iMax = 1000;
        }
        int currentDayLength = getCurrentDayLength();
        if (this.speed != 2) {
            float f = this.dayPart + (iMax / currentDayLength);
            this.dayPart = f;
            if (f >= 1.0f) {
                this.dayPart = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                long j = this.absoluteDay + 1;
                this.absoluteDay = j;
                if (j % 30 == 0) {
                    if ((j / 30) % 12 == 0) {
                        this.city.nextYear();
                    }
                    this.city.nextMonth();
                }
                this.city.nextDay();
            }
        }
        int i = this.speed;
        if (i == 0) {
            this.animationTimeDelta = iMax;
        } else if (i == 1) {
            this.animationTimeDelta = iMax * 4;
        } else if (i == 2) {
            this.animationTimeDelta = 0;
        } else if (i == 3) {
            this.animationTimeDelta = iMax * 8;
        } else if (i == 4) {
            this.animationTimeDelta = iMax / 4;
        }
        int i2 = this.animationTime + this.animationTimeDelta;
        this.animationTime = i2;
        if (i2 < 0) {
            this.animationTime = 0;
        }
        this.lastUpdateMS = jMillis;
    }

    public float getAnimationTimeFactor() {
        int i = this.speed;
        if (i == 1) {
            return 4.0f;
        }
        if (i == 2) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (i != 3) {
            return i != 4 ? 1.0f : 0.25f;
        }
        return 8.0f;
    }

    public long getAbsoluteMillis() {
        return this.absoluteMS;
    }

    public int getDay() {
        return ((int) (this.absoluteDay % 30)) + 1;
    }

    public float getDayPart() {
        return this.dayPart;
    }

    public int getMonth() {
        return ((int) ((this.absoluteDay / 30) % 12)) + 1;
    }

    public int getYear() {
        return ((int) ((this.absoluteDay / 30) / 12)) + 1;
    }

    public long getAbsoluteDay() {
        return this.absoluteDay;
    }

    public void setAbsoluteDay(long j) {
        this.absoluteDay = j;
    }

    public void reset() {
        this.absoluteDay = 0L;
        this.animationTime = 0;
        this.dayPart = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        setSpeed(0);
        flushTime();
    }

    public int getAnimationTime() {
        return this.animationTime;
    }

    public int getAnimationTimeDelta() {
        return this.animationTimeDelta;
    }

    public int getSpeed() {
        return this.speed;
    }

    public void setSpeed(int i) {
        this.speed = i;
    }

    public void flushTime() {
        this.lastUpdateMS = TimeUtils.millis();
    }
}
