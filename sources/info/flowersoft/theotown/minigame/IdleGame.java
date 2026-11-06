package info.flowersoft.theotown.minigame;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultIdleGame;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.Saveable;
import info.flowersoft.theotown.util.TimeUnlockable;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IdleGame implements Saveable {
    public static JSONObject idleConfig = Resources.getSpecificConfig("idle game");
    public boolean active;
    public Currency currency;
    public int id;
    public int rank;
    public TimeUnlockable stageLock;
    public IntList levels = new IntList();
    public List<Spec> specs = new ArrayList();
    public List<Property> properties = new ArrayList();

    public interface Property {
        int getIcon();

        String getName();

        boolean isNeeded(int i);

        boolean isReady(int i);

        void onClick(int i, Setter<Boolean> setter);
    }

    public interface Spec {
        String getName();

        String getUnit();

        double getValue(int i, int i2, int i3);

        boolean isInt();
    }

    public abstract void drawStageIcon(Engine engine, int i, int i2, int i3, int i4, int i5);

    public double income(int i, int i2) {
        return 1.0d;
    }

    public int maxStageCount() {
        return 20;
    }

    public double priceOfUpgrade(int i, int i2) {
        return 0.0d;
    }

    public abstract void setBuilding(Building building);

    public boolean isActive() {
        return this.active && DefaultIdleGame.isActive();
    }

    public void setActive(boolean z) {
        this.active = z;
    }

    public IdleGame(Currency currency) {
        this.currency = currency;
        updateLock();
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        this.stageLock = null;
        this.active = true;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "active":
                    this.active = jsonReader.nextBoolean();
                    break;
                case "levels":
                    this.levels.clear();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        this.levels.add(jsonReader.nextInt());
                    }
                    jsonReader.endArray();
                    break;
                case "id":
                    this.id = jsonReader.nextInt();
                    break;
                case "lock":
                    jsonReader.beginObject();
                    this.stageLock = new TimeUnlockable(jsonReader);
                    jsonReader.endObject();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("levels").beginArray();
        for (int i = 0; i < this.levels.size(); i++) {
            jsonWriter.value(this.levels.get(i));
        }
        jsonWriter.endArray();
        jsonWriter.name(C3670j8.x).value(this.id);
        if (this.stageLock != null) {
            jsonWriter.name("lock").beginObject();
            this.stageLock.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.name("active").value(this.active);
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public int getRank() {
        return this.rank;
    }

    public void setRank(int i) {
        this.rank = i;
    }

    public Currency getCurrency() {
        return this.currency;
    }

    public void addSpec(Spec spec) {
        this.specs.add(spec);
    }

    public void addProperty(Property property) {
        this.properties.add(property);
    }

    public int countSpecs() {
        return this.specs.size();
    }

    public Spec getSpec(int i) {
        return this.specs.get(i);
    }

    public int countProperties() {
        return this.properties.size();
    }

    public Property getProperty(int i) {
        return this.properties.get(i);
    }

    public void upgrade(int i, int i2) {
        IntList intList = this.levels;
        intList.set(i, intList.get(i) + i2);
    }

    public void addStage() {
        this.levels.add(0);
        updateLock();
    }

    public final void updateLock() {
        if (getStageWaitingTimeMinutes(countStages()) > 0 && !TheoTown.PREMIUM) {
            TimeUnlockable timeUnlockable = new TimeUnlockable(r0 * 60000);
            this.stageLock = timeUnlockable;
            timeUnlockable.pause();
            return;
        }
        this.stageLock = null;
    }

    public int getLevel(int i) {
        return this.levels.get(i);
    }

    public void getMajorLevelRange(int i, int i2, int[] iArr) {
        int i3 = i2 + 1;
        if (i3 < 5) {
            iArr[0] = 1;
            iArr[1] = 4;
        } else if (i3 < 10) {
            iArr[0] = 5;
            iArr[1] = 9;
        } else if (i3 < 25) {
            iArr[0] = 10;
            iArr[1] = 24;
        } else if (i3 < 50) {
            iArr[0] = 25;
            iArr[1] = 49;
        } else if (i3 < 100) {
            iArr[0] = 50;
            iArr[1] = 99;
        } else {
            int i4 = (i3 / 100) * 100;
            iArr[0] = i4;
            iArr[1] = i4 + 99;
        }
        iArr[0] = iArr[0] - 1;
        iArr[1] = iArr[1] - 1;
    }

    public int getMajorLevel(int i, int i2) {
        int i3 = i2 + 1;
        if (i3 < 5) {
            return 0;
        }
        if (i3 < 10) {
            return 1;
        }
        if (i3 < 25) {
            return 2;
        }
        if (i3 < 50) {
            return 3;
        }
        if (i3 < 100) {
            return 4;
        }
        return (i3 / 100) + 4;
    }

    public int getStageWaitingTimeMinutes(int i) {
        if (i % 2 != 0 || i <= 3) {
            return 0;
        }
        return idleConfig.optInt("min per stage", 90) * i;
    }

    public TimeUnlockable getStageLock() {
        if (TheoTown.PREMIUM) {
            return null;
        }
        return this.stageLock;
    }

    public int countStages() {
        return this.levels.size();
    }

    public double priceOfStage(int i) {
        return (long) (Math.pow(3.0d, i) * 1.0d);
    }

    public String getName() {
        return "MY IDLE GAME";
    }

    public int getIcon() {
        return Resources.ICON_RANDOM;
    }

    public String getStageTitle(int i) {
        return "LEVEL " + (getLevel(i) + 1);
    }

    public String getStageSubTitle(int i) {
        return Localizer.localizeBigNumber(income(i, getLevel(i)), true) + this.currency.getUnit();
    }

    public String getUnlockTitle(int i) {
        return "UNLOCK";
    }

    public String getUnlockSubTitle(int i) {
        return "ADD YOUR " + (i + 1) + "TH LANE";
    }

    public String getUpgradeTitle(int i) {
        return "UPGRADE";
    }

    public String getIncomeTitle() {
        return "INCOME";
    }

    public String getUnlockImmediatelyTitle() {
        return "UNLOCK IMMEDIATELY";
    }

    public String getUnlockImmediatelyText() {
        return "ARE YOU SURE?!";
    }

    public boolean propertiesFulfilled(int i) {
        for (int i2 = 0; i2 < this.properties.size(); i2++) {
            Property property = this.properties.get(i2);
            if (property.isNeeded(i) && !property.isReady(i)) {
                return false;
            }
        }
        return true;
    }

    public double getOverallIncome() {
        double dIncome = 0.0d;
        for (int i = 0; i < this.levels.size(); i++) {
            if (propertiesFulfilled(i)) {
                dIncome += income(i, this.levels.get(i));
            }
        }
        return dIncome;
    }
}
