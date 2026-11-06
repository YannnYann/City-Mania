package info.flowersoft.theotown.draftloader;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.MathUtils;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.ironsource.R6;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.components.coverage.CoverageAspect;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.Composition;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.InfluenceDraft;
import info.flowersoft.theotown.draft.PedestrianDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.ShipDraft;
import info.flowersoft.theotown.draft.SmokeDraft;
import info.flowersoft.theotown.draft.SmokeSpot;
import info.flowersoft.theotown.draft.SpawnInBiomeDefinition;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.ViewportDraft;
import info.flowersoft.theotown.draft.requirement.DraftRequirement;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.SpecialInt;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingDraftLoader extends DraftLoader {
    public static final EnumMap<InfluenceType, BuildingType[]> influenceLimitations;
    public final int ASPECT_MAX_CAPACITY;
    public final int ASPECT_MAX_VALUE;
    public final JSONObject LIMIT_CONFIG;
    public final int MAX_INFLUENCE_OFFSET;
    public final int MAX_INFLUENCE_OFFSET_UNSUPPORTED;
    public final int MAX_INFLUENCE_PER_MONTHLY_PRICE;
    public final int MAX_INFLUENCE_PER_MONTHLY_PRICE_UNSUPPORTED;
    public final int MAX_INFLUENCE_PER_TILE;
    public final int MAX_INFLUENCE_PER_TILE_UNSUPPORTED;
    public final long MAX_POWER;
    public final long MAX_POWER_OFFSET;
    public final long MAX_POWER_PER_AREA;
    public final long MAX_POWER_PER_MONTHLY_PRICE;
    public final long MAX_WATER;
    public final long MAX_WATER_OFFSET;
    public final long MAX_WATER_PER_AREA;
    public final long MAX_WATER_PER_MONTHLY_PRICE;
    public final float MIN_MONTHLY_FROM_INFLUENCE_AREA;
    public final float MIN_PRICE_FROM_INFLUENCE_AREA;
    public final JSONObject PLUGIN_CONFIG;

    public BuildingDraftLoader() {
        JSONObject specificConfig = Resources.getSpecificConfig(R6.L);
        this.PLUGIN_CONFIG = specificConfig;
        JSONObject jSONObjectOptObject = JSONUtil.optObject(specificConfig, "limits");
        this.LIMIT_CONFIG = jSONObjectOptObject;
        this.MAX_INFLUENCE_PER_TILE = jSONObjectOptObject.optInt("max influence per tile", UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
        this.MAX_INFLUENCE_PER_MONTHLY_PRICE = jSONObjectOptObject.optInt("max influence per monthly price", 10);
        this.MAX_INFLUENCE_OFFSET = jSONObjectOptObject.optInt("max influence offset", 100);
        this.MAX_INFLUENCE_PER_TILE_UNSUPPORTED = jSONObjectOptObject.optInt("max influence per tile unsupported", UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
        this.MAX_INFLUENCE_PER_MONTHLY_PRICE_UNSUPPORTED = jSONObjectOptObject.optInt("max influence per monthly price unsupported", 1);
        this.MAX_INFLUENCE_OFFSET_UNSUPPORTED = jSONObjectOptObject.optInt("max influence offset unsupported", 100);
        this.MIN_PRICE_FROM_INFLUENCE_AREA = (float) jSONObjectOptObject.optDouble("min price from influence area", 0.01d);
        this.MIN_MONTHLY_FROM_INFLUENCE_AREA = (float) jSONObjectOptObject.optDouble("min monthly from influence area", 0.01d);
        this.MAX_POWER = jSONObjectOptObject.optLong("max power", 10000000L);
        this.MAX_POWER_PER_AREA = jSONObjectOptObject.optLong("max power per area", 10000L);
        this.MAX_POWER_PER_MONTHLY_PRICE = jSONObjectOptObject.optLong("max power per monthly price", 200L);
        this.MAX_POWER_OFFSET = jSONObjectOptObject.optLong("max power offset", 10000L);
        this.MAX_WATER = jSONObjectOptObject.optLong("max water", 10000000L);
        this.MAX_WATER_PER_AREA = jSONObjectOptObject.optLong("max water per area", 1000L);
        this.MAX_WATER_PER_MONTHLY_PRICE = jSONObjectOptObject.optLong("max water per monthly price", 200L);
        this.MAX_WATER_OFFSET = jSONObjectOptObject.optLong("max water offset", 1000L);
        this.ASPECT_MAX_VALUE = jSONObjectOptObject.optInt("aspect max value", 10000000);
        this.ASPECT_MAX_CAPACITY = jSONObjectOptObject.optInt("aspect max capacity", 100000000);
        double[] dArr = CoverageAspect.pricePerProvision;
        dArr[0] = jSONObjectOptObject.optDouble("provide edu low price", dArr[0]);
        dArr[1] = jSONObjectOptObject.optDouble("provide edu high price", dArr[1]);
        dArr[2] = jSONObjectOptObject.optDouble("provide health price", dArr[2]);
        dArr[3] = jSONObjectOptObject.optDouble("provide waste price", dArr[3]);
        dArr[4] = jSONObjectOptObject.optDouble("provide body price", dArr[4]);
    }

    static {
        EnumMap<InfluenceType, BuildingType[]> enumMap = new EnumMap<>(InfluenceType.class);
        influenceLimitations = enumMap;
        enumMap.put(InfluenceType.HEALTH, new BuildingType[]{BuildingType.MEDIC});
        enumMap.put(InfluenceType.POLICE, new BuildingType[]{BuildingType.POLICE, BuildingType.SWAT});
        enumMap.put(InfluenceType.FIREDEPARTMENT, new BuildingType[]{BuildingType.FIRE_BRIGADE});
        InfluenceType influenceType = InfluenceType.PARK;
        BuildingType buildingType = BuildingType.PARK;
        enumMap.put(influenceType, new BuildingType[]{buildingType});
        enumMap.put(InfluenceType.NOISE, new BuildingType[]{buildingType});
        enumMap.put(InfluenceType.POLLUTION, new BuildingType[]{buildingType});
        enumMap.put(InfluenceType.SPORT, new BuildingType[]{BuildingType.SPORT});
        InfluenceType influenceType2 = InfluenceType.EDUCATION_LOW;
        BuildingType buildingType2 = BuildingType.EDUCATION;
        enumMap.put(influenceType2, new BuildingType[]{buildingType2});
        enumMap.put(InfluenceType.EDUCATION_HIGH, new BuildingType[]{buildingType2});
        InfluenceType influenceType3 = InfluenceType.CULTURE;
        BuildingType buildingType3 = BuildingType.RELIGION;
        BuildingType buildingType4 = BuildingType.PUBLIC;
        BuildingType buildingType5 = BuildingType.AWARD;
        BuildingType buildingType6 = BuildingType.DECORATION;
        BuildingType buildingType7 = BuildingType.LANDMARK;
        enumMap.put(influenceType3, new BuildingType[]{buildingType, buildingType3, buildingType4, buildingType5, buildingType6, buildingType7});
        enumMap.put(InfluenceType.MANAGEMENT, new BuildingType[]{buildingType4, buildingType5, buildingType7});
        enumMap.put(InfluenceType.RELIGION, new BuildingType[]{buildingType3, buildingType5, buildingType7});
        InfluenceType influenceType4 = InfluenceType.PASSENGER_BUS;
        BuildingType buildingType8 = BuildingType.BUS_DEPOT;
        BuildingType buildingType9 = BuildingType.RAILWAY_STATION;
        BuildingType buildingType10 = BuildingType.OTHER;
        enumMap.put(influenceType4, new BuildingType[]{buildingType6, buildingType8, buildingType9, buildingType10});
        enumMap.put(InfluenceType.PASSENGER_TRAIN, new BuildingType[]{buildingType6, buildingType9, buildingType8, buildingType10});
        enumMap.put(InfluenceType.NATURE, new BuildingType[]{buildingType, buildingType5, buildingType6, buildingType7});
        enumMap.put(InfluenceType.WASTE_DISPOSAL, new BuildingType[]{BuildingType.WASTE_DISPOSAL});
        enumMap.put(InfluenceType.BODY_DISPOSAL, new BuildingType[]{BuildingType.BODY_DISPOSAL});
    }

    public final void reportInfluenceLimit(Draft draft, InfluenceType influenceType, int i, int i2) {
        Gdx.app.log("BuildingDraft", "Limit " + draft.id + " (" + draft.type + ") supported influence " + influenceType.name() + ": " + i + " -> " + i2);
    }

    public final void reportUnsupportedInfluenceLimit(Draft draft, InfluenceType influenceType, int i, int i2) {
        Gdx.app.log("BuildingDraft", "Limit " + draft.id + " (" + draft.type + ") unsupported influence " + influenceType.name() + ": " + i + " -> " + i2);
    }

    public final void reportPowerLimit(Draft draft, long j, long j2) {
        Gdx.app.log("BuildingDraft", "Limit " + draft.id + " power: " + j + " -> " + j2);
    }

    public final void reportWaterLimit(Draft draft, long j, long j2) {
        Gdx.app.log("BuildingDraft", "Limit " + draft.id + " water: " + j + " -> " + j2);
    }

    public final void limitInfluences(Draft draft, int[] iArr, BuildingType buildingType, long j, int i) {
        BuildingType[] buildingTypeArr;
        boolean z;
        int i2;
        int i3;
        int iMin = Math.min(((this.MAX_INFLUENCE_PER_MONTHLY_PRICE * ((int) Math.min(j, 100000L))) / i) + this.MAX_INFLUENCE_OFFSET, this.MAX_INFLUENCE_PER_TILE);
        int iMin2 = Math.min(((this.MAX_INFLUENCE_PER_MONTHLY_PRICE_UNSUPPORTED * ((int) Math.min(j, 100000L))) / i) + this.MAX_INFLUENCE_OFFSET_UNSUPPORTED, this.MAX_INFLUENCE_PER_TILE_UNSUPPORTED);
        for (int i4 = 0; i4 < InfluenceType.cachedValues().length; i4++) {
            InfluenceType influenceType = InfluenceType.cachedValues()[i4];
            if ((!influenceType.isPositive() || iArr[influenceType.ordinal()] > 0) && ((influenceType.isPositive() || iArr[influenceType.ordinal()] < 0) && (buildingTypeArr = influenceLimitations.get(influenceType)) != null)) {
                int i5 = 0;
                while (true) {
                    if (i5 >= buildingTypeArr.length) {
                        z = false;
                        break;
                    } else {
                        if (buildingTypeArr[i5] == buildingType) {
                            z = true;
                            break;
                        }
                        i5++;
                    }
                }
                int i6 = iArr[influenceType.ordinal()];
                if (z) {
                    if (influenceType.isPositive() && i6 > iMin) {
                        iArr[influenceType.ordinal()] = iMin;
                        reportInfluenceLimit(draft, influenceType, i6, iMin);
                    } else if (!influenceType.isPositive() && i6 < (i3 = -iMin)) {
                        iArr[influenceType.ordinal()] = i3;
                        reportInfluenceLimit(draft, influenceType, i6, i3);
                    }
                } else if (influenceType.isPositive() && i6 > iMin2) {
                    iArr[influenceType.ordinal()] = iMin2;
                    reportUnsupportedInfluenceLimit(draft, influenceType, i6, iMin2);
                } else if (!influenceType.isPositive() && i6 < (i2 = -iMin2)) {
                    iArr[influenceType.ordinal()] = i2;
                    reportUnsupportedInfluenceLimit(draft, influenceType, i6, i2);
                }
            }
        }
    }

    public final long limitPower(Draft draft, long j, long j2, int i) {
        long jMin = Math.min(this.MAX_POWER_PER_AREA * ((long) i), Math.min((this.MAX_POWER_PER_MONTHLY_PRICE * j2) + this.MAX_POWER_OFFSET, this.MAX_POWER));
        if (j <= jMin) {
            return j;
        }
        reportPowerLimit(draft, j, jMin);
        return jMin;
    }

    public final long limitWater(Draft draft, long j, long j2, int i) {
        long jMin = Math.min(this.MAX_WATER_PER_AREA * ((long) i), Math.min((this.MAX_WATER_PER_MONTHLY_PRICE * j2) + this.MAX_WATER_OFFSET, this.MAX_WATER));
        if (j <= jMin) {
            return j;
        }
        reportWaterLimit(draft, j, jMin);
        return jMin;
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        String[] strArr = new String[BuildingType.cachedValues().length];
        for (int i = 0; i < BuildingType.cachedValues().length; i++) {
            strArr[i] = BuildingType.cachedValues()[i].getNameTag();
        }
        return strArr;
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public BuildingDraft load() throws MissingDraftException, JSONException {
        BuildingDraft buildingDraft = (BuildingDraft) getDraft(this.src, BuildingDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.BuildingDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new BuildingDraft();
            }
        });
        loadDefaults(buildingDraft);
        buildingDraft.width = this.src.optInt("width", buildingDraft.width);
        buildingDraft.height = this.src.optInt("height", buildingDraft.height);
        if (buildingDraft.width == 0 && !this.src.has("width")) {
            throw new IllegalArgumentException("Missing `width` attribute");
        }
        if (buildingDraft.width == 0 && !this.src.has("height")) {
            throw new IllegalArgumentException("Missing `height` attribute");
        }
        if (buildingDraft.width <= 0 || buildingDraft.height <= 0) {
            throw new IllegalArgumentException("Building width x height must be > 0 but got " + buildingDraft.width + " x " + buildingDraft.height);
        }
        if (!this.src.has("composition")) {
            int i = buildingDraft.width;
            int i2 = buildingDraft.height;
            if (i > i2 * 16 || i2 > i * 16) {
                throw new IllegalArgumentException("For buildings the max factor between width and height must be smaller than or equal to 16 but got " + buildingDraft.width + " x " + buildingDraft.height);
            }
        }
        loadComposition(buildingDraft);
        loadFrames(buildingDraft);
        loadBasics(buildingDraft);
        loadFun(buildingDraft);
        loadSmoke(buildingDraft);
        loadAnimations(buildingDraft);
        loadType(buildingDraft);
        loadInfluences(buildingDraft);
        loadUpgrades(buildingDraft);
        loadAspects(buildingDraft);
        loadPedestrian(buildingDraft);
        if (!buildingDraft.isPrivileged()) {
            limitInfluences(buildingDraft, buildingDraft.influenceInduceVector, buildingDraft.buildingType, buildingDraft.monthlyPrice, buildingDraft.getArea());
        }
        if (buildingDraft.buildHeight > 128) {
            throw new JSONException("Max build height is 128 but got " + buildingDraft.buildHeight + " for building draft " + buildingDraft.id);
        }
        BuildingDraft buildingDraft2 = (BuildingDraft) Drafts.ALL.get(buildingDraft.id);
        if (buildingDraft2 != null) {
            if (buildingDraft2.buildingType.getList() != null) {
                buildingDraft2.buildingType.getList().remove(buildingDraft2);
            }
            Drafts.BUILDINGS.remove(buildingDraft2);
        }
        if (buildingDraft.buildingType.getList() != null) {
            buildingDraft.buildingType.getList().add(buildingDraft);
        }
        Drafts.BUILDINGS.add(buildingDraft);
        return buildingDraft;
    }

    public final void loadComposition(BuildingDraft buildingDraft) throws JSONException {
        JSONArray jSONArrayOptJSONArray = this.src.optJSONArray("composition");
        if (jSONArrayOptJSONArray != null) {
            buildingDraft.composition = new Composition(buildingDraft.width, buildingDraft.height);
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i);
                Draft draft = Drafts.get(jSONObject.getString(C3670j8.x), Draft.class);
                if (draft instanceof BuildingDraft) {
                    if (draft.isFinal() && !buildingDraft.isPrivileged()) {
                        throw new IllegalArgumentException("Cannot use " + draft.id + " in a composition");
                    }
                    buildingDraft.composition.addBuilding((BuildingDraft) draft, jSONObject.getInt("x"), jSONObject.getInt("y"), jSONObject.optInt("frame", 0));
                } else if (draft instanceof RoadDraft) {
                    int iOptInt = jSONObject.optInt("l0", 0);
                    buildingDraft.composition.addRoad((RoadDraft) draft, jSONObject.getInt("x0"), jSONObject.getInt("y0"), jSONObject.getInt("x1"), jSONObject.getInt("y1"), jSONObject.optBoolean("join", true), iOptInt, jSONObject.optInt("l1", iOptInt));
                } else if (draft instanceof RoadDecorationDraft) {
                    buildingDraft.composition.addRoadDecoration((RoadDecorationDraft) draft, jSONObject.getInt("x"), jSONObject.getInt("y"), jSONObject.optInt("level", 0));
                } else if (draft instanceof BusStopDraft) {
                    buildingDraft.composition.addBusStop((BusStopDraft) draft, jSONObject.getInt("x"), jSONObject.getInt("y"), jSONObject.optInt("level", 0));
                } else if (draft instanceof TreeDraft) {
                    buildingDraft.composition.addTree((TreeDraft) draft, jSONObject.getInt("x"), jSONObject.getInt("y"), jSONObject.optInt("frame", 0));
                }
            }
            buildingDraft.composition.finish(!buildingDraft.premium);
            buildingDraft.price = buildingDraft.composition.getPrice();
            buildingDraft.monthlyPrice = buildingDraft.composition.getMonthlyPrice();
            if (this.src.optBoolean("infer requirements", true)) {
                List<DraftRequirement> listCollectRequirements = buildingDraft.composition.collectRequirements();
                if (listCollectRequirements.size() > 0) {
                    if (!buildingDraft.hasRequirement()) {
                        buildingDraft.setRequirement(listCollectRequirements.get(0));
                    }
                    for (int i2 = 0; i2 < listCollectRequirements.size(); i2++) {
                        buildingDraft.getRequirement().mergeFrom(listCollectRequirements.get(i2));
                    }
                }
            }
        }
    }

    public final void loadFrames(BuildingDraft buildingDraft) throws JSONException {
        ViewportDraft viewportDraft;
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        ImageHandleResolver imageHandleResolverForBuilding = ImageHandleResolver.forBuilding(buildingDraft.width, buildingDraft.height);
        buildingDraft.frames = loadFrames("frames", "frame", imageHandleResolverForBuilding, this.src, buildingDraft, buildingDraft.frames);
        buildingDraft.decoFrames = loadFrames("deco", "decos", imageHandleResolverForBuilding, this.src, buildingDraft, buildingDraft.decoFrames);
        buildingDraft.randomFrame = this.src.optBoolean("random frame", true);
        buildingDraft.groundFrames = loadFrames("ground frames", "ground frame", buildingDraft, buildingDraft.groundFrames);
        buildingDraft.waterBorderFrames = loadFrames("water border frames", "water border frame", buildingDraft, buildingDraft.waterBorderFrames);
        Composition composition = buildingDraft.composition;
        if (composition == null && ((iArr3 = buildingDraft.frames) == null || iArr3.length == 0)) {
            throw new IllegalStateException("No frames have been provided");
        }
        if (composition != null && ((iArr2 = buildingDraft.frames) == null || iArr2.length == 0)) {
            buildingDraft.frames = new int[]{0};
        }
        if (this.src.has("ground tiles")) {
            JSONArray jSONArrayOptJSONArray = this.src.optJSONArray("ground tiles");
            IntList intList = new IntList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                String strOptString = jSONArrayOptJSONArray.optString(i);
                if (strOptString != null && (viewportDraft = (ViewportDraft) Drafts.get(strOptString, ViewportDraft.class)) != null && (iArr = viewportDraft.frames) != null) {
                    intList.add(iArr);
                }
            }
            if (intList.isEmpty()) {
                return;
            }
            buildingDraft.groundTileFrames = intList.toArray();
        }
    }

    public final void loadBasics(BuildingDraft buildingDraft) throws MissingDraftException, JSONException {
        String strOptString;
        int i;
        buildingDraft.needsRoad = this.src.optBoolean("needs road", buildingDraft.needsRoad);
        buildingDraft.needsLand = this.src.optBoolean("needs land", buildingDraft.needsLand);
        buildingDraft.needsWater = this.src.optBoolean("needs water", buildingDraft.needsWater);
        buildingDraft.minWaterTiles = this.src.optInt("min water tiles", buildingDraft.minWaterTiles);
        buildingDraft.level = this.src.optInt("level", buildingDraft.level);
        buildingDraft.density = (float) this.src.optDouble("density", buildingDraft.density);
        JSONObject jSONObject = this.src;
        float height = Resources.IMAGE_WORLD.getHeight(buildingDraft.frames[0]) / 8.0f;
        int i2 = buildingDraft.width;
        int i3 = buildingDraft.height;
        buildingDraft.buildHeight = jSONObject.optInt("build height", (int) Math.max(height - (i2 + i3), ((i2 + i3) / 2) + 1));
        buildingDraft.animation = this.src.optBoolean("animated", buildingDraft.animation);
        long jSignedPrice = signedPrice(this.src.optInt("price", (int) buildingDraft.price));
        buildingDraft.price = jSignedPrice;
        if (jSignedPrice < 0 && !buildingDraft.isPrivileged()) {
            throw new JSONException("Negative price is not allowed");
        }
        buildingDraft.addPriceDrafts = loadDraftList(this.src, "add price", buildingDraft.id, buildingDraft.addPriceDrafts);
        long jSignedPrice2 = signedPrice(this.src.optInt("monthly price", (int) buildingDraft.monthlyPrice));
        buildingDraft.monthlyPrice = jSignedPrice2;
        if (jSignedPrice2 < 0 && !buildingDraft.isPrivileged()) {
            throw new JSONException("Negative monthly price is not allowed");
        }
        SpecialInt specialInt = buildingDraft.diamondPrice;
        specialInt.set(positivePrice(this.src.optInt("diamond price", specialInt.get())));
        if (buildingDraft.diamondPrice.get() < 0 && !buildingDraft.isPrivileged()) {
            throw new JSONException("Negative diamond price is not allowed");
        }
        if (TheoTown.PREMIUM) {
            buildingDraft.diamondPrice.setZero();
        }
        String strOptString2 = this.src.optString("budget item", null);
        if (strOptString2 != null) {
            if (strOptString2.isEmpty()) {
                buildingDraft.budgetItem = buildingDraft;
            } else {
                Draft draft = Drafts.get(strOptString2, Draft.class);
                buildingDraft.budgetItem = draft;
                if (draft == null) {
                    throw new JSONException("budget item of id " + strOptString2 + " referenced to in building " + buildingDraft.id + " could not be found");
                }
            }
            if (buildingDraft.budgetItem.getMetaTag("budget item") == null) {
                throw new JSONException("budget item " + strOptString2 + " referenced to in building " + buildingDraft.id + " has no meta tag \"budget item\"");
            }
        }
        long jMin = Math.min(this.src.optInt("bulldoze price", (int) buildingDraft.bulldozePrice), 2000000000);
        buildingDraft.bulldozePrice = jMin;
        if (jMin < 0 && jMin != -2147483648L && !buildingDraft.isPrivileged()) {
            throw new JSONException("bulldoze price may not be negative");
        }
        buildingDraft.capacity = this.src.optInt("capacity", buildingDraft.capacity);
        buildingDraft.depotCapacity = this.src.optInt("depot capacity", buildingDraft.depotCapacity);
        buildingDraft.destroyable = this.src.optBoolean("destroyable", buildingDraft.destroyable);
        buildingDraft.destroyableByFun = this.src.optBoolean("destroyable by fun", buildingDraft.destroyableByFun);
        if (this.src.has("destruction")) {
            BuildingDraft buildingDraft2 = (BuildingDraft) Drafts.get(this.src.getString("destruction"), BuildingDraft.class);
            buildingDraft.destruction = buildingDraft2;
            if (buildingDraft2 == null) {
                throw new IllegalArgumentException("Did not find building for destruction: " + this.src.getString("destruction"));
            }
            if (buildingDraft.isSquare() && buildingDraft.destruction.isSquare() && (i = buildingDraft.destruction.width) != 1 && i != buildingDraft.width) {
                throw new IllegalArgumentException("Destruction building size must be one or building size " + buildingDraft.width + " but was " + buildingDraft.destruction.width);
            }
            if (!buildingDraft.isSquare()) {
                BuildingDraft buildingDraft3 = buildingDraft.destruction;
                if (buildingDraft3.width != 1 || buildingDraft3.height != 1) {
                    throw new IllegalStateException("For non square buildings the destruction building must have a size of 1 x 1");
                }
            }
        }
        buildingDraft.burnable = this.src.optBoolean("burnable", buildingDraft.destroyable);
        buildingDraft.useFireFrames = this.src.optBoolean("use fire frames", buildingDraft.useFireFrames);
        buildingDraft.maxCount = this.src.optInt("max count", buildingDraft.maxCount);
        buildingDraft.priceFactor = (float) this.src.optDouble("price factor", buildingDraft.priceFactor);
        buildingDraft.waterWaste = (float) this.src.optDouble("water waste", buildingDraft.waterWaste);
        buildingDraft.drawGround = this.src.optBoolean("draw ground", buildingDraft.drawGround);
        boolean zOptBoolean = this.src.optBoolean("frame alignment area", buildingDraft.frameAlignmentArea);
        buildingDraft.frameAlignmentArea = zOptBoolean;
        boolean zOptBoolean2 = this.src.optBoolean("frame alignment", zOptBoolean);
        buildingDraft.frameAlignment = zOptBoolean2;
        boolean zOptBoolean3 = this.src.optBoolean("alignable", zOptBoolean2);
        buildingDraft.alignable = zOptBoolean3;
        boolean zOptBoolean4 = this.src.optBoolean("rotation aware", ((!zOptBoolean3 || buildingDraft.frames.length < 4) && buildingDraft.composition == null && buildingDraft.isSquare()) ? false : true);
        buildingDraft.rotationAware = zOptBoolean4;
        boolean zOptBoolean5 = this.src.optBoolean("ext rotation aware", zOptBoolean4 && (buildingDraft.frameAlignment || buildingDraft.frameAlignmentArea));
        buildingDraft.extRotationAware = zOptBoolean5;
        buildingDraft.rotationAware = zOptBoolean5 | buildingDraft.rotationAware;
        buildingDraft.selectableFrames = this.src.optBoolean("selectable frames", !buildingDraft.frameAlignment);
        if (!buildingDraft.isSquare() && !buildingDraft.rotationAware && buildingDraft.frames.length < 2) {
            throw new IllegalArgumentException("Non square buildings are always rotation aware. Define at least two frames");
        }
        if (!buildingDraft.isSquare() && buildingDraft.frameAlignment) {
            throw new IllegalArgumentException("Non square buildings cannot be frame aligned.");
        }
        buildingDraft.volatileCannotUndo = this.src.optBoolean("volatile", buildingDraft.volatileCannotUndo);
        if (this.src.has("use fence")) {
            JSONArray jSONArrayOptJSONArray = this.src.optJSONArray("use fence");
            if (jSONArrayOptJSONArray == null && (strOptString = this.src.optString("use fence", null)) != null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONArrayOptJSONArray.put(strOptString);
            }
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                buildingDraft.useFence = new String[jSONArrayOptJSONArray.length()];
                for (int i4 = 0; i4 < jSONArrayOptJSONArray.length(); i4++) {
                    buildingDraft.useFence[i4] = jSONArrayOptJSONArray.optString(i4);
                }
            }
        }
        if (buildingDraft.rotationAware) {
            int[] iArr = buildingDraft.frames;
            if (iArr.length < 4 && iArr.length > 0) {
                while (true) {
                    int[] iArr2 = buildingDraft.frames;
                    if (iArr2.length >= 4) {
                        break;
                    }
                    int[] iArrCopyOf = Arrays.copyOf(iArr2, iArr2.length * 2);
                    buildingDraft.frames = iArrCopyOf;
                    int length = iArrCopyOf.length / 2;
                    while (true) {
                        int[] iArr3 = buildingDraft.frames;
                        if (length < iArr3.length) {
                            iArr3[length] = iArr3[length - (iArr3.length / 2)];
                            length++;
                        }
                    }
                }
            }
        }
        if (buildingDraft.composition != null && !buildingDraft.rotationAware) {
            throw new IllegalArgumentException("Composition buildings have to be rotation aware!");
        }
        if (this.src.has("ships")) {
            JSONArray jSONArray = this.src.getJSONArray("ships");
            ArrayList arrayList = new ArrayList();
            for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                String string = jSONArray.getString(i5);
                ShipDraft shipDraft = (ShipDraft) Drafts.ALL.get(string);
                if (shipDraft == null) {
                    throw new JSONException("Ship id " + string + " could not be found!");
                }
                arrayList.add(shipDraft);
            }
            buildingDraft.ships = (ShipDraft[]) arrayList.toArray(new ShipDraft[0]);
            buildingDraft.shipCount = this.src.optInt("ship count", (buildingDraft.getWidth(0) + buildingDraft.getHeight(0)) / 2);
            buildingDraft.shipRadius = this.src.optInt("ship radius", Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        }
        JSONObject jSONObjectOptJSONObject = this.src.optJSONObject("helicopter spawner");
        if (jSONObjectOptJSONObject != null) {
            if (!buildingDraft.isSquare()) {
                throw new IllegalArgumentException("Heli spawner buildings must be square");
            }
            BuildingDraft.HelicopterSpawnerDraft helicopterSpawnerDraft = new BuildingDraft.HelicopterSpawnerDraft();
            helicopterSpawnerDraft.id = jSONObjectOptJSONObject.optString(C3670j8.x);
            helicopterSpawnerDraft.radius = jSONObjectOptJSONObject.optInt("radius", 16);
            helicopterSpawnerDraft.x = jSONObjectOptJSONObject.optInt("x", buildingDraft.width / 2);
            helicopterSpawnerDraft.y = jSONObjectOptJSONObject.optInt("y", buildingDraft.height / 2);
            buildingDraft.helicopterSpawner = helicopterSpawnerDraft;
        }
        buildingDraft.carSpawners = loadCarSpawners(this.src, "car spawner", buildingDraft.carSpawners, buildingDraft);
        String str = buildingDraft.needsWater ? "$biome_ocean00" : "$biome_mixed_forest00";
        SpawnInBiomeDefinition[] spawnInBiomeDefinitionArrLoadLegacySpawn = loadLegacySpawn("spawn", buildingDraft.biomes, str);
        buildingDraft.biomes = spawnInBiomeDefinitionArrLoadLegacySpawn;
        buildingDraft.biomes = loadInBiomeSpawners("biome", "biomes", spawnInBiomeDefinitionArrLoadLegacySpawn, new Getter() { // from class: info.flowersoft.theotown.draftloader.BuildingDraftLoader$$ExternalSyntheticLambda1
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return BuildingDraft.getDefaultSpawnDefinition();
            }
        }, str);
        buildingDraft.explodes = this.src.optBoolean("explodes", buildingDraft.explodes);
        buildingDraft.explosionRadius = this.src.optInt("explosion radius", buildingDraft.explosionRadius);
        buildingDraft.nuclear = this.src.optBoolean("nuclear", buildingDraft.nuclear);
        buildingDraft.disaster = this.src.optBoolean("disaster", buildingDraft.disaster);
        JSONObject jSONObject2 = this.src;
        buildingDraft.removable = jSONObject2.optBoolean("removable", jSONObject2.optBoolean("removeable", buildingDraft.removable));
        buildingDraft.mapColor = loadColor("map color");
        buildingDraft.pickable = this.src.optBoolean("pickable", buildingDraft.pickable);
        buildingDraft.renameable = this.src.optBoolean("renameable", buildingDraft.renameable);
        buildingDraft.performance = this.src.optBoolean("performance", buildingDraft.performance);
        int iOptInt = this.src.optInt("power radius", buildingDraft.powerRadius);
        buildingDraft.powerRadius = iOptInt;
        if (iOptInt > 5 && !buildingDraft.isPrivileged()) {
            buildingDraft.powerRadius = 5;
        }
        buildingDraft.idleBuildTime = this.src.optBoolean("idle build time", buildingDraft.idleBuildTime);
        buildingDraft.randomizeAnimation = this.src.optBoolean("randomize animation", buildingDraft.randomizeAnimation);
        buildingDraft.randomizeLights = this.src.optBoolean("randomize lights", buildingDraft.randomizeLights);
        buildingDraft.carMinLevel = this.src.optInt("car min level", buildingDraft.carMinLevel);
        buildingDraft.carMaxLevel = this.src.optInt("car max level", buildingDraft.carMaxLevel);
    }

    public final BuildingDraft.CarSpawnerDraft[] loadCarSpawners(JSONObject jSONObject, String str, BuildingDraft.CarSpawnerDraft[] carSpawnerDraftArr, BuildingDraft buildingDraft) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null && jSONObject.has(str)) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObject.optJSONObject(str));
        }
        if (jSONArrayOptJSONArray == null) {
            return carSpawnerDraftArr;
        }
        ArrayList arrayList = new ArrayList(jSONArrayOptJSONArray.length());
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
            BuildingDraft.CarSpawnerDraft carSpawnerDraft = new BuildingDraft.CarSpawnerDraft();
            carSpawnerDraft.id = "spawner" + i;
            carSpawnerDraft.radius = jSONObject2.optInt("radius", 16);
            carSpawnerDraft.count = jSONObject2.optInt("count", (buildingDraft.width + buildingDraft.height) / 2);
            ArrayList arrayList2 = new ArrayList();
            JSONArray jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(jSONObject2, "cars");
            if (jSONArrayOptArrayOrSingle != null) {
                for (int i2 = 0; i2 < jSONArrayOptArrayOrSingle.length(); i2++) {
                    String string = jSONArrayOptArrayOrSingle.getString(i2);
                    CarDraft carDraft = (CarDraft) Drafts.ALL.get(string);
                    if (carDraft == null) {
                        throw new JSONException("Car id " + string + " could not be found!");
                    }
                    arrayList2.add(carDraft);
                }
            }
            carSpawnerDraft.cars = (CarDraft[]) arrayList2.toArray(new CarDraft[0]);
            ArrayList arrayList3 = new ArrayList();
            JSONArray jSONArrayOptArrayOrSingle2 = JSONUtil.optArrayOrSingle(jSONObject2, "tags");
            if (jSONArrayOptArrayOrSingle2 != null) {
                for (int i3 = 0; i3 < jSONArrayOptArrayOrSingle2.length(); i3++) {
                    arrayList3.add(jSONArrayOptArrayOrSingle2.getString(i3));
                }
            }
            carSpawnerDraft.tags = (String[]) arrayList3.toArray(new String[0]);
            JSONArray jSONArrayOptArrayOrSingle3 = JSONUtil.optArrayOrSingle(jSONObject2, "targets");
            if (jSONArrayOptArrayOrSingle3 != null && jSONArrayOptArrayOrSingle3.length() > 0) {
                ArrayList arrayList4 = new ArrayList(jSONArrayOptArrayOrSingle3.length());
                for (int i4 = 0; i4 < jSONArrayOptArrayOrSingle3.length(); i4++) {
                    if (jSONArrayOptArrayOrSingle3.isNull(i4)) {
                        arrayList4.add(null);
                    } else {
                        arrayList4.add(jSONArrayOptArrayOrSingle3.getString(i4));
                    }
                }
                carSpawnerDraft.targetIds = (String[]) arrayList4.toArray(new String[0]);
            }
            JSONArray jSONArrayOptArrayOrSingle4 = JSONUtil.optArrayOrSingle(jSONObject2, "target tags");
            if (jSONArrayOptArrayOrSingle4 != null && jSONArrayOptArrayOrSingle4.length() > 0) {
                ArrayList arrayList5 = new ArrayList(jSONArrayOptArrayOrSingle4.length());
                for (int i5 = 0; i5 < jSONArrayOptArrayOrSingle4.length(); i5++) {
                    arrayList5.add(jSONArrayOptArrayOrSingle4.getString(i5));
                }
                carSpawnerDraft.targetTags = (String[]) arrayList5.toArray(new String[0]);
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("flags");
            if (jSONArrayOptJSONArray2 != null) {
                int i6 = 0;
                for (int i7 = 0; i7 < jSONArrayOptJSONArray2.length(); i7++) {
                    String string2 = jSONArrayOptJSONArray2.getString(i7);
                    string2.getClass();
                    switch (string2) {
                        case "military":
                            i6 |= 4;
                            break;
                        case "tractor":
                            i6 |= 16;
                            break;
                        case "police":
                            i6 |= 1;
                            break;
                        case "garbage":
                            i6 |= 8;
                            break;
                        case "snow plow":
                            i6 |= 32;
                            break;
                        case "swat":
                            i6 |= 2;
                            break;
                    }
                }
                carSpawnerDraft.carFlags = i6;
            }
            carSpawnerDraft.level = jSONObject2.optInt("level", 0);
            arrayList.add(carSpawnerDraft);
        }
        return (BuildingDraft.CarSpawnerDraft[]) arrayList.toArray(new BuildingDraft.CarSpawnerDraft[0]);
    }

    public final void loadFun(BuildingDraft buildingDraft) throws JSONException {
        buildingDraft.transitions = loadTransitions(this.src, "fun", buildingDraft.transitions);
        buildingDraft.onClickTransitions = loadTransitions(this.src, "on click fun", buildingDraft.onClickTransitions);
        buildingDraft.randomTransitions = loadTransitions(this.src, "random fun", buildingDraft.randomTransitions);
        buildingDraft.onEventTransitions = loadTransitions(this.src, "on event fun", buildingDraft.onEventTransitions);
        buildingDraft.onBuiltTransitions = loadTransitions(this.src, "on built fun", buildingDraft.onBuiltTransitions);
        buildingDraft.onDestroyTransitions = loadTransitions(this.src, "on destroy fun", buildingDraft.onDestroyTransitions);
        buildingDraft.hiddenOnClick = this.src.optBoolean("hidden on click", false);
    }

    public final void loadSmoke(BuildingDraft buildingDraft) throws JSONException {
        if (this.src.has("smoke")) {
            buildingDraft.smokeSpots = new ArrayList();
            JSONArray jSONArray = this.src.getJSONArray("smoke");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(C3670j8.x);
                int i2 = jSONObject.getInt("x");
                int i3 = jSONObject.getInt("y");
                Color colorLoadColor = loadColor(C3522b4.i.S, jSONObject);
                int[] iArrLoadTargetFrames = loadTargetFrames(jSONObject);
                Draft draft = Drafts.ALL.get(string);
                if (draft == null || !(draft instanceof SmokeDraft)) {
                    throw new JSONException("May not find smoke of id " + string);
                }
                buildingDraft.smokeSpots.add(new SmokeSpot((SmokeDraft) draft, i2, i3, colorLoadColor, iArrLoadTargetFrames));
            }
        }
    }

    public final void loadAnimations(BuildingDraft buildingDraft) throws JSONException {
        BuildingDraftLoader buildingDraftLoader;
        if (this.src.has("animation")) {
            List<AnimationSpot> listLoadAnimations = loadAnimations(buildingDraft.hashCode(), "animation");
            buildingDraft.animationSpots = listLoadAnimations;
            buildingDraftLoader = this;
            buildingDraft.animationSpotIndices = buildingDraftLoader.loadFrameAnimationIndices(buildingDraft.id, "frame animation indices", buildingDraft.frames.length, listLoadAnimations.size(), this.src);
        } else {
            buildingDraftLoader = this;
        }
        if (buildingDraftLoader.src.has("animation fg")) {
            List<AnimationSpot> listLoadAnimations2 = loadAnimations(buildingDraft.hashCode(), "animation fg");
            buildingDraft.animationFGSpots = listLoadAnimations2;
            buildingDraft.animationFGSpotIndices = buildingDraftLoader.loadFrameAnimationIndices(buildingDraft.id, "frame animation fg indices", buildingDraft.frames.length, listLoadAnimations2.size(), buildingDraftLoader.src);
        }
    }

    public final int[] getInfluencesById(String str) {
        int[] iArr = ((InfluenceDraft) Drafts.ALL.get(str)).induceVector;
        return Arrays.copyOf(iArr, iArr.length);
    }

    public final int[] getDefaultInfluences() {
        return getInfluencesById("$inf.default");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x04e5  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0570  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x058d  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x05af  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0622  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0652  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0696 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x06bd  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x06d1  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x06e3  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x06fe  */
    /* JADX WARN: Removed duplicated region for block: B:177:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x04d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void loadType(info.flowersoft.theotown.draft.BuildingDraft r22) throws info.flowersoft.theotown.util.json.JSONException {
        /*
            Method dump skipped, instruction units count: 1846
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.draftloader.BuildingDraftLoader.loadType(info.flowersoft.theotown.draft.BuildingDraft):void");
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.draftloader.BuildingDraftLoader$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$draft$BuildingType;

        static {
            int[] iArr = new int[BuildingType.values().length];
            $SwitchMap$info$flowersoft$theotown$draft$BuildingType = iArr;
            try {
                iArr[BuildingType.RESIDENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.COMMERCIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.INDUSTRIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.FARM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.HARBOR_IND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.HARBOR_PIER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.PARK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.SPORT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.TERRAIN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.DECORATION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.BUOY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.MILITARY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.AIRPORT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.WASTE_DISPOSAL.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.BODY_DISPOSAL.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.DESTROYED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.LANDMARK.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.AWARD.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.RAILWAY_STATION.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.POLICE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.SWAT.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.FIRE_BRIGADE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.MEDIC.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    public final void loadInfluences(BuildingDraft buildingDraft) {
        Composition composition = buildingDraft.composition;
        if (composition == null) {
            if (!buildingDraft.buildingType.isRCINotDeco() || buildingDraft.isPrivileged()) {
                buildingDraft.influenceInduceVector = loadInfluences(buildingDraft.influenceInduceVector);
            }
            buildingDraft.influenceInduceVector[InfluenceType.DENSITY.ordinal()] = ((buildingDraft.habitants + buildingDraft.workers) / 8) / buildingDraft.getArea();
        } else {
            buildingDraft.influenceInduceVector = composition.getInfluenceInduceVector();
        }
        if (buildingDraft.isPrivileged() || buildingDraft.buildingType.isRCINotDeco() || buildingDraft.composition != null) {
            return;
        }
        float fMax = 0.0f;
        for (int i = 0; i < InfluenceType.cachedValues().length; i++) {
            InfluenceType influenceType = InfluenceType.cachedValues()[i];
            if (!influenceType.isHidden()) {
                fMax += Math.max((influenceType.isPositive() ? 1.0f : -1.0f) * buildingDraft.influenceInduceVector[i], UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
        }
        float area = this.MIN_PRICE_FROM_INFLUENCE_AREA * fMax * buildingDraft.getArea();
        float area2 = fMax * this.MIN_MONTHLY_FROM_INFLUENCE_AREA * buildingDraft.getArea();
        buildingDraft.price = Math.max(buildingDraft.price, (int) Math.ceil(area));
        buildingDraft.monthlyPrice = Math.max(buildingDraft.monthlyPrice, (int) Math.ceil(area2));
    }

    public final void loadUpgrades(BuildingDraft buildingDraft) throws JSONException {
        BuildingDraft buildingDraft2;
        UpgradeDraft upgradeDraft;
        BuildingDraft buildingDraft3 = buildingDraft;
        if (this.src.has("upgrades")) {
            JSONArray jSONArray = this.src.getJSONArray("upgrades");
            buildingDraft3.upgrades = new ArrayList(jSONArray.length());
            int i = 0;
            while (i < jSONArray.length()) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject.optBoolean("active", true)) {
                    UpgradeDraft upgradeDraft2 = new UpgradeDraft();
                    loadDefaults(upgradeDraft2, jSONObject);
                    upgradeDraft2.type = "upgrade";
                    JSONObject jSONObject2 = jSONObject;
                    buildingDraft2 = buildingDraft3;
                    upgradeDraft2.frames = loadFrames("frames", "frame", jSONObject2, buildingDraft3, (int[]) null);
                    upgradeDraft2.monthlyPrice = signedPrice(jSONObject2.optInt("monthly price", 0));
                    if (!buildingDraft2.isPrivileged() && upgradeDraft2.monthlyPrice < 0) {
                        upgradeDraft2.monthlyPrice = -1L;
                    }
                    upgradeDraft2.price = signedPrice(jSONObject2.optInt("price", 0));
                    if (!buildingDraft2.isPrivileged() && upgradeDraft2.price < 0) {
                        upgradeDraft2.price = -1L;
                    }
                    upgradeDraft2.diamondPrice.set(Math.max(0, jSONObject2.optInt("diamond price")));
                    if (TheoTown.PREMIUM) {
                        upgradeDraft2.diamondPrice.setZero();
                    }
                    if (!buildingDraft2.buildingType.isRCINotDeco() || buildingDraft2.isPrivileged()) {
                        upgradeDraft2.influenceInduceVector = loadInfluences(jSONObject2);
                    } else {
                        upgradeDraft2.influenceInduceVector = new int[InfluenceType.cachedValues().length];
                    }
                    upgradeDraft2.water = jSONObject2.optLong("water");
                    upgradeDraft2.power = jSONObject2.optLong("power");
                    upgradeDraft2.onlyOne = jSONObject2.optBoolean("only one", false);
                    upgradeDraft2.buildTime = jSONObject2.optLong("build time", 0L);
                    if (jSONObject2.has("animation")) {
                        List<AnimationSpot> listLoadAnimations = loadAnimations(buildingDraft2.hashCode(), "animation", jSONObject2);
                        upgradeDraft2.animationSpots = listLoadAnimations;
                        int[][] iArrLoadFrameAnimationIndices = loadFrameAnimationIndices(upgradeDraft2.id, "frame animation indices", listLoadAnimations.size(), upgradeDraft2.animationSpots.size(), jSONObject2);
                        jSONObject2 = jSONObject2;
                        upgradeDraft2.animationSpotIndices = iArrLoadFrameAnimationIndices;
                    }
                    int[] iArr = CoverageAspect.values;
                    int[] iArr2 = new int[iArr.length];
                    upgradeDraft2.neededAspectAmount = iArr2;
                    int[] iArr3 = new int[iArr.length];
                    upgradeDraft2.aspectCapacity = iArr3;
                    JSONObject jSONObject3 = jSONObject2;
                    long jLoadAspectRaw = loadAspectRaw(buildingDraft2.buildingType, jSONObject3, iArr2, iArr3, buildingDraft2.isPrivileged());
                    if (!buildingDraft2.isPrivileged()) {
                        if (upgradeDraft2.diamondPrice.get() > 0) {
                            SpecialInt specialInt = upgradeDraft2.diamondPrice;
                            specialInt.set(Math.max(specialInt.get(), (int) (jLoadAspectRaw / 100)));
                        }
                        upgradeDraft2.price = Math.max(upgradeDraft2.price, jLoadAspectRaw);
                        upgradeDraft2.monthlyPrice = Math.max(upgradeDraft2.monthlyPrice, jLoadAspectRaw / 10);
                    }
                    upgradeDraft2.carSpawners = loadCarSpawners(jSONObject3, "car spawner", upgradeDraft2.carSpawners, buildingDraft2);
                    upgradeDraft2.parent = buildingDraft2;
                    if (buildingDraft2.isPrivileged()) {
                        upgradeDraft = upgradeDraft2;
                    } else {
                        upgradeDraft = upgradeDraft2;
                        limitInfluences(upgradeDraft, upgradeDraft2.influenceInduceVector, buildingDraft2.buildingType, upgradeDraft2.monthlyPrice, buildingDraft2.getArea());
                        upgradeDraft.power = limitPower(upgradeDraft, upgradeDraft.power, upgradeDraft.monthlyPrice, buildingDraft2.getArea());
                        upgradeDraft.water = limitWater(upgradeDraft, upgradeDraft.water, upgradeDraft.monthlyPrice, buildingDraft2.getArea());
                        if (buildingDraft2.buildingType.isRCINotDeco()) {
                            upgradeDraft.power = Math.min(upgradeDraft.power, 0L);
                            upgradeDraft.water = Math.min(upgradeDraft.water, 0L);
                        }
                    }
                    buildingDraft2.upgrades.add(upgradeDraft);
                    Drafts.ALL.put(upgradeDraft.id, upgradeDraft);
                } else {
                    buildingDraft2 = buildingDraft3;
                }
                i++;
                buildingDraft3 = buildingDraft2;
            }
        }
    }

    public final void loadPedestrian(BuildingDraft buildingDraft) throws JSONException {
        if (this.src.has("pedestrian")) {
            String string = this.src.getString("pedestrian");
            PedestrianDraft pedestrianDraft = (PedestrianDraft) Drafts.get(string, PedestrianDraft.class);
            if (pedestrianDraft == null) {
                throw new IllegalArgumentException("Could not find pedestrian of id " + string);
            }
            buildingDraft.pedestrianDraft = pedestrianDraft;
        }
        float fOptDouble = (float) this.src.optDouble("pedestrian count", 0.0d);
        buildingDraft.pedestrianCount = fOptDouble;
        if (fOptDouble < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fOptDouble > 100.0f || Float.isNaN(fOptDouble)) {
            buildingDraft.pedestrianCount = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
    }

    public final void loadAspects(BuildingDraft buildingDraft) throws JSONException {
        if (buildingDraft.neededAspectAmount == null) {
            buildingDraft.neededAspectAmount = new int[CoverageAspect.values.length];
        }
        if (buildingDraft.aspectCapacity == null) {
            int[] iArr = new int[CoverageAspect.values.length];
            buildingDraft.aspectCapacity = iArr;
            Arrays.fill(iArr, -1);
        }
        BuildingType buildingType = buildingDraft.buildingType;
        if (buildingType == BuildingType.RESIDENTIAL) {
            int[] iArr2 = buildingDraft.neededAspectAmount;
            int i = buildingDraft.habitants;
            iArr2[0] = i / 7;
            if (buildingDraft.level >= 2) {
                iArr2[1] = i / 7;
            }
            iArr2[2] = i;
        }
        if (buildingType.isRCINotDeco()) {
            JSONObject specificConfig = Resources.getSpecificConfig("waste");
            int iOptInt = specificConfig.optInt("habitant factor", 1);
            int iOptInt2 = specificConfig.optInt("worker factor", 1);
            int iOptInt3 = specificConfig.optInt("div factor", 2);
            int iOptInt4 = specificConfig.optInt("amount offset", 0);
            int iOptInt5 = specificConfig.optInt("max amount", 1000);
            int iOptInt6 = specificConfig.optInt("capacity factor", 10);
            int iOptInt7 = specificConfig.optInt("min capacity", 100);
            buildingDraft.neededAspectAmount[3] = Math.max(Math.min(iOptInt5, (((iOptInt * buildingDraft.habitants) + (iOptInt2 * buildingDraft.workers)) / iOptInt3) + iOptInt4), 0);
            buildingDraft.aspectCapacity[3] = Math.max(buildingDraft.neededAspectAmount[3] * iOptInt6, iOptInt7);
            JSONObject specificConfig2 = Resources.getSpecificConfig("body disposal");
            int iOptInt8 = specificConfig2.optInt("habitant factor", 1);
            int iOptInt9 = specificConfig2.optInt("worker factor", 1);
            int iOptInt10 = specificConfig2.optInt("div factor", 2);
            int iOptInt11 = specificConfig2.optInt("amount offset", 0);
            int iOptInt12 = specificConfig2.optInt("max amount", 1000);
            int iOptInt13 = specificConfig2.optInt("capacity factor", 10);
            int iOptInt14 = specificConfig2.optInt("min capacity", 100);
            buildingDraft.neededAspectAmount[4] = Math.max(Math.min(iOptInt12, (((iOptInt8 * buildingDraft.habitants) + (iOptInt9 * buildingDraft.workers)) / iOptInt10) + iOptInt11), 0);
            buildingDraft.aspectCapacity[4] = Math.max(iOptInt13 * buildingDraft.neededAspectAmount[4], iOptInt14);
            if (buildingDraft.neededAspectAmount[4] == 0) {
                buildingDraft.aspectCapacity[4] = 0;
            }
        }
        long jLoadAspectRaw = loadAspectRaw(buildingDraft.buildingType, this.src, buildingDraft.neededAspectAmount, buildingDraft.aspectCapacity, buildingDraft.isPrivileged());
        if (buildingDraft.isPrivileged()) {
            return;
        }
        if (buildingDraft.diamondPrice.get() > 0) {
            SpecialInt specialInt = buildingDraft.diamondPrice;
            specialInt.set(Math.max(specialInt.get(), (int) (jLoadAspectRaw / 100)));
        }
        buildingDraft.price = Math.max(buildingDraft.price, jLoadAspectRaw);
        buildingDraft.monthlyPrice = Math.max(buildingDraft.monthlyPrice, jLoadAspectRaw / 10);
    }

    public final long loadAspectRaw(BuildingType buildingType, JSONObject jSONObject, int[] iArr, int[] iArr2, boolean z) throws JSONException {
        long j = 0;
        for (int i : CoverageAspect.values) {
            if (z || ((buildingType == BuildingType.EDUCATION || (i != 0 && i != 1)) && (buildingType == BuildingType.MEDIC || i != 2))) {
                StringBuilder sb = new StringBuilder();
                sb.append("provide aspect ");
                String[] strArr = CoverageAspect.names;
                String str = strArr[i];
                Locale locale = Locale.ENGLISH;
                sb.append(str.toLowerCase(locale).replace('_', ' '));
                String string = sb.toString();
                boolean z2 = CoverageAspect.privileged[i];
                double d = CoverageAspect.pricePerProvision[i];
                double d2 = CoverageAspect.pricePerCapacity[i];
                int i2 = this.ASPECT_MAX_VALUE;
                int i3 = this.ASPECT_MAX_CAPACITY;
                if (jSONObject.has(string)) {
                    if (z2 && !z) {
                        throw new NotPrivilegedException(string);
                    }
                    int i4 = -MathUtils.clamp(jSONObject.getInt(string), -i2, i2);
                    iArr[i] = i4;
                    if (i4 < 0) {
                        j = (long) (j + (((double) (-i4)) * d));
                    }
                }
                String str2 = "aspect " + strArr[i].toLowerCase(locale).replace('_', ' ') + " capacity";
                if (!jSONObject.has(str2)) {
                    continue;
                } else {
                    if (z2 && !z) {
                        throw new NotPrivilegedException(str2);
                    }
                    int iClamp = MathUtils.clamp(jSONObject.getInt(str2), -i3, i3);
                    iArr2[i] = iClamp;
                    j = iClamp >= 0 ? (long) (j + (((double) iClamp) * d2)) : j + 50000;
                }
            }
        }
        return j;
    }
}
