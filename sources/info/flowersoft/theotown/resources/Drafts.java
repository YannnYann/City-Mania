package info.flowersoft.theotown.resources;

import com.badlogic.gdx.utils.IntMap;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.components.transportationsystem.TSSystemDraft;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.CraneDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.HeightMapDraft;
import info.flowersoft.theotown.draft.PedestrianDraft;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.ScenarioDraft;
import info.flowersoft.theotown.draft.ShaderDraft;
import info.flowersoft.theotown.draft.ShipDraft;
import info.flowersoft.theotown.draft.SiteDraft;
import info.flowersoft.theotown.draft.SmokeDraft;
import info.flowersoft.theotown.draft.SoundDraft;
import info.flowersoft.theotown.draft.ThemeDraft;
import info.flowersoft.theotown.draft.ToolDraft;
import info.flowersoft.theotown.draft.TopicDraft;
import info.flowersoft.theotown.draft.TrainDraft;
import info.flowersoft.theotown.draft.TranslationDraft;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.util.BuildingDraftList;
import info.flowersoft.theotown.util.SortedList;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class Drafts {
    public static BuildingPeopleCounter BUILDING_PEOPLE_COUNTER;
    public static Map<String, List<JSONObject>> PATCHES = new HashMap();
    public static Map<String, Draft> ALL = new HashMap<String, Draft>() { // from class: info.flowersoft.theotown.resources.Drafts.1
        public List<Draft> list = new ArrayList();

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public Draft put(String str, Draft draft) {
            List<Draft> list = this.list;
            if (list != null) {
                if (containsKey(str)) {
                    this.list = null;
                } else {
                    list.add(draft);
                }
            }
            return (Draft) super.put(str, draft);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public Draft remove(Object obj) {
            this.list.remove(get(obj));
            return (Draft) super.remove(obj);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.list = null;
            super.clear();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public Collection<Draft> values() {
            List<Draft> list = this.list;
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList(super.values());
            this.list = arrayList;
            return arrayList;
        }
    };
    public static final List<Draft> TAGGED_DRAFTS = createDraftList(Draft.class);
    public static final Map<String, List<Draft>> DRAFTS_BY_TAG = new HashMap();
    public static List<LocalPluginManifest> LOCAL_PLUGIN_MANIFESTS = new ArrayList();
    public static Map<String, LocalPluginManifest> ID_TO_PLUGIN_MANIFEST = new HashMap();
    public static List<ManagedPluginFile> LOADED_PLUGINS = new ArrayList();
    public static IntMap<ManagedPluginFile> LOADED_PLUGINS_BY_ID = new IntMap<>();
    public static List<ZoneDraft> ZONES = createDraftList(ZoneDraft.class);
    public static List<BiomeDraft> BIOMES = createDraftList(BiomeDraft.class);
    public static List<GroundDraft> GROUNDS = createDraftList(GroundDraft.class);
    public static List<GroundDraft> LAND_TILES = createDraftList(GroundDraft.class);
    public static List<GroundDraft> WATER_TILES = createDraftList(GroundDraft.class);
    public static List<TreeDraft> TREES = createDraftList(TreeDraft.class);
    public static List<RoadDraft> ROADS = createDraftList(RoadDraft.class);
    public static List<RoadDecorationDraft> ROAD_DECORATIONS = createDraftList(RoadDecorationDraft.class);
    public static List<BuildingDraft> BUILDINGS = createDraftList(BuildingDraft.class);
    public static List<WireDraft> WIRES = createDraftList(WireDraft.class);
    public static List<PipeDraft> PIPES = createDraftList(PipeDraft.class);
    public static BuildingDraftList RESIDENTIALS = new BuildingDraftList();
    public static BuildingDraftList COMMERCIALS = new BuildingDraftList();
    public static BuildingDraftList INDUSTRIALS = new BuildingDraftList();
    public static BuildingDraftList FARMS = new BuildingDraftList();
    public static BuildingDraftList HARBORS = new BuildingDraftList();
    public static List<BuildingDraft> HARBOR_PIERS = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> PARKS = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> SPORTS = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> PUBLICS = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> RELIGIONS = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> AWARDS = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> ENERGY = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> WATER = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> MEDIC = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> POLICE = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> SWAT = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> FIREBRIGADE = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> EDUCATION = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> DECORATION = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> BUOY = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> RAILWAY_STATION = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> WASTE_DISPOSAL = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> BODY_DISPOSAL = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> MILITARY = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> AIRPORT = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> TERRAIN = createDraftList(BuildingDraft.class);
    public static List<BuildingDraft> LANDMARK = createDraftList(BuildingDraft.class);
    public static List<SmokeDraft> SMOKES = createDraftList(SmokeDraft.class);
    public static List<SiteDraft> SITES = createDraftList(SiteDraft.class);
    public static List<CraneDraft> CRANES = createDraftList(CraneDraft.class);
    public static List<CarDraft> CARS = createDraftList(CarDraft.class);
    public static List<ShipDraft> SHIPS = createDraftList(ShipDraft.class);
    public static List<TrainDraft> TRAINS = createDraftList(TrainDraft.class);
    public static List<FlyingObjectDraft> FLYINGS = createDraftList(FlyingObjectDraft.class);
    public static List<FlyingObjectDraft> AIRPLANES = createSortedDraftList(FlyingObjectDraft.class);
    public static List<PedestrianDraft> PEDESTRIANS = createDraftList(PedestrianDraft.class);
    public static List<TopicDraft> TOPICS = createDraftList(TopicDraft.class);
    public static List<ThemeDraft> THEMES = createSortedDraftList(ThemeDraft.class);
    public static List<ShaderDraft> SHADERS = createDraftList(ShaderDraft.class);
    public static List<ScenarioDraft> SCENARIOS = createDraftList(ScenarioDraft.class);
    public static List<HeightMapDraft> HEIGHTMAPS = createDraftList(HeightMapDraft.class);
    public static List<BusStopDraft> BUSSTOPS = createDraftList(BusStopDraft.class);
    public static List<RailDraft> RAILS = createDraftList(RailDraft.class);
    public static List<RankDraft> RANKS = createDraftList(RankDraft.class);
    public static List<FeatureDraft> FEATURES = createDraftList(FeatureDraft.class);
    public static Map<String, FeatureDraft> SKU_TO_FEATURE = new HashMap();
    public static List<ToolDraft> TOOLS = createDraftList(ToolDraft.class);
    public static List<SoundDraft> SOUNDS = createDraftList(SoundDraft.class);
    public static List<TranslationDraft> TRANSLATIONS = createDraftList(TranslationDraft.class);
    public static final List<TSSystemDraft> TS_DRAFTS = new ArrayList();
    public static final Map<String, TSSystemDraft> TS_DRAFTS_BY_ID = new HashMap();

    public static void addTaggedDraft(Draft draft) {
        TAGGED_DRAFTS.add(draft);
        JSONObject jSONObjectOptJSONObject = draft.meta.optJSONObject("tags");
        if (jSONObjectOptJSONObject != null) {
            JSONArray jSONArrayNames = jSONObjectOptJSONObject.names();
            for (int i = 0; i < jSONArrayNames.length(); i++) {
                String strOptString = jSONArrayNames.optString(i);
                if (strOptString != null && !strOptString.isEmpty()) {
                    Map<String, List<Draft>> map = DRAFTS_BY_TAG;
                    List<Draft> arrayList = map.get(strOptString);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        map.put(strOptString, arrayList);
                    }
                    arrayList.add(draft);
                }
            }
        }
    }

    public static void dispose() {
        PATCHES.clear();
        ALL.clear();
        TAGGED_DRAFTS.clear();
        DRAFTS_BY_TAG.clear();
        LOCAL_PLUGIN_MANIFESTS.clear();
        ID_TO_PLUGIN_MANIFEST.clear();
        LOADED_PLUGINS.clear();
        LOADED_PLUGINS_BY_ID.clear();
        ZONES.clear();
        BIOMES.clear();
        GROUNDS.clear();
        LAND_TILES.clear();
        WATER_TILES.clear();
        TREES.clear();
        ROADS.clear();
        ROAD_DECORATIONS.clear();
        BUILDINGS.clear();
        WIRES.clear();
        PIPES.clear();
        RESIDENTIALS.clear();
        COMMERCIALS.clear();
        INDUSTRIALS.clear();
        FARMS.clear();
        HARBORS.clear();
        HARBOR_PIERS.clear();
        PARKS.clear();
        SPORTS.clear();
        PUBLICS.clear();
        RELIGIONS.clear();
        AWARDS.clear();
        ENERGY.clear();
        WATER.clear();
        MEDIC.clear();
        POLICE.clear();
        SWAT.clear();
        FIREBRIGADE.clear();
        EDUCATION.clear();
        DECORATION.clear();
        BUOY.clear();
        RAILWAY_STATION.clear();
        WASTE_DISPOSAL.clear();
        BODY_DISPOSAL.clear();
        MILITARY.clear();
        AIRPORT.clear();
        TERRAIN.clear();
        LANDMARK.clear();
        SMOKES.clear();
        SITES.clear();
        CRANES.clear();
        CARS.clear();
        SHIPS.clear();
        TRAINS.clear();
        FLYINGS.clear();
        AIRPLANES.clear();
        PEDESTRIANS.clear();
        TOPICS.clear();
        THEMES.clear();
        SHADERS.clear();
        SCENARIOS.clear();
        HEIGHTMAPS.clear();
        BUSSTOPS.clear();
        RAILS.clear();
        RANKS.clear();
        FEATURES.clear();
        SKU_TO_FEATURE.clear();
        TOOLS.clear();
        SOUNDS.clear();
        TRANSLATIONS.clear();
        TS_DRAFTS.clear();
        TS_DRAFTS_BY_ID.clear();
        BUILDING_PEOPLE_COUNTER = null;
    }

    public static <T extends Draft> List<T> createDraftList(Class<T> cls) {
        return new ArrayList();
    }

    public static <T extends Draft> List<T> createSortedDraftList(Class<T> cls) {
        return new SortedList(new SortedList.Interpreter() { // from class: info.flowersoft.theotown.resources.Drafts$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.util.SortedList.Interpreter
            public final int interprete(Object obj) {
                return ((Draft) obj).ordinal;
            }
        });
    }

    public static <T extends Draft> T get(String str, Class<T> cls) {
        if (str == null) {
            return null;
        }
        Draft draft = ALL.get(str);
        if (cls.isInstance(draft)) {
            return (T) draft;
        }
        return null;
    }

    public static <T extends Draft> T getOrThrow(String str, Class<T> cls) throws MissingDraftException {
        T t = (T) get(str, cls);
        if (t != null) {
            return t;
        }
        throw new MissingDraftException(str, cls.getSimpleName());
    }

    public static <T extends Draft> T getOld(T t) {
        return (T) get(t.id, t.getClass());
    }

    public static <T extends Draft> List<T> getDraftsWithTag(String str, Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        collectDraftsWithTag(arrayList, str, cls);
        return arrayList;
    }

    public static <T extends Draft> T getRandomDraftWithTag(String str, Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        collectDraftsWithTag(arrayList, str, cls);
        if (arrayList.isEmpty()) {
            return null;
        }
        return (T) arrayList.get(Resources.RND.nextInt(arrayList.size()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Draft> void collectDraftsWithTag(Collection<T> collection, String str, Class<T> cls) {
        List<Draft> list = DRAFTS_BY_TAG.get(str);
        if (list == null) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            Draft draft = list.get(i);
            if (cls.isInstance(draft)) {
                collection.add(draft);
            }
        }
    }

    public static FeatureDraft getBuyableFeatureBySku(String str) {
        JSONObject jSONObject;
        JSONObject jSONObjectOptJSONObject;
        FeatureDraft featureDraft = null;
        for (int i = 0; i < FEATURES.size(); i++) {
            FeatureDraft featureDraft2 = FEATURES.get(i);
            String str2 = featureDraft2.sku;
            if (str2 != null && str2.equals(str)) {
                if (featureDraft2.buyable) {
                    return featureDraft2;
                }
                featureDraft = featureDraft2;
            }
        }
        if (featureDraft != null) {
            for (int i2 = 0; i2 < FEATURES.size(); i2++) {
                FeatureDraft featureDraft3 = FEATURES.get(i2);
                String str3 = featureDraft3.sku;
                if (str3 != null && !str3.isEmpty() && featureDraft3.buyable && (jSONObject = featureDraft3.meta) != null && (jSONObjectOptJSONObject = jSONObject.optJSONObject("tags")) != null) {
                    if (featureDraft.id.equals(jSONObjectOptJSONObject.optString("old price"))) {
                        return featureDraft3;
                    }
                }
            }
        }
        return null;
    }

    public static void setLeftSideTraffic(boolean z) {
        Iterator<RoadDraft> it = ROADS.iterator();
        while (it.hasNext()) {
            it.next().setLeftSideTraffic(z);
        }
    }
}
