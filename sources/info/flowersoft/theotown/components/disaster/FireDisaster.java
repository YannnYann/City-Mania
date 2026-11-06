package info.flowersoft.theotown.components.disaster;

import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.BuildingSampler;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Catastrophe;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.components.management.attribute.FireBrigadeHappiness;
import info.flowersoft.theotown.components.management.attribute.FireDangerAttribute;
import info.flowersoft.theotown.components.soundsource.BuildingSoundSource;
import info.flowersoft.theotown.components.soundsource.TileSoundSource;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.util.PackedInt2;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class FireDisaster extends Disaster {
    public long lastFireDay;
    public long startFireDay;
    public final JSONObject FIRE_PROBABILITY_FACTOR = Resources.getSpecificConfig("game mode fire probability");
    public boolean isAutoIssued = true;
    public final IntList neighborPositions = new IntList();
    public final Map<Building, BurningBuilding> burningBuildings = new HashMap();
    public final Map<Tree, BurningTree> burningTrees = new HashMap();
    public final int fireDangerIndex = AttributeFactory.getIndex((Class<? extends Attribute>) FireDangerAttribute.class);

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 1.0f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "start day":
                    this.startFireDay = jsonReader.nextLong();
                    break;
                case "buildings":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        int iNextInt = 0;
                        int iNextInt2 = 0;
                        int iSampleBuildingFireDuration = 0;
                        long jNextLong = 0;
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
                                case "dur":
                                    iSampleBuildingFireDuration = jsonReader.nextInt();
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        Building building = this.city.getTiles().getBuilding(iNextInt, iNextInt2);
                        if (building != null) {
                            if (iSampleBuildingFireDuration == 0) {
                                iSampleBuildingFireDuration = sampleBuildingFireDuration(building);
                            }
                            this.burningBuildings.put(building, new BurningBuilding(jNextLong, building, iSampleBuildingFireDuration));
                        }
                    }
                    jsonReader.endArray();
                    break;
                case "auto":
                    this.isAutoIssued = jsonReader.nextBoolean();
                    break;
                case "trees":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        int iNextInt3 = 0;
                        int iNextInt4 = 0;
                        int iSampleTreeFireDuration = 0;
                        long jNextLong2 = 0;
                        while (jsonReader.hasNext()) {
                            String strNextName3 = jsonReader.nextName();
                            strNextName3.getClass();
                            switch (strNextName3) {
                                case "x":
                                    iNextInt3 = jsonReader.nextInt();
                                    break;
                                case "y":
                                    iNextInt4 = jsonReader.nextInt();
                                    break;
                                case "day":
                                    jNextLong2 = jsonReader.nextLong();
                                    break;
                                case "dur":
                                    iSampleTreeFireDuration = jsonReader.nextInt();
                                    break;
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        Tree tree = this.city.getTiles().getTree(iNextInt3, iNextInt4);
                        if (tree != null) {
                            if (iSampleTreeFireDuration == 0) {
                                iSampleTreeFireDuration = sampleTreeFireDuration(tree);
                            }
                            this.burningTrees.put(tree, new BurningTree(jNextLong2, tree, iSampleTreeFireDuration));
                        }
                    }
                    jsonReader.endArray();
                    break;
                case "last fire":
                    this.lastFireDay = jsonReader.nextLong();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("buildings").beginArray();
        for (BurningBuilding burningBuilding : this.burningBuildings.values()) {
            Building building = burningBuilding.building;
            jsonWriter.beginObject();
            jsonWriter.name("x").value(building.getX());
            jsonWriter.name("y").value(building.getY());
            jsonWriter.name("day").value(burningBuilding.startDay);
            jsonWriter.name("dur").value(burningBuilding.durationDays);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("trees").beginArray();
        for (BurningTree burningTree : this.burningTrees.values()) {
            Tree tree = burningTree.tree;
            jsonWriter.beginObject();
            jsonWriter.name("x").value(tree.getX());
            jsonWriter.name("y").value(tree.getY());
            jsonWriter.name("day").value(burningTree.startDay);
            jsonWriter.name("dur").value(burningTree.durationDays);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("last fire").value(this.lastFireDay);
        jsonWriter.name("start day").value(this.startFireDay);
        jsonWriter.name("auto").value(this.isAutoIssued);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void bind(City city) {
        super.bind(city);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void prepare() {
        super.prepare();
        for (Building building : this.city.getBuildings()) {
            if (this.burningBuildings.containsKey(building)) {
                building.setBurning(true);
                startSound(building);
            }
        }
        if (this.burningTrees.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.city.getHeight(); i++) {
            for (int i2 = 0; i2 < this.city.getWidth(); i2++) {
                Tree tree = this.city.getTiles().getTree(i2, i);
                if (tree != null && this.burningTrees.containsKey(tree)) {
                    tree.setBurning(true);
                    startSound(tree);
                }
            }
        }
    }

    public final void startSound(Building building) {
        ((DefaultSoundManager) this.city.getComponent(15)).playLoop(Resources.SOUND_FIRE, SoundType.GAME, new BuildingSoundSource(this.city, building) { // from class: info.flowersoft.theotown.components.disaster.FireDisaster.1
            @Override // info.flowersoft.theotown.components.soundsource.BuildingSoundSource, info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return this.building.isBurning();
            }
        });
    }

    public final void startSound(final Tree tree) {
        ((DefaultSoundManager) this.city.getComponent(15)).playLoop(Resources.SOUND_FIRE, SoundType.GAME, new TileSoundSource(this.city, tree.getX(), tree.getY()) { // from class: info.flowersoft.theotown.components.disaster.FireDisaster.2
            @Override // info.flowersoft.theotown.components.soundsource.TileSoundSource, info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return tree.isBurning();
            }
        });
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized void update() {
        try {
            Tiles tiles = this.city.getTiles();
            long absoluteDay = this.date.getAbsoluteDay();
            this.neighborPositions.clear();
            if (this.burningBuildings.isEmpty() && this.burningTrees.isEmpty()) {
                this.startFireDay = absoluteDay;
            }
            Iterator<BurningBuilding> it = this.burningBuildings.values().iterator();
            while (it.hasNext()) {
                this.lastFireDay = absoluteDay;
                BurningBuilding next = it.next();
                int i = (int) (absoluteDay - next.startDay);
                Building building = next.building;
                for (int i2 = 0; i2 < building.getWidth(); i2++) {
                    this.neighborPositions.add(PackedInt2.pack(building.getX() + i2, building.getY() - 1));
                    this.neighborPositions.add(PackedInt2.pack(building.getX() + i2, building.getY() + building.getHeight()));
                }
                for (int i3 = 0; i3 < building.getHeight(); i3++) {
                    this.neighborPositions.add(PackedInt2.pack(building.getX() - 1, building.getY() + i3));
                    this.neighborPositions.add(PackedInt2.pack(building.getX() + building.getWidth(), building.getY() + i3));
                }
                if (tiles.getBuilding(building.getX(), building.getY()) != building) {
                    building.setBurning(false);
                    it.remove();
                } else if (i > next.durationDays) {
                    building.setBurning(false);
                    it.remove();
                    burnBuildingDown(building);
                }
            }
            Iterator<BurningTree> it2 = this.burningTrees.values().iterator();
            while (it2.hasNext()) {
                this.lastFireDay = absoluteDay;
                BurningTree next2 = it2.next();
                int i4 = (int) (absoluteDay - next2.startDay);
                Tree tree = next2.tree;
                this.neighborPositions.add(PackedInt2.pack(tree.getX() + 1, tree.getY()));
                this.neighborPositions.add(PackedInt2.pack(tree.getX(), tree.getY() + 1));
                this.neighborPositions.add(PackedInt2.pack(tree.getX() - 1, tree.getY()));
                this.neighborPositions.add(PackedInt2.pack(tree.getX(), tree.getY() - 1));
                if (tiles.getTree(tree.getX(), tree.getY()) != tree) {
                    tree.setBurning(false);
                    it2.remove();
                } else if (i4 > next2.durationDays) {
                    tree.setBurning(false);
                    it2.remove();
                    burnTreeDown(tree);
                }
            }
            spreadFire(this.neighborPositions);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void spreadFire(IntList intList) {
        if (this.lastFireDay - this.startFireDay <= 30 || !this.isAutoIssued) {
            Tiles tiles = this.city.getTiles();
            float rain = ((DefaultWeather) this.city.getComponent(12)).getRain();
            for (int i = 0; i < intList.size(); i++) {
                int i2 = intList.get(i);
                int iUnpackX = PackedInt2.unpackX(i2);
                int iUnpackY = PackedInt2.unpackY(i2);
                if (this.city.isValid(iUnpackX, iUnpackY)) {
                    Building building = tiles.getBuilding(iUnpackX, iUnpackY);
                    Tree tree = tiles.getTree(iUnpackX, iUnpackY);
                    if (building != null && !building.isLocked() && isBurnable(building)) {
                        if (Resources.RND.nextFloat() < ((getBurningProbability(building) * 50.0f) + 0.01f) * (1.0f - (rain * 0.8f))) {
                            issue(building);
                        }
                    }
                    if (isBurnable(tree)) {
                        if (Resources.RND.nextFloat() < (1.0f - (0.8f * rain)) * 0.02f) {
                            issue(tree);
                        }
                    }
                }
            }
        }
    }

    public final void burnTreeDown(Tree tree) {
        if (this.city.getTiles().getTree(tree.getX(), tree.getY()) != tree) {
            return;
        }
        synchronized (this.city) {
            this.modifier.destroyTree(tree, false, null);
        }
        Iterator<Building> it = new BuildingSampler(this.city, 20, tree.getX(), tree.getY()).sample(AdSize.WIDE_SKYSCRAPER_WIDTH).iterator();
        while (it.hasNext()) {
            influenceOfBurningDown(it.next());
        }
        ((DefaultSoundManager) this.city.getComponent(15)).playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new TileSoundSource(this.city, tree.getX(), tree.getY()));
    }

    public final void burnBuildingDown(Building building) {
        if (this.city.getTiles().getBuilding(building.getX(), building.getY()) != building) {
            return;
        }
        boolean z = building.getDraft().explodes;
        boolean z2 = building.getDraft().nuclear;
        synchronized (this.city) {
            this.modifier.destroyBuilding(building, z2, null);
        }
        Iterator<Building> it = new BuildingSampler(this.city, 20, building.getX() + (building.getWidth() / 2), building.getY() + (building.getHeight() / 2)).sample(AdSize.WIDE_SKYSCRAPER_WIDTH).iterator();
        while (it.hasNext()) {
            influenceOfBurningDown(it.next());
        }
        ((DefaultSoundManager) this.city.getComponent(15)).playOnce(Resources.SOUND_DESTROY, SoundType.GAME, new BuildingSoundSource(this.city, building));
        if (z) {
            for (Disaster disaster : ((Catastrophe) this.city.getComponent(6)).getDisasters()) {
                if (disaster instanceof NukeDisaster) {
                    if (((NukeDisaster) disaster).issue(building) && this.city.canAchieve()) {
                        TheoTown.gamesService.unlockAchievement("nuclear_plant_explode");
                        return;
                    }
                    return;
                }
            }
        }
    }

    public final void influenceOfBurningDown(Building building) {
        ConcreteAttributeContainer concreteAttributeContainer;
        if (building == null || (concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer()) == null || !building.isWorking() || !building.getBuildingType().isRCIOrDeco()) {
            return;
        }
        int index = AttributeFactory.getIndex((Class<? extends Attribute>) FireBrigadeHappiness.class);
        concreteAttributeContainer.getValues()[index] = concreteAttributeContainer.getValues()[index] * ((Resources.RND.nextFloat() * 0.65f) + 0.35f);
    }

    public synchronized void removeFire(Building building) {
        building.setBurning(false);
        this.burningBuildings.remove(building);
        ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
        if (concreteAttributeContainer != null) {
            concreteAttributeContainer.getValues()[AttributeFactory.getIndex((Class<? extends Attribute>) FireDangerAttribute.class)] = 0.0f;
        }
    }

    public synchronized void removeFire(Tree tree) {
        tree.setBurning(false);
        this.burningTrees.remove(tree);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0016  */
    @Override // info.flowersoft.theotown.city.components.Disaster
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isActive() {
        /*
            r1 = this;
            monitor-enter(r1)
            java.util.Map<info.flowersoft.theotown.city.objects.Building, info.flowersoft.theotown.components.disaster.FireDisaster$BurningBuilding> r0 = r1.burningBuildings     // Catch: java.lang.Throwable -> L14
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L14
            if (r0 == 0) goto L16
            java.util.Map<info.flowersoft.theotown.city.objects.Tree, info.flowersoft.theotown.components.disaster.FireDisaster$BurningTree> r0 = r1.burningTrees     // Catch: java.lang.Throwable -> L14
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L14
            if (r0 != 0) goto L12
            goto L16
        L12:
            r0 = 0
            goto L17
        L14:
            r0 = move-exception
            goto L19
        L16:
            r0 = 1
        L17:
            monitor-exit(r1)
            return r0
        L19:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.disaster.FireDisaster.isActive():boolean");
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean issue() {
        try {
            if (((People) this.city.getComponent(9)).getPeople() < 350) {
                return false;
            }
            ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
            float f = 1.0f;
            for (Building building : new SafeListAccessor(this.city.getBuildings().getRciBuildings())) {
                float burningProbability = getBurningProbability(building);
                if (!building.getDraft().needsRoad) {
                    burningProbability *= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                }
                f *= 1.0f - burningProbability;
                probabilitySelector.insert(building, burningProbability);
            }
            float gameModeDependentValue = (1.0f - f) * getGameModeDependentValue(this.FIRE_PROBABILITY_FACTOR, 1.0f);
            if (!probabilitySelector.hasResult() || Resources.RND.nextFloat() >= gameModeDependentValue) {
                return false;
            }
            if (!isActive()) {
                this.isAutoIssued = true;
            }
            return issue((Building) probabilitySelector.getResult());
        } catch (Throwable th) {
            throw th;
        }
    }

    public float getBurningProbability(Building building) {
        ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
        if (concreteAttributeContainer != null && building.isWorking()) {
            return Math.max(concreteAttributeContainer.getValues()[this.fireDangerIndex], UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) * 1.0f;
        }
        if (!building.getDraft().destroyable || building.isDestroyed() || building.isLocked()) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return 1.0E-7f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized boolean issue(int i, int i2) {
        try {
            Tiles tiles = this.city.getTiles();
            Building building = tiles.getBuilding(i, i2);
            Tree tree = tiles.getTree(i, i2);
            if (!isBurnable(building) || !issue(building)) {
                if (!isBurnable(tree) || !issue(tree)) {
                    return false;
                }
            }
            this.isAutoIssued = false;
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean isBurnable(Building building) {
        return building != null && building.getDraft().destroyable && building.getDraft().burnable && !building.inConstruction();
    }

    public final boolean isBurnable(Tree tree) {
        return tree != null && tree.getDraft().burnable;
    }

    public synchronized boolean issue(Building building) {
        if (building.isBurning() || !isBurnable(building)) {
            return false;
        }
        building.setBurning(true);
        this.burningBuildings.put(building, new BurningBuilding(((DefaultDate) this.city.getComponent(1)).getAbsoluteDay(), building, sampleBuildingFireDuration(building)));
        startSound(building);
        return true;
    }

    public synchronized boolean issue(Tree tree) {
        if (tree.isBurning() || !isBurnable(tree)) {
            return false;
        }
        tree.setBurning(true);
        this.burningTrees.put(tree, new BurningTree(((DefaultDate) this.city.getComponent(1)).getAbsoluteDay(), tree, sampleTreeFireDuration(tree)));
        startSound(tree);
        return true;
    }

    public final int sampleBuildingFireDuration(Building building) {
        return Resources.RND.nextInt((building.getDraft().buildHeight * 2) + 10) + 20;
    }

    public final int sampleTreeFireDuration(Tree tree) {
        return Resources.RND.nextInt(10) + 10;
    }

    public synchronized Building getBurningBuilding() {
        Iterator<Building> it = this.burningBuildings.keySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        return it.next();
    }

    public synchronized Tree getBurningTree() {
        Iterator<Tree> it = this.burningTrees.keySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        return it.next();
    }

    public synchronized int getBurningThing() {
        Building burningBuilding = getBurningBuilding();
        if (burningBuilding != null) {
            return PackedInt2.pack(burningBuilding.getX(), burningBuilding.getY());
        }
        Tree burningTree = getBurningTree();
        if (burningTree == null) {
            return -1;
        }
        return PackedInt2.pack(burningTree.getX(), burningTree.getY());
    }

    public synchronized IntList getBurningThingsInRange(int i, int i2, int i3) {
        if (this.burningBuildings.isEmpty() && this.burningTrees.isEmpty()) {
            return IntList.EMPTY_LIST;
        }
        IntList intList = new IntList(Math.min(this.burningBuildings.size() + this.burningTrees.size(), 16));
        if (!this.burningBuildings.isEmpty()) {
            for (Building building : this.burningBuildings.keySet()) {
                if (this.city.getDistance().get(building, i, i2) <= i3) {
                    intList.add(PackedInt2.pack(building.getX(), building.getY()));
                }
            }
        }
        if (!this.burningTrees.isEmpty()) {
            for (Tree tree : this.burningTrees.keySet()) {
                if (this.city.getDistance().get(tree.getX(), tree.getY(), i, i2) <= i3) {
                    intList.add(PackedInt2.pack(tree.getX(), tree.getY()));
                }
            }
        }
        return intList;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public synchronized int[] getLocation() {
        Building next;
        next = this.burningBuildings.keySet().iterator().next();
        return new int[]{next.getX(), next.getY()};
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return Settings.disasterFire && !this.city.isUber();
    }

    public static class BurningBuilding {
        public Building building;
        public int durationDays;
        public long startDay;

        public BurningBuilding(long j, Building building, int i) {
            this.startDay = j;
            this.building = building;
            this.durationDays = i;
        }
    }

    public static class BurningTree {
        public int durationDays;
        public long startDay;
        public Tree tree;

        public BurningTree(long j, Tree tree, int i) {
            this.startDay = j;
            this.tree = tree;
            this.durationDays = i;
        }
    }
}
