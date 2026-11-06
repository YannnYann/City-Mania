package info.flowersoft.theotown.components.disaster;

import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.BuildingSampler;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.CrimeType;
import info.flowersoft.theotown.city.objects.EmptyBuildingCause;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.components.management.attribute.CrimeAttribute;
import info.flowersoft.theotown.components.management.attribute.PoliceHappiness;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class CrimeDisaster extends Disaster {
    public final JSONObject CRIME_PROBABILITY_FACTOR = Resources.getSpecificConfig("game mode crime probability");
    public final int crimeIndex = AttributeFactory.getIndex((Class<? extends Attribute>) CrimeAttribute.class);
    public final int policeIndex = AttributeFactory.getIndex((Class<? extends Attribute>) PoliceHappiness.class);
    public final Map<Building, CrimeBuilding> crimes = new HashMap();

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 1.0f;
    }

    public CrimeDisaster() {
        setSilent(true);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        Building building;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("buildings")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    long jNextLong = -1;
                    CrimeType crimeTypeResolveId = null;
                    int iNextInt = -1;
                    int iNextInt2 = -1;
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.getClass();
                        switch (strNextName2) {
                            case "x":
                                iNextInt = jsonReader.nextInt();
                                break;
                            case "y":
                                iNextInt2 = jsonReader.nextInt();
                                break;
                            case "day":
                                jNextLong = jsonReader.nextLong();
                                break;
                            case "type":
                                crimeTypeResolveId = CrimeType.resolveId(jsonReader.nextInt());
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    if (this.city.isValid(iNextInt, iNextInt2) && jNextLong >= 0 && crimeTypeResolveId != null && (building = this.city.getTiles().getBuilding(iNextInt, iNextInt2)) != null) {
                        registerCrime(building, jNextLong, crimeTypeResolveId);
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void save(JsonWriter jsonWriter) throws IOException {
        try {
            jsonWriter.name("buildings");
            jsonWriter.beginArray();
            for (CrimeBuilding crimeBuilding : this.crimes.values()) {
                jsonWriter.beginObject();
                jsonWriter.name("x").value(crimeBuilding.building.getX());
                jsonWriter.name("y").value(crimeBuilding.building.getY());
                jsonWriter.name("day").value(crimeBuilding.startDay);
                jsonWriter.name("type").value(crimeBuilding.type.getId());
                jsonWriter.endObject();
            }
            jsonWriter.endArray();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final CrimeBuilding registerCrime(Building building, long j, CrimeType crimeType) {
        CrimeBuilding crimeBuilding = new CrimeBuilding();
        crimeBuilding.building = building;
        crimeBuilding.startDay = j;
        crimeBuilding.type = crimeType;
        this.crimes.put(building, crimeBuilding);
        return crimeBuilding;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void bind(City city) {
        super.bind(city);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void prepare() {
        super.prepare();
        for (CrimeBuilding crimeBuilding : this.crimes.values()) {
            crimeBuilding.building.setCrime(crimeBuilding.type);
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void update() {
        long absoluteDay = this.date.getAbsoluteDay();
        Iterator<CrimeBuilding> it = this.crimes.values().iterator();
        while (it.hasNext()) {
            CrimeBuilding next = it.next();
            Building building = next.building;
            if (absoluteDay - next.startDay > Resources.RND.nextInt(30) + 15) {
                it.remove();
                building.setCrime(null);
                crimeBuildingDown(building, next.type);
            }
        }
    }

    public final void crimeBuildingDown(Building building, CrimeType crimeType) {
        if (crimeType == CrimeType.BURGLARY || crimeType == CrimeType.MURDER) {
            building.setEmpty(true, EmptyBuildingCause.forCrime(crimeType));
        }
        Iterator<Building> it = new BuildingSampler(this.city, 20, building.getX() + (building.getWidth() / 2), building.getY() + (building.getHeight() / 2)).sample(AdSize.WIDE_SKYSCRAPER_WIDTH).iterator();
        while (it.hasNext()) {
            influenceBuilding(it.next());
        }
    }

    public final void influenceBuilding(Building building) {
        ConcreteAttributeContainer concreteAttributeContainer;
        if (building == null || (concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer()) == null || !building.getBuildingType().isRCIOrDeco() || !building.isWorking()) {
            return;
        }
        concreteAttributeContainer.getValues()[this.policeIndex] = concreteAttributeContainer.getValues()[this.policeIndex] * ((Resources.RND.nextFloat() * 0.65f) + 0.35f);
    }

    public synchronized void removeCrime(Building building) {
        building.setCrime(null);
        this.crimes.remove(building);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean isActive() {
        return !this.crimes.isEmpty();
    }

    public synchronized CrimeType getType() {
        if (getCrimeBuilding() != null) {
            return this.crimes.get(getCrimeBuilding()).type;
        }
        return CrimeType.GRAFFITI;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean issue() {
        try {
            boolean z = false;
            if (((People) this.city.getComponent(9)).getPeople() < 1100) {
                return false;
            }
            ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
            float f = 1.0f;
            for (Building building : new SafeListAccessor(this.city.getBuildings().getRciBuildings())) {
                float fMax = Math.max(getCrimeProbability(building), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                if (!building.getDraft().needsRoad) {
                    fMax *= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                }
                f *= 1.0f - fMax;
                probabilitySelector.insert(building, fMax);
            }
            float gameModeDependentValue = (1.0f - f) * getGameModeDependentValue(this.CRIME_PROBABILITY_FACTOR, 1.0f);
            if (probabilitySelector.hasResult() && Resources.RND.nextFloat() < gameModeDependentValue) {
                if (issue((Building) probabilitySelector.getResult(), selectCrime((Building) probabilitySelector.getResult()))) {
                    z = true;
                }
            }
            return z;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final CrimeType selectCrime(Building building) {
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        probabilitySelector.insert(CrimeType.GRAFFITI, 0.8f);
        probabilitySelector.insert(CrimeType.BURGLARY, 0.15f);
        probabilitySelector.insert(CrimeType.MURDER, 0.05f);
        return (CrimeType) probabilitySelector.getResult();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean issue(int i, int i2) {
        boolean z = false;
        if (!this.city.isValid(i, i2)) {
            return false;
        }
        Building building = this.city.getTiles().getBuilding(i, i2);
        if (building != null && getCrimeProbability(building) > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            if (issue(building, selectCrime(building))) {
                z = true;
            }
        }
        return z;
    }

    public synchronized boolean issue(Building building, CrimeType crimeType) {
        if (getCrimeProbability(building) <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return false;
        }
        registerCrime(building, ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay(), crimeType);
        building.setCrime(crimeType);
        return true;
    }

    public synchronized List<Building> getCrimeBuildings() {
        return new ArrayList(this.crimes.keySet());
    }

    public synchronized Building getCrimeBuilding() {
        return this.crimes.isEmpty() ? null : this.crimes.keySet().iterator().next();
    }

    public final float getCrimeProbability(Building building) {
        ConcreteAttributeContainer concreteAttributeContainer;
        return (building.isEmpty() || (concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer()) == null || !building.getDraft().destroyable) ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : concreteAttributeContainer.getValues()[this.crimeIndex];
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized int[] getLocation() {
        if (this.crimes.isEmpty()) {
            return null;
        }
        Building next = this.crimes.keySet().iterator().next();
        return new int[]{next.getX(), next.getY()};
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return !this.city.isUber();
    }

    public static class CrimeBuilding {
        public Building building;
        public long startDay;
        public CrimeType type;

        public CrimeBuilding() {
        }
    }
}
