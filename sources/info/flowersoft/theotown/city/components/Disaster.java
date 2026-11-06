package info.flowersoft.theotown.city.components;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Disaster {
    public City city;
    public DefaultDate date;
    public CityModifier modifier;
    public boolean silent = false;

    public void draw(Engine engine) {
    }

    public abstract float getAutoProbability();

    public abstract int[] getLocation();

    public abstract boolean isActive();

    public abstract boolean isAutoEnabled();

    public abstract boolean issue(int i, int i2);

    public abstract void load(JsonReader jsonReader) throws IOException;

    public void prepare() {
    }

    public abstract void save(JsonWriter jsonWriter) throws IOException;

    public abstract void update();

    public boolean saveMe() {
        return isActive();
    }

    public void bind(City city) {
        this.city = city;
        this.date = (DefaultDate) city.getComponent(1);
        this.modifier = new CityModifier(city, true);
    }

    public boolean issue() {
        Random random = Resources.RND;
        return issue(random.nextInt(this.city.getWidth()), random.nextInt(this.city.getHeight()));
    }

    public final boolean isSilent() {
        return this.silent;
    }

    public void setSilent(boolean z) {
        this.silent = z;
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.city.components.Disaster$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$city$GameMode;

        static {
            int[] iArr = new int[GameMode.values().length];
            $SwitchMap$info$flowersoft$theotown$city$GameMode = iArr;
            try {
                iArr[GameMode.HARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.MIDDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.EASY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public float getGameModeDependentValue(JSONObject jSONObject, float f) {
        double dOptDouble;
        int i = AnonymousClass1.$SwitchMap$info$flowersoft$theotown$city$GameMode[this.city.getGameMode().ordinal()];
        if (i == 1) {
            dOptDouble = jSONObject.optDouble("hard", f);
        } else if (i == 2) {
            dOptDouble = jSONObject.optDouble("medium", f);
        } else {
            dOptDouble = jSONObject.optDouble("easy", f);
        }
        return (float) dOptDouble;
    }
}
