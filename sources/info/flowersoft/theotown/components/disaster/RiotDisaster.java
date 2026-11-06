package info.flowersoft.theotown.components.disaster;

import com.unity3d.ads.BuildConfig;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.components.soundsource.TileSoundSource;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.util.PackedInt2;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class RiotDisaster extends Disaster {
    public final AnimationDraft DEMONSTRATION_OCCUPATION = (AnimationDraft) Drafts.get("$animationprotester00", AnimationDraft.class);
    public final AnimationDraft RIOT_OCCUPATION = (AnimationDraft) Drafts.get("$animationriot00", AnimationDraft.class);
    public final List<Riot> activeRiots = new ArrayList();
    public int maxPeople;
    public Reason reason;
    public long startDay;
    public long targetDay;

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 1.0f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        Road road;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "start day":
                    this.startDay = jsonReader.nextInt();
                    break;
                case "reason":
                    jsonReader.beginArray();
                    int iNextInt = jsonReader.nextInt();
                    int iNextInt2 = jsonReader.nextInt();
                    String strNextString = jsonReader.nextString();
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    Building building = this.city.getTiles().getBuilding(iNextInt, iNextInt2);
                    Attribute attribute = AttributeFactory.getAttribute(strNextString);
                    if (building != null && attribute != null) {
                        Reason reason = new Reason();
                        this.reason = reason;
                        reason.building = building;
                        this.reason.attribute = attribute;
                        break;
                    } else {
                        break;
                    }
                    break;
                case "riots":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginArray();
                        int iNextInt3 = jsonReader.nextInt();
                        int iNextInt4 = jsonReader.nextInt();
                        int iNextInt5 = jsonReader.nextInt();
                        int iNextInt6 = jsonReader.nextInt();
                        int iNextInt7 = jsonReader.nextInt();
                        jsonReader.nextInt();
                        AnimationDraft animationDraft = (jsonReader.hasNext() && jsonReader.peek() == 6) ? (AnimationDraft) Drafts.ALL.get(jsonReader.nextString()) : null;
                        while (jsonReader.hasNext()) {
                            jsonReader.skipValue();
                        }
                        if (animationDraft != null && (road = this.city.getTiles().getRoad(iNextInt5, iNextInt6, 0)) != null) {
                            Riot riot = new Riot();
                            riot.localStartDay = iNextInt3;
                            riot.localTargetDay = iNextInt4;
                            riot.road = road;
                            riot.spawnCount = iNextInt7;
                            riot.occupation = animationDraft;
                            this.activeRiots.add(riot);
                            road.setOccupation(animationDraft);
                        }
                        jsonReader.endArray();
                    }
                    jsonReader.endArray();
                    break;
                case "target day":
                    this.targetDay = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void prepare() {
        super.prepare();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("start day").value(this.startDay);
        jsonWriter.name("target day").value(this.targetDay);
        if (this.reason != null) {
            jsonWriter.name("reason").beginArray();
            jsonWriter.value(this.reason.building.getX());
            jsonWriter.value(this.reason.building.getY());
            jsonWriter.value(AttributeFactory.getTag(this.reason.attribute));
            jsonWriter.endArray();
        }
        if (this.activeRiots.isEmpty()) {
            return;
        }
        jsonWriter.name("riots");
        jsonWriter.beginArray();
        for (int i = 0; i < this.activeRiots.size(); i++) {
            Riot riot = this.activeRiots.get(i);
            jsonWriter.beginArray();
            jsonWriter.value(riot.localStartDay);
            jsonWriter.value(riot.localTargetDay);
            jsonWriter.value(riot.road.getX());
            jsonWriter.value(riot.road.getY());
            jsonWriter.value(riot.spawnCount);
            jsonWriter.value(-1);
            jsonWriter.value(riot.occupation.id);
            jsonWriter.endArray();
        }
        jsonWriter.endArray();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void update() {
        if (isActive()) {
            updateRiot();
        } else {
            this.reason = null;
        }
    }

    public final void updateRiot() {
        int i;
        Road road;
        Reason reason;
        long absoluteDay = this.date.getAbsoluteDay();
        ArrayList arrayList = new ArrayList();
        int size = this.activeRiots.size();
        int i2 = 0;
        boolean z = absoluteDay >= this.targetDay || !((reason = this.reason) == null || isStillReason(reason));
        int i3 = 0;
        while (i3 < size) {
            Riot riot = this.activeRiots.get(i3);
            int i4 = (int) (absoluteDay - riot.localTargetDay);
            if (riot.road.getOccupation() == null) {
                arrayList.add(riot);
                i = i3;
            } else {
                if (riot.spawnCount <= 0 || z || this.activeRiots.size() >= this.maxPeople) {
                    i = i3;
                } else {
                    int i5 = i2;
                    while (true) {
                        if (i5 >= 4) {
                            i = i3;
                            break;
                        }
                        int iFromIndex = Direction.fromIndex(i5);
                        int x = riot.road.getX() + Direction.differenceX(iFromIndex);
                        int y = riot.road.getY() + Direction.differenceY(iFromIndex);
                        if (!isCorruptable(x, y) || (road = this.city.getTiles().getRoad(x, y, i2)) == null) {
                            i5++;
                            i3 = i3;
                            i2 = 0;
                        } else {
                            AnimationDraft animationDraft = riot.occupation;
                            if (animationDraft == this.DEMONSTRATION_OCCUPATION) {
                                long j = this.startDay;
                                i = i3;
                                if (absoluteDay - j > (this.targetDay - j) / 2) {
                                    animationDraft = this.RIOT_OCCUPATION;
                                }
                            } else {
                                i = i3;
                            }
                            addRiot(road, animationDraft);
                        }
                    }
                    Riot.access$610(riot);
                }
                if (riot.occupation == this.RIOT_OCCUPATION && 0.01f >= Resources.RND.nextFloat()) {
                    burnNearBuilding(riot);
                }
                if (i4 >= 0) {
                    arrayList.add(riot);
                }
            }
            i3 = i + 1;
            i2 = 0;
        }
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            removeRiot((Riot) arrayList.get(i6));
        }
    }

    public final void burnNearBuilding(Riot riot) {
        Building building;
        ArrayList arrayList = new ArrayList(4);
        for (int i = 1; i <= 16; i *= 2) {
            int x = riot.road.getX() + Direction.differenceX(i);
            int y = riot.road.getY() + Direction.differenceY(i);
            if (this.city.isValid(x, y) && (building = this.city.getTiles().getBuilding(x, y)) != null && !building.isLocked()) {
                int level = building.getLevel();
                Reason reason = this.reason;
                if (level > (reason != null ? reason.building.getLevel() : 1) || !building.getBuildingType().isRCIOrDeco()) {
                    arrayList.add(building);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        ((FireDisaster) ((DefaultCatastrophe) this.city.getComponent(6)).getDisaster(FireDisaster.class)).issue((Building) arrayList.get(Resources.RND.nextInt(arrayList.size())));
    }

    public final boolean isCorruptable(int i, int i2) {
        Road road;
        return this.city.isValid(i, i2) && (road = this.city.getTiles().getRoad(i, i2, 0)) != null && road.getOccupation() == null && (road.draft.flags & 8388836) != 0;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isActive() {
        return !this.activeRiots.isEmpty();
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean issue() {
        int[] iArrSampleRoadAroundBuilding;
        Reason reasonFindReason = findReason();
        if (reasonFindReason == null || (iArrSampleRoadAroundBuilding = sampleRoadAroundBuilding(reasonFindReason.building)) == null) {
            return false;
        }
        return issue(iArrSampleRoadAroundBuilding[0], iArrSampleRoadAroundBuilding[1], this.DEMONSTRATION_OCCUPATION, reasonFindReason);
    }

    public final int[] sampleRoadAroundBuilding(Building building) {
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        int x = building.getX();
        int y = building.getY();
        int width = building.getWidth();
        int height = building.getHeight();
        CityModifier cityModifier = new CityModifier(this.city, true);
        for (int i = 0; i < width; i++) {
            int i2 = x + i;
            int i3 = y - 1;
            if (cityModifier.isRoad(i2, i3)) {
                probabilitySelector.insert(Integer.valueOf(PackedInt2.pack(i2, i3)), 1.0f);
            }
            int i4 = y + height;
            if (cityModifier.isRoad(i2, i4)) {
                probabilitySelector.insert(Integer.valueOf(PackedInt2.pack(i2, i4)), 1.0f);
            }
        }
        for (int i5 = 0; i5 < height; i5++) {
            int i6 = x - 1;
            int i7 = y + i5;
            if (cityModifier.isRoad(i6, i7)) {
                probabilitySelector.insert(Integer.valueOf(PackedInt2.pack(i6, i7)), 1.0f);
            }
            int i8 = x + width;
            if (cityModifier.isRoad(i8, i7)) {
                probabilitySelector.insert(Integer.valueOf(PackedInt2.pack(i8, i7)), 1.0f);
            }
        }
        if (!probabilitySelector.hasResult()) {
            return null;
        }
        int iIntValue = ((Integer) probabilitySelector.getResult()).intValue();
        return new int[]{PackedInt2.unpackX(iIntValue), PackedInt2.unpackY(iIntValue)};
    }

    public final Reason findReason() {
        DefaultManagement defaultManagement = (DefaultManagement) this.city.getComponent(3);
        Attribute lowestHappiness = defaultManagement.getLowestHappiness();
        if (lowestHappiness == null) {
            return null;
        }
        Building lowestHappinessBuilding = defaultManagement.getLowestHappinessBuilding();
        float buildingHappiness = getBuildingHappiness(lowestHappinessBuilding, lowestHappiness);
        if (buildingHappiness < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || buildingHappiness >= 0.15f || lowestHappinessBuilding.getLevel() > 1 || lowestHappinessBuilding.getZone().base != Zones.getInstance().RESIDENTIAL0 || lowestHappinessBuilding.getCurrentHabitants() <= 20) {
            return null;
        }
        Reason reason = new Reason();
        reason.attribute = lowestHappiness;
        reason.building = lowestHappinessBuilding;
        return reason;
    }

    public Reason getReason() {
        if (isActive()) {
            return this.reason;
        }
        return null;
    }

    public final boolean isStillReason(Reason reason) {
        Building building = this.city.getTiles().getBuilding(reason.building.getX(), reason.building.getY());
        if (building == reason.building && building != null && !building.isEmpty()) {
            float buildingHappiness = getBuildingHappiness(reason.building, reason.attribute);
            if (buildingHappiness >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && buildingHappiness < 0.25f) {
                return true;
            }
        }
        return false;
    }

    public static float getBuildingHappiness(Building building, Attribute attribute) {
        ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
        if (concreteAttributeContainer != null) {
            return concreteAttributeContainer.getValues()[attribute.getIndex()];
        }
        return -1.0f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean issue(int i, int i2) {
        return issue(i, i2, this.RIOT_OCCUPATION, null);
    }

    public boolean issue(int i, int i2, AnimationDraft animationDraft, Reason reason) {
        if (isCorruptable(i, i2)) {
            Road road = this.city.getTiles().getRoad(i, i2, 0);
            this.maxPeople = reason != null ? reason.building.getOverallHabitants() / 5 : 50;
            if (road != null && road.getOccupation() == null) {
                long absoluteDay = this.date.getAbsoluteDay();
                this.startDay = absoluteDay;
                this.targetDay = absoluteDay + 45 + ((long) Resources.RND.nextInt(60));
                addRiot(road, animationDraft);
                this.reason = reason;
                return true;
            }
        }
        return false;
    }

    public final Riot addRiot(Road road, AnimationDraft animationDraft) {
        long absoluteDay = this.date.getAbsoluteDay();
        Riot riot = new Riot();
        riot.localStartDay = absoluteDay;
        Random random = Resources.RND;
        riot.localTargetDay = absoluteDay + 2 + ((long) random.nextInt(3));
        riot.spawnCount = random.nextInt(3) + 1;
        riot.occupation = animationDraft;
        riot.road = road;
        riot.valid = true;
        road.setOccupation(animationDraft);
        this.activeRiots.add(riot);
        startSound(riot);
        return riot;
    }

    public final void startSound(final Riot riot) {
        ((DefaultSoundManager) this.city.getComponent(15)).playLoop(riot.occupation == this.DEMONSTRATION_OCCUPATION ? Resources.SOUND_DEMO : Resources.SOUND_RIOT, SoundType.GAME, new TileSoundSource(this.city, riot.road.getX(), riot.road.getY()) { // from class: info.flowersoft.theotown.components.disaster.RiotDisaster.1
            @Override // info.flowersoft.theotown.components.soundsource.TileSoundSource, info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return riot.valid;
            }
        });
    }

    public final void removeRiot(Riot riot) {
        riot.road.setOccupation(null);
        this.activeRiots.remove(riot);
        riot.valid = false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized int[] getLocation() {
        Reason reason = this.reason;
        if (reason == null) {
            if (this.activeRiots.isEmpty()) {
                return null;
            }
            return new int[]{this.activeRiots.get(0).road.getX(), this.activeRiots.get(0).road.getY()};
        }
        Building building = reason.building;
        return new int[]{building.getX() + (building.getWidth() / 2), building.getY() + (building.getHeight() / 2)};
    }

    public synchronized AnimationDraft getOccupation() {
        if (!isActive()) {
            return null;
        }
        return this.activeRiots.get(0).occupation;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        if (this.city.isUber()) {
            return false;
        }
        JSONObject jSONObjectOptJSONObject = Resources.getSpecificConfig("disasters").optJSONObject("riot");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        if (this.city.getGameMode() == GameMode.SANDBOX) {
            return jSONObjectOptJSONObject.optBoolean("sandbox", true);
        }
        if (this.city.getGameMode() == GameMode.FREE) {
            return jSONObjectOptJSONObject.optBoolean("free", true);
        }
        return jSONObjectOptJSONObject.optBoolean(BuildConfig.FLAVOR, true);
    }

    public static final class Riot {
        public long localStartDay;
        public long localTargetDay;
        public AnimationDraft occupation;
        public Road road;
        public int spawnCount;
        public boolean valid;

        public Riot() {
        }

        public static /* synthetic */ int access$610(Riot riot) {
            int i = riot.spawnCount;
            riot.spawnCount = i - 1;
            return i;
        }
    }

    public static final class Reason {
        public Attribute attribute;
        public Building building;

        public Attribute getAttribute() {
            return this.attribute;
        }

        public Building getBuilding() {
            return this.building;
        }
    }
}
