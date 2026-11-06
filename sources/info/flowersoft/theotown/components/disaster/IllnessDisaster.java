package info.flowersoft.theotown.components.disaster;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.EmptyBuildingCause;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultPeople;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.components.management.attribute.HealthHappiness;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.Saveable;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class IllnessDisaster extends Disaster {
    public DefaultDate date;
    public DefaultPeople people;
    public long startDay;
    public final JSONObject ILLNESS_PROBABILITY_FACTOR = Resources.getSpecificConfig("game mode illness probability");
    public final int healthIndex = AttributeFactory.getIndex((Class<? extends Attribute>) HealthHappiness.class);
    public final List<IllBuilding> illBuildings = new ArrayList();

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 1.0f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void bind(City city) {
        super.bind(city);
        this.date = (DefaultDate) city.getComponent(1);
        this.people = (DefaultPeople) city.getComponent(9);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("start day")) {
                this.startDay = jsonReader.nextLong();
            } else if (strNextName.equals("ill buildings")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    IllBuilding illBuilding = new IllBuilding();
                    illBuilding.load(jsonReader);
                    jsonReader.endObject();
                    if (illBuilding.building != null) {
                        this.illBuildings.add(illBuilding);
                        illBuilding.building.setIll(true);
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("ill buildings");
        jsonWriter.beginArray();
        for (int i = 0; i < this.illBuildings.size(); i++) {
            jsonWriter.beginObject();
            this.illBuildings.get(i).save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("start day").value(this.startDay);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void prepare() {
        super.prepare();
    }

    public final synchronized boolean addBuilding(Building building) {
        IllBuilding illBuilding = new IllBuilding();
        illBuilding.building = building;
        long absoluteDay = this.date.getAbsoluteDay();
        illBuilding.startDay = absoluteDay;
        illBuilding.targetDay = absoluteDay + 30 + ((long) Resources.RND.nextInt(60));
        int iCountPeopleInBuilding = (int) this.people.countPeopleInBuilding(building);
        illBuilding.population = iCountPeopleInBuilding;
        if (iCountPeopleInBuilding <= 0) {
            return false;
        }
        building.setIll(true);
        building.setLastIllness(this.date.getAbsoluteDay());
        this.illBuildings.add(illBuilding);
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void update() {
        int i;
        try {
            if (this.illBuildings.isEmpty()) {
                return;
            }
            Tiles tiles = this.city.getTiles();
            int i2 = 0;
            while (i2 < this.illBuildings.size()) {
                IllBuilding illBuilding = this.illBuildings.get(i2);
                Building building = illBuilding.building;
                boolean z = tiles.getBuilding(building.getX(), building.getY()) == building && building.isIll();
                if (!z || this.date.getAbsoluteDay() >= illBuilding.targetDay || (i = illBuilding.population) == 0) {
                    building.setIll(false);
                    if (z) {
                        if (Resources.RND.nextFloat() < 0.5f) {
                            this.people.addPeople(building.getLevel(), -illBuilding.population);
                            illBuilding.population = 0;
                        }
                        if (illBuilding.population == 0) {
                            building.setEmpty(true, EmptyBuildingCause.forIllness());
                        }
                    }
                    this.illBuildings.remove(i2);
                    i2--;
                } else {
                    if (i > 0 && Resources.RND.nextFloat() < 0.5f) {
                        illBuilding.population--;
                        this.people.addPeople(building.getLevel(), -1);
                    }
                    if (this.date.getAbsoluteDay() >= illBuilding.startDay + 7) {
                        infectNeighbors(building);
                    }
                }
                i2++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized Building getBuilding() {
        if (this.illBuildings.isEmpty()) {
            return null;
        }
        return this.illBuildings.get(0).building;
    }

    public final void infectNeighbors(Building building) {
        if (this.date.getAbsoluteDay() - this.startDay > 60) {
            return;
        }
        for (int x = building.getX(); x < building.getX() + building.getWidth(); x++) {
            infectBuilding(x, building.getY() - 1);
            infectBuilding(x, building.getY() + building.getHeight());
            infectBuilding(x, building.getY() - 2);
            infectBuilding(x, building.getY() + building.getHeight() + 1);
        }
        for (int y = building.getY(); y < building.getY() + building.getHeight(); y++) {
            infectBuilding(building.getX() - 1, y);
            infectBuilding(building.getX() + building.getWidth(), y);
            infectBuilding(building.getX() - 2, y);
            infectBuilding(building.getX() + building.getWidth() + 1, y);
        }
    }

    public synchronized boolean infectBuilding(int i, int i2) {
        Building building;
        try {
            if (this.city.isValid(i, i2) && (building = this.city.getTiles().getBuilding(i, i2)) != null && building.getBuildingType() == BuildingType.RESIDENTIAL && building.isWorking() && !building.isIll()) {
                long lastIllness = building.getLastIllness();
                ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
                float f = concreteAttributeContainer != null ? concreteAttributeContainer.getValues()[this.healthIndex] : 1.0f;
                if (360 + lastIllness < this.date.getAbsoluteDay()) {
                    if (Resources.RND.nextFloat() < (1.0f - (f * 0.9f)) * 0.3f * (1.0f - (1.0f / (((this.date.getAbsoluteDay() - lastIllness) / 10.0f) + 1.0f)))) {
                        return issueChecked(building);
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean isActive() {
        return !this.illBuildings.isEmpty();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean issue() {
        if (this.people.getPeople() < 500) {
            return false;
        }
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        int index = AttributeFactory.getIndex((Class<? extends Attribute>) HealthHappiness.class);
        float f = 1.0f;
        for (Building building : new SafeListAccessor(this.city.getBuildings().getRciBuildings())) {
            ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
            float fMax = Math.max(1.0f - ((concreteAttributeContainer != null ? concreteAttributeContainer.getValues()[index] : 1.0f) * 3.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            if (building.getDraft().needsRoad && building.getBuildingType() == BuildingType.RESIDENTIAL && building.isWorking()) {
                f *= 1.0f - fMax;
                probabilitySelector.insert(building, fMax);
            }
        }
        float gameModeDependentValue = (1.0f - f) * getGameModeDependentValue(this.ILLNESS_PROBABILITY_FACTOR, 1.0f);
        if (!probabilitySelector.hasResult() || Resources.RND.nextFloat() >= gameModeDependentValue || !infectBuilding(((Building) probabilitySelector.getResult()).getX(), ((Building) probabilitySelector.getResult()).getY())) {
            return false;
        }
        this.startDay = this.date.getAbsoluteDay();
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean issue(int i, int i2) {
        Building building;
        if (!this.city.isValid(i, i2) || (building = this.city.getTiles().getBuilding(i, i2)) == null) {
            return false;
        }
        return issue(building);
    }

    public synchronized boolean issue(Building building) {
        if (!issueChecked(building)) {
            return false;
        }
        this.startDay = this.date.getAbsoluteDay();
        return true;
    }

    public final synchronized boolean issueChecked(Building building) {
        if (building.isIll() || !building.getBuildingType().isRCIOrDeco() || building.getBuildingType() != BuildingType.RESIDENTIAL || building.isEmpty() || !building.isWorking()) {
            return false;
        }
        return addBuilding(building);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized int[] getLocation() {
        if (this.illBuildings.isEmpty()) {
            return null;
        }
        Building building = this.illBuildings.get(0).building;
        return new int[]{building.getX(), building.getY()};
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return Settings.disasterIllness && !this.city.isUber();
    }

    public class IllBuilding implements Saveable {
        public Building building;
        public int population;
        public long startDay;
        public long targetDay;

        public IllBuilding() {
        }

        @Override // info.flowersoft.theotown.util.Saveable
        public void load(JsonReader jsonReader) throws IOException {
            int iNextInt = -1;
            int iNextInt2 = -1;
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.getClass();
                switch (strNextName) {
                    case "start day":
                        this.startDay = jsonReader.nextLong();
                        break;
                    case "x":
                        iNextInt = jsonReader.nextInt();
                        break;
                    case "y":
                        iNextInt2 = jsonReader.nextInt();
                        break;
                    case "pop":
                        this.population = jsonReader.nextInt();
                        break;
                    case "target day":
                        this.targetDay = jsonReader.nextLong();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            if (iNextInt < 0 || iNextInt2 < 0) {
                return;
            }
            Building building = IllnessDisaster.this.city.getTiles().getBuilding(iNextInt, iNextInt2);
            this.building = building;
            if (building != null) {
                if (building.getX() == iNextInt && this.building.getY() == iNextInt2 && this.building.getBuildingType() == BuildingType.RESIDENTIAL) {
                    return;
                }
                this.building = null;
            }
        }

        @Override // info.flowersoft.theotown.util.Saveable
        public void save(JsonWriter jsonWriter) throws IOException {
            jsonWriter.name("x").value(this.building.getX());
            jsonWriter.name("y").value(this.building.getY());
            jsonWriter.name("start day").value(this.startDay);
            jsonWriter.name("target day").value(this.targetDay);
            jsonWriter.name("pop").value(this.population);
        }
    }
}
