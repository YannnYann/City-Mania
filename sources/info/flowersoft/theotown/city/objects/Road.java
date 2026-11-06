package info.flowersoft.theotown.city.objects;

import com.ironsource.C3670j8;
import com.ironsource.R6;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.scripting.LuaUtil;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public final class Road {
    public static AnimationDraft connectionOverlayDraft;
    public Car[] CarArray;
    public int absLevel;
    public AnimationSpots animationSpots;
    public AnimationSpots animationSpotsFG;
    public int bridgeType;
    public BusStop busStop;
    public int carCounter;
    public int chargeableCarCounter;
    public int connectionDir;
    public int dLevel;
    public List<RoadDecorationDraft> decorations;
    public int[] dirs;
    public RoadDraft draft;
    public long flags;
    public int frame;
    public int lastAppliedTrafficAmount;
    public int lastTrafficLightsChange;
    public int level;
    public LuaTable luaStorage;
    public LuaTable luaStorageProxy;
    public AnimationDraft occupation;
    public short pedestrianCount;
    public short pedestrianFlags;
    public Pedestrian[] pedestrians;
    public boolean pile;
    public float sidewalkOffset;
    public float sidewalkSize;
    public boolean slope;
    public byte snow;
    public final int tileHash;
    public float trafficAmount;
    public float trafficAmountLevel1;
    public float trafficAmountLevel2;
    public float trafficAmountLevel3;
    public int trafficLightFrame;
    public boolean trafficLights;
    public int x;
    public int y;

    public static void init() {
        connectionOverlayDraft = (AnimationDraft) Drafts.ALL.get("$anim_roadconnectionoverlay00");
    }

    public static void deInit() {
        connectionOverlayDraft = null;
    }

    public Road(JsonReader jsonReader, List<Bridge> list) throws MissingDraftException, IOException {
        this.CarArray = new Car[4];
        this.animationSpots = null;
        this.animationSpotsFG = null;
        this.frame = 0;
        this.trafficLightFrame = 0;
        this.lastTrafficLightsChange = 0;
        this.trafficAmount = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        int iNextInt = 0;
        int iNextInt2 = 0;
        int iNextInt3 = 0;
        int iNextInt4 = 0;
        boolean z = false;
        boolean zNextBoolean = true;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "bridge new":
                    jsonReader.beginObject();
                    Bridge bridge = new Bridge(jsonReader);
                    jsonReader.endObject();
                    if (list != null) {
                        list.add(bridge);
                    }
                    this.draft.hasBridge();
                    break;
                case "bridge":
                    if (this.draft.hasBridge()) {
                        jsonReader.beginObject();
                        Bridge bridge2 = new Bridge(jsonReader);
                        jsonReader.endObject();
                        if (list != null) {
                            list.add(bridge2);
                        }
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                    break;
                case "traffic light frame":
                    this.trafficLightFrame = jsonReader.nextInt();
                    break;
                case "f":
                case "frame":
                    this.frame = jsonReader.nextInt();
                    break;
                case "x":
                    iNextInt = jsonReader.nextInt();
                    break;
                case "y":
                    iNextInt2 = jsonReader.nextInt();
                    break;
                case "as":
                    initAnimationSpots();
                    AnimationSpots animationSpots = this.animationSpots;
                    if (animationSpots != null) {
                        animationSpots.loadSpeeds(jsonReader);
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                    break;
                case "bt":
                    this.bridgeType = jsonReader.nextInt();
                    break;
                case "id":
                    this.draft = (RoadDraft) Drafts.getOrThrow(jsonReader.nextString(), RoadDraft.class);
                    break;
                case "oc":
                    this.occupation = (AnimationDraft) Drafts.ALL.get(jsonReader.nextString());
                    break;
                case "ta":
                    this.trafficAmount = jsonReader.nextInt() / 100.0f;
                    break;
                case "tl":
                    zNextBoolean = jsonReader.nextBoolean();
                    z = true;
                    break;
                case "asc":
                    initAnimationSpots();
                    AnimationSpots animationSpots2 = this.animationSpots;
                    if (animationSpots2 != null) {
                        animationSpots2.loadColors(jsonReader);
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                    break;
                case "ctr":
                    this.carCounter = jsonReader.nextInt();
                    break;
                case "lua":
                    this.luaStorage = LuaTableSerializer.deserialize(jsonReader);
                    break;
                case "lvl":
                    iNextInt3 = jsonReader.nextInt();
                    break;
                case "taa":
                    jsonReader.beginArray();
                    this.trafficAmountLevel1 = jsonReader.nextInt() / 100.0f;
                    this.trafficAmountLevel2 = jsonReader.nextInt() / 100.0f;
                    this.trafficAmountLevel3 = jsonReader.nextInt() / 100.0f;
                    jsonReader.endArray();
                    break;
                case "asfg":
                    initAnimationSpotsFG();
                    AnimationSpots animationSpots3 = this.animationSpotsFG;
                    if (animationSpots3 != null) {
                        animationSpots3.loadSpeeds(jsonReader);
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                    break;
                case "cctr":
                    this.chargeableCarCounter = jsonReader.nextInt();
                    break;
                case "dlvl":
                    iNextInt4 = jsonReader.nextInt();
                    break;
                case "lata":
                    this.lastAppliedTrafficAmount = jsonReader.nextInt();
                    break;
                case "pile":
                    this.pile = jsonReader.nextBoolean();
                    break;
                case "snow":
                    this.snow = jsonReader.nextByte();
                    break;
                case "ascfg":
                    initAnimationSpotsFG();
                    AnimationSpots animationSpots4 = this.animationSpotsFG;
                    if (animationSpots4 != null) {
                        animationSpots4.loadColors(jsonReader);
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                    break;
                case "deco0":
                    RoadDecorationDraft roadDecorationDraft = (RoadDecorationDraft) Drafts.ALL.get(jsonReader.nextString());
                    if (roadDecorationDraft != null) {
                        ArrayList arrayList = new ArrayList();
                        this.decorations = arrayList;
                        arrayList.add(roadDecorationDraft);
                        break;
                    } else {
                        break;
                    }
                    break;
                case "decoN":
                    this.decorations = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        RoadDecorationDraft roadDecorationDraft2 = (RoadDecorationDraft) Drafts.get(jsonReader.nextString(), RoadDecorationDraft.class);
                        if (roadDecorationDraft2 != null) {
                            this.decorations.add(roadDecorationDraft2);
                        }
                    }
                    jsonReader.endArray();
                    if (this.decorations.isEmpty()) {
                        this.decorations = null;
                        break;
                    } else {
                        break;
                    }
                    break;
                case "connection dir":
                    this.connectionDir = jsonReader.nextInt();
                    break;
                case "last traffic lights change":
                    this.lastTrafficLightsChange = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        this.x = iNextInt;
        this.y = iNextInt2;
        this.level = iNextInt3;
        this.dLevel = iNextInt4;
        this.frame %= 64;
        RoadDraft roadDraft = this.draft;
        if (roadDraft.bridgeFrames == null && iNextInt3 > 0) {
            this.level = 0;
        }
        int i = this.level;
        if (i < roadDraft.minSupportedLevel || i > roadDraft.maxSupportedLevel) {
            throw new IllegalArgumentException("Road " + this.draft.id + " doesn't support level " + this.level);
        }
        if (z) {
            this.trafficLights = zNextBoolean;
        } else {
            this.trafficLights = shouldHaveTrafficLights();
        }
        this.trafficLights &= mayHaveTrafficLights();
        this.bridgeType = Math.max(Math.min(this.bridgeType, this.draft.countBridges() - 1), 0);
        updateFlagsAndDirs();
        this.tileHash = Hashing.hash(this.x, this.y) ^ this.draft.hashCode();
    }

    public Road(RoadDraft roadDraft, int i, int i2, int i3, int i4, int i5) {
        this.CarArray = new Car[4];
        this.animationSpots = null;
        this.animationSpotsFG = null;
        this.draft = roadDraft;
        this.x = i;
        this.y = i2;
        this.level = i3;
        this.dLevel = i4;
        this.frame = i5;
        this.trafficLights = false;
        updateFlagsAndDirs();
        this.tileHash = Hashing.hash(i, i2) ^ this.draft.hashCode();
    }

    public final void initAnimationSpots() {
        List<AnimationSpot> list;
        if (this.animationSpots != null || (list = this.draft.animationSpots) == null || list.isEmpty()) {
            return;
        }
        this.animationSpots = new AnimationSpots(this.draft.animationSpots.size());
    }

    public final void initAnimationSpotsFG() {
        List<AnimationSpot> list;
        if (this.animationSpotsFG != null || (list = this.draft.animationFGSpots) == null || list.isEmpty()) {
            return;
        }
        this.animationSpotsFG = new AnimationSpots(this.draft.animationFGSpots.size());
    }

    public LuaTable getLuaStorage() {
        return this.luaStorage;
    }

    public LuaTable getLuaStorageProxy() {
        if (this.luaStorage == null) {
            this.luaStorage = LuaValue.tableOf();
        }
        if (this.luaStorageProxy == null) {
            this.luaStorageProxy = LuaUtil.getProxy(this.luaStorage);
        }
        return this.luaStorageProxy;
    }

    public int addDecoration(RoadDecorationDraft roadDecorationDraft) {
        if (this.decorations == null) {
            this.decorations = new ArrayList();
        }
        this.decorations.add(roadDecorationDraft);
        updateFlagsAndDirs();
        return this.decorations.size();
    }

    public void addDecoration(RoadDecorationDraft roadDecorationDraft, int i) {
        if (this.decorations == null) {
            this.decorations = new ArrayList();
        }
        this.decorations.add(i, roadDecorationDraft);
        updateFlagsAndDirs();
    }

    public RoadDecorationDraft removeDecoration(int i) {
        List<RoadDecorationDraft> list = this.decorations;
        if (list == null || i < 0 || i >= list.size()) {
            return null;
        }
        RoadDecorationDraft roadDecorationDraft = this.decorations.get(i);
        this.decorations.remove(i);
        if (this.decorations.isEmpty()) {
            this.decorations = null;
        }
        updateFlagsAndDirs();
        return roadDecorationDraft;
    }

    public RoadDecorationDraft getDecoration(int i) {
        List<RoadDecorationDraft> list = this.decorations;
        if (list != null && i >= 0 && i < list.size()) {
            try {
                return this.decorations.get(i);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public RoadDecorationDraft getTopDecoration() {
        List<RoadDecorationDraft> list = this.decorations;
        if (list == null || list.size() == 0) {
            return null;
        }
        return getDecoration(countDecorations() - 1);
    }

    public int countDecorations() {
        List<RoadDecorationDraft> list = this.decorations;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public void setPile(boolean z) {
        this.pile = z;
    }

    public boolean isPile() {
        return this.pile;
    }

    public void save(JsonWriter jsonWriter, boolean z) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.draft.id);
        jsonWriter.name("f").value(this.frame);
        if (z) {
            AnimationSpots animationSpots = this.animationSpots;
            if (animationSpots != null) {
                animationSpots.saveSpeeds(jsonWriter, "as");
                this.animationSpots.saveColors(jsonWriter, "asc");
            }
            AnimationSpots animationSpots2 = this.animationSpotsFG;
            if (animationSpots2 != null) {
                animationSpots2.saveSpeeds(jsonWriter, "asfg");
                this.animationSpotsFG.saveColors(jsonWriter, "ascfg");
            }
            if (this.trafficLightFrame > 0) {
                jsonWriter.name("traffic light frame").value(this.trafficLightFrame);
            }
            if (this.lastTrafficLightsChange > 0) {
                jsonWriter.name("last traffic lights change").value(this.lastTrafficLightsChange);
            }
            jsonWriter.name("ta").value((int) (this.trafficAmount * 100.0f));
            jsonWriter.name("taa").beginArray().value((int) (this.trafficAmountLevel1 * 100.0f)).value((int) (this.trafficAmountLevel2 * 100.0f)).value((int) (this.trafficAmountLevel3 * 100.0f)).endArray();
            jsonWriter.name("x").value(this.x);
            jsonWriter.name("y").value(this.y);
            jsonWriter.name(R6.K0).value(this.carCounter);
            jsonWriter.name("cctr").value(this.chargeableCarCounter);
            if (this.lastAppliedTrafficAmount != 0) {
                jsonWriter.name("lata").value(this.lastAppliedTrafficAmount);
            }
            LuaTable luaTable = this.luaStorage;
            if (luaTable != null && luaTable.keyCount() > 0) {
                jsonWriter.name("lua");
                LuaTableSerializer.serialize(this.luaStorage, jsonWriter);
            }
        }
        if (mayHaveTrafficLights() || this.trafficLights) {
            jsonWriter.name("tl").value(this.trafficLights);
        }
        if (this.level != 0) {
            jsonWriter.name("lvl").value(this.level);
        }
        if (this.dLevel != 0) {
            jsonWriter.name("dlvl").value(this.dLevel);
        }
        if (this.pile) {
            jsonWriter.name("pile").value(this.pile);
        }
        if (this.connectionDir != 0) {
            jsonWriter.name("connection dir").value(this.connectionDir);
        }
        if (this.bridgeType != 0) {
            jsonWriter.name("bt").value(this.bridgeType);
        }
        if (this.occupation != null) {
            jsonWriter.name("oc").value(this.occupation.id);
        }
        List<RoadDecorationDraft> list = this.decorations;
        if (list != null && list.size() > 0) {
            if (this.decorations.size() == 1) {
                jsonWriter.name("deco0").value(this.decorations.get(0).id);
            } else {
                jsonWriter.name("decoN");
                jsonWriter.beginArray();
                for (int i = 0; i < this.decorations.size(); i++) {
                    jsonWriter.value(this.decorations.get(i).id);
                }
                jsonWriter.endArray();
            }
        }
        if (this.snow != 0) {
            jsonWriter.name("snow").value(this.snow);
        }
    }

    public AnimationDraft getOccupation() {
        return this.occupation;
    }

    public void setOccupation(AnimationDraft animationDraft) {
        this.occupation = animationDraft;
    }

    public float getOccupationSpeed() {
        JSONObject metaTag;
        AnimationDraft animationDraft = this.occupation;
        if (animationDraft == null || (metaTag = animationDraft.getMetaTag("road occupation")) == null) {
            return 1.0f;
        }
        return (float) metaTag.optDouble("speed", 1.0d);
    }

    public int getOccupationRemoveFlags() {
        JSONObject metaTag;
        AnimationDraft animationDraft = this.occupation;
        if (animationDraft == null || (metaTag = animationDraft.getMetaTag("road occupation")) == null) {
            return 0;
        }
        return metaTag.optInt("remove flags", 0);
    }

    public int getLevel() {
        return this.level;
    }

    public boolean mayHaveTrafficLights() {
        return this.draft.trafficLights != null && Direction.countDirections(this.frame % 16) >= 3 && this.dLevel == 0;
    }

    public boolean shouldHaveTrafficLights() {
        return this.draft.trafficLights != null && Direction.countDirections(this.frame % 16) >= 4 && this.dLevel == 0;
    }

    public void setTrafficLights(boolean z) {
        this.trafficLights = z && mayHaveTrafficLights();
    }

    public boolean hasTrafficLights() {
        return this.trafficLights && mayHaveTrafficLights();
    }

    public boolean isLocked() {
        JSONObject metaTag;
        AnimationDraft animationDraft = this.occupation;
        return (animationDraft == null || (metaTag = animationDraft.getMetaTag("road occupation")) == null || !metaTag.optBoolean("locked")) ? false : true;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public BusStop getBusStop() {
        return this.busStop;
    }

    public void setBusStop(BusStop busStop) {
        this.busStop = busStop;
        updateFlagsAndDirs();
    }

    public final int[] getEffectiveBridgeFrames() {
        int[] iArr;
        RoadDraft roadDraft = this.draft;
        int[] iArr2 = roadDraft.bridgeFrames;
        return (iArr2 == null || roadDraft.diagonalRoadOf == null || Direction.isCorner(getAlign() % 16) || (iArr = this.draft.diagonalRoadOf.bridgeFrames) == null) ? iArr2 : iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0168  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void draw(info.flowersoft.theotown.city.Drawer r26, boolean r27) {
        /*
            Method dump skipped, instruction units count: 860
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.city.objects.Road.draw(info.flowersoft.theotown.city.Drawer, boolean):void");
    }

    public void drawForeground(Drawer drawer) {
        int i;
        float f;
        int i2;
        int i3;
        int[] iArr;
        boolean z;
        boolean z2;
        int i4;
        drawer.engine.setType(13);
        int i5 = this.level * 12;
        int iRotateCW = Direction.rotateCW(this.frame % 16, drawer.rotation);
        int i6 = (-drawer.baseTerrainHeight) * 12;
        drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -i5);
        if (this.dLevel == 0) {
            BusStop busStop = this.busStop;
            if (busStop != null) {
                busStop.drawFront(drawer, iRotateCW);
                drawer.engine.setType(13);
            }
            if (this.occupation != null) {
                drawer.engine.setType(15);
                int[] iArr2 = this.occupation.frames;
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i6, iArr2[(((drawer.time / 200) + (this.x * 37)) + (this.y * 59)) % iArr2.length]);
                drawer.engine.setType(13);
            }
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i6);
            boolean zLightsOn = lightsOn(drawer);
            if (this.draft.animationFGSpots != null) {
                int i7 = iRotateCW + (((((this.frame / 16) + 4) - drawer.rotation) % 4) * 16);
                Drawing drawing = Drawing.getInstance();
                RoadDraft roadDraft = this.draft;
                z = zLightsOn;
                i = 16;
                f = 0.0f;
                drawing.drawAnimations(drawer, roadDraft.animationFGSpots, roadDraft.animationFGSpotIndices, this.frame, i7, drawer.time / 200.0f, drawer.animationSpotFlags, this.animationSpotsFG, z);
            } else {
                z = zLightsOn;
                i = 16;
                f = 0.0f;
            }
            if (this.decorations != null) {
                int i8 = 0;
                while (i8 < this.decorations.size()) {
                    RoadDecorationDraft decoration = getDecoration(i8);
                    drawer.engine.setType(14);
                    if (decoration == null || decoration.animationFGSpots == null) {
                        z2 = z;
                        i4 = i8;
                    } else {
                        int i9 = iRotateCW + (((((this.frame / 16) + 4) - drawer.rotation) % 4) * 16);
                        boolean z3 = z;
                        i4 = i8;
                        z2 = z3;
                        Drawing.getInstance().drawAnimations(drawer, decoration.animationFGSpots, decoration.animationFGSpotIndices, i9, i9, drawer.time / 200.0f, drawer.animationSpotFlags, z2);
                    }
                    i8 = i4 + 1;
                    z = z2;
                }
                drawer.engine.setType(13);
            }
            drawer.addShift(f, -i6);
        } else {
            i = 16;
            f = 0.0f;
        }
        if (this.dLevel == 0 && this.level == 0 && (i3 = drawer.upDirs) != 0 && (iArr = this.draft.tunnelFrames) != null) {
            drawer.draw(Resources.IMAGE_WORLD, f, i6, iArr[Direction.toIndex(Direction.rotateCW(i3, drawer.rotation)) + 8]);
        }
        if (mayHaveTrafficLights() && this.trafficLights) {
            boolean z4 = drawer.useShading;
            drawer.setUseShading(false);
            int trafficLightFrame = getTrafficLightFrame(drawer.time);
            if (drawer.rotation % 2 == 1) {
                trafficLightFrame = (trafficLightFrame + 2) % 4;
            }
            i2 = 0;
            drawer.setClipRect(0, i6 - 6, 32, i);
            drawer.draw(Resources.IMAGE_WORLD, f, i6, this.draft.trafficLights[trafficLightFrame]);
            drawer.resetClipping();
            drawer.setUseShading(z4);
        } else {
            i2 = 0;
        }
        drawer.addShift(f, i5);
        if (this.level <= 0 || this.dLevel != 0) {
            return;
        }
        int i10 = this.bridgeType * this.draft.framesPerBridge;
        int[] effectiveBridgeFrames = getEffectiveBridgeFrames();
        if (effectiveBridgeFrames != null && this.draft.framesPerBridge + i10 > effectiveBridgeFrames.length) {
            i10 = i2;
        }
        if (effectiveBridgeFrames != null) {
            if (!Direction.isIn(1, iRotateCW) && (this.level > 1 || !Direction.isIn(1, Direction.rotateCW(drawer.upDirs, drawer.rotation)))) {
                drawer.draw(Resources.IMAGE_WORLD, f, ((-(this.level - 1)) * 12) + i6, effectiveBridgeFrames[i10 + 7]);
            }
            if (Direction.isIn(8, iRotateCW)) {
                return;
            }
            if (this.level > 1 || !Direction.isIn(8, Direction.rotateCW(drawer.upDirs, drawer.rotation))) {
                drawer.draw(Resources.IMAGE_WORLD, f, ((-(this.level - 1)) * 12) + i6, effectiveBridgeFrames[i10 + 6]);
            }
        }
    }

    public final boolean lightsOn(Drawer drawer) {
        return 1.0f - Math.abs(1.0f - ((((drawer.daytime + 0.05f) + (((float) ((Math.abs(((long) this.tileHash) + (((long) Math.floor(drawer.daytimeDay + 0.5d)) * 2987)) % 10) - 5)) / 200.0f)) % 1.0f) * 2.0f)) < 0.4f;
    }

    public void drawForegroundTrafficLights(Drawer drawer) {
        if (mayHaveTrafficLights() && this.trafficLights) {
            boolean z = drawer.useShading;
            drawer.useShading = false;
            int i = this.level * 12;
            Direction.rotateCW(this.frame % 16, drawer.rotation);
            int i2 = (-drawer.baseTerrainHeight) * 12;
            int trafficLightFrame = getTrafficLightFrame(drawer.time);
            if (drawer.rotation % 2 == 1) {
                trafficLightFrame = (trafficLightFrame + 2) % 4;
            }
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -i);
            drawer.setClipRect(8, i2 - 6, 16, 16);
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i2, this.draft.trafficLights[trafficLightFrame]);
            drawer.resetClipping();
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i);
            drawer.setUseShading(z);
        }
    }

    public int getTrafficLightFrame(int i) {
        int i2 = i - this.lastTrafficLightsChange;
        int i3 = this.trafficLightFrame;
        boolean z = i3 % 2 == 0;
        RoadDraft roadDraft = this.draft;
        int i4 = roadDraft.greenPhase;
        int i5 = roadDraft.yellowPhase;
        if (i2 > (i4 + i5) * 2) {
            int i6 = i - ((i4 + i5) * 2);
            this.lastTrafficLightsChange = i6;
            i2 = i - i6;
        } else if (i2 < 0) {
            this.lastTrafficLightsChange = i;
            i2 = 0;
        }
        if (z && i2 >= i4) {
            this.trafficLightFrame = i3 + 1;
            this.lastTrafficLightsChange = i;
        } else if (!z && i2 >= i5) {
            this.trafficLightFrame = i3 + 1;
            this.lastTrafficLightsChange = i;
        }
        int i7 = this.trafficLightFrame % 4;
        this.trafficLightFrame = i7;
        return i7;
    }

    public final void updateFlagsAndDirs() {
        this.flags = getAlign() == 15 ? this.draft.xFlags : this.draft.flags;
        RoadDraft roadDraft = this.draft;
        this.dirs = roadDraft.dirs;
        this.sidewalkOffset = roadDraft.sidewalkOffset;
        this.sidewalkSize = roadDraft.sidewalkSize;
        int i = 0;
        boolean z = getAlign() == 15;
        if (this.decorations != null) {
            int i2 = 0;
            while (i < this.decorations.size()) {
                RoadDecorationDraft roadDecorationDraft = this.decorations.get(i);
                this.flags = (z ? roadDecorationDraft.xFlags : roadDecorationDraft.flags) | ((~(z ? roadDecorationDraft.removeXFlags : roadDecorationDraft.removeFlags)) & this.flags);
                i2 |= roadDecorationDraft.allowRoadCrossing ? 1 : 0;
                float f = roadDecorationDraft.sidewalkOffset;
                if (f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    this.sidewalkOffset = f;
                }
                float f2 = roadDecorationDraft.sidewalkSize;
                if (f2 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    this.sidewalkSize = f2;
                }
                int[] iArr = roadDecorationDraft.dirs;
                if (iArr != null) {
                    this.dirs = iArr;
                }
                i++;
            }
            i = i2;
        }
        BusStop busStop = getBusStop();
        if (busStop != null) {
            BusStopDraft draft = busStop.getDraft();
            this.flags = (getAlign() == 15 ? draft.xFlags : draft.flags) | this.flags;
        }
        if (i != 0) {
            this.pedestrianFlags = (short) (this.pedestrianFlags | 2);
        } else {
            this.pedestrianFlags = (short) (this.pedestrianFlags & (-3));
        }
    }

    public long getFlags() {
        return this.flags;
    }

    public void alignTo(int i) {
        alignToRaw(((this.frame / 16) * 16) + (i | this.connectionDir));
    }

    public void alignToRaw(int i) {
        this.frame = i;
        List<RoadDecorationDraft> list = this.decorations;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (!this.decorations.get(size).fitsRoad(this.flags, getAlign())) {
                    removeDecoration(size);
                }
            }
        }
        updateFlagsAndDirs();
    }

    public int getAlign() {
        return this.frame % 16;
    }

    public int getFrame() {
        return this.frame;
    }

    public int getOnewayDir() {
        return Direction.fromIndex(this.frame / 16);
    }

    public int getDirs(int i, int i2) {
        int[] iArr = this.dirs;
        return iArr[(((this.frame * 4) + i) + (i2 * 2)) % iArr.length];
    }

    public boolean hasConnection() {
        return this.connectionDir != 0;
    }

    public int getSnow() {
        return this.snow & 255;
    }

    public void setSnow(int i) {
        this.snow = (byte) Math.min(Math.max(i, 0), 255);
    }

    public void setConnection(int i) {
        this.connectionDir = i;
        alignTo(getAlign());
    }

    public int getConnectionDir() {
        return this.connectionDir;
    }

    public int countPedestrians() {
        return this.pedestrianCount;
    }

    public boolean haveSetupPedestrians() {
        return (this.pedestrianFlags & 1) != 0;
    }

    public void markSetupPedestrians() {
        this.pedestrianFlags = (short) (this.pedestrianFlags | 1);
    }

    public Pedestrian addPedestrian(Pedestrian pedestrian) {
        if (this.pedestrians == null) {
            this.pedestrians = new Pedestrian[8];
        }
        short s = this.pedestrianCount;
        Pedestrian[] pedestrianArr = this.pedestrians;
        if (s < pedestrianArr.length) {
            pedestrianArr[s] = pedestrian;
            this.pedestrianCount = (short) (s + 1);
            return null;
        }
        int iNextInt = Resources.RND.nextInt(pedestrianArr.length);
        Pedestrian[] pedestrianArr2 = this.pedestrians;
        Pedestrian pedestrian2 = pedestrianArr2[iNextInt];
        pedestrianArr2[iNextInt] = pedestrian;
        return pedestrian2;
    }

    public Pedestrian removePedestrianAt(int i) {
        Pedestrian[] pedestrianArr = this.pedestrians;
        Pedestrian pedestrian = pedestrianArr[i];
        if (pedestrian == null) {
            return null;
        }
        int i2 = this.pedestrianCount - 1;
        pedestrianArr[i] = pedestrianArr[i2];
        pedestrianArr[i2] = null;
        this.pedestrianCount = (short) i2;
        return pedestrian;
    }

    public boolean removePedestrian(Pedestrian pedestrian) {
        short s = this.pedestrianCount;
        for (int i = 0; i < s; i++) {
            Pedestrian[] pedestrianArr = this.pedestrians;
            if (pedestrianArr[i] == pedestrian) {
                int i2 = s - 1;
                pedestrianArr[i] = pedestrianArr[i2];
                pedestrianArr[i2] = null;
                this.pedestrianCount = (short) i2;
                return true;
            }
        }
        return false;
    }

    public Pedestrian getPedestrian(int i) {
        return this.pedestrians[i];
    }

    public void swapPedestrians(int i, int i2) {
        Pedestrian[] pedestrianArr = this.pedestrians;
        Pedestrian pedestrian = pedestrianArr[i];
        pedestrianArr[i] = pedestrianArr[i2];
        pedestrianArr[i2] = pedestrian;
    }

    public byte[] getPedestrianPaths(int i, int i2) {
        byte[][] bArr;
        int i3 = i + (i2 * 2);
        if (allowRoadCrossing()) {
            bArr = this.draft.allowDiagonal ? RoadDraft.CONNECTED_DIAGONAL_PEDESTRIAN_MAP : RoadDraft.CONNECTED_PEDESTRIAN_MAP;
        } else {
            bArr = this.draft.allowDiagonal ? RoadDraft.DIAGONAL_PEDESTRIAN_MAP : RoadDraft.SIMPLE_PEDESTRIAN_MAP;
        }
        return bArr[(getAlign() * 4) + i3];
    }

    public final boolean allowRoadCrossing() {
        return this.draft.allowRoadCrossing || (this.pedestrianFlags & 2) != 0;
    }

    public float getSidewalkOffset() {
        return this.sidewalkOffset;
    }

    public float getSidewalkSize() {
        return this.sidewalkSize;
    }

    public void setAnimationFrameSpeed(int i, float f, int i2) {
        initAnimationSpots();
        AnimationSpots animationSpots = this.animationSpots;
        if (animationSpots == null) {
            return;
        }
        animationSpots.setSpeedPreserveFrame(i2, this.draft.animationSpots.get(i), i, f);
    }

    public void setAnimationFrameColor(int i, Color color) {
        initAnimationSpots();
        AnimationSpots animationSpots = this.animationSpots;
        if (animationSpots == null) {
            return;
        }
        animationSpots.setColor(i, color);
    }

    public void setAnimationFrameOffset(int i, int i2, int i3) {
        initAnimationSpots();
        AnimationSpots animationSpots = this.animationSpots;
        if (animationSpots == null) {
            return;
        }
        animationSpots.setFrame(i3, this.draft.animationSpots.get(i), i, i2);
    }

    public int activeAnimationSpotFrame(int i, int i2) {
        initAnimationSpots();
        AnimationSpots animationSpots = this.animationSpots;
        if (animationSpots == null) {
            return 0;
        }
        return animationSpots.activeAnimationSpotFrame(i, this.draft.animationSpots.get(i2), i2);
    }

    public Color getAnimationFrameColor(int i) {
        AnimationSpots animationSpots = this.animationSpots;
        return animationSpots != null ? animationSpots.getColor(i) : Colors.WHITE;
    }

    public float getAnimationFrameSpeed(int i) {
        AnimationSpots animationSpots = this.animationSpots;
        if (animationSpots != null) {
            return animationSpots.getSpeed(i);
        }
        return 1.0f;
    }

    public void setAnimationFrameSpeedFG(int i, float f, int i2) {
        initAnimationSpotsFG();
        AnimationSpots animationSpots = this.animationSpotsFG;
        if (animationSpots == null) {
            return;
        }
        animationSpots.setSpeedPreserveFrame(i2, this.draft.animationFGSpots.get(i), i, f);
    }

    public void setAnimationFrameColorFG(int i, Color color) {
        initAnimationSpotsFG();
        AnimationSpots animationSpots = this.animationSpotsFG;
        if (animationSpots == null) {
            return;
        }
        animationSpots.setColor(i, color);
    }

    public void setAnimationFrameOffsetFG(int i, int i2, int i3) {
        initAnimationSpotsFG();
        AnimationSpots animationSpots = this.animationSpotsFG;
        if (animationSpots == null) {
            return;
        }
        animationSpots.setFrame(i3, this.draft.animationFGSpots.get(i), i, i2);
    }

    public int activeAnimationSpotFrameFG(int i, int i2) {
        initAnimationSpotsFG();
        AnimationSpots animationSpots = this.animationSpotsFG;
        if (animationSpots == null) {
            return 0;
        }
        return animationSpots.activeAnimationSpotFrame(i, this.draft.animationFGSpots.get(i2), i2);
    }

    public Color getAnimationFrameColorFG(int i) {
        AnimationSpots animationSpots = this.animationSpotsFG;
        return animationSpots != null ? animationSpots.getColor(i) : Colors.WHITE;
    }

    public float getAnimationFrameSpeedFG(int i) {
        AnimationSpots animationSpots = this.animationSpotsFG;
        if (animationSpots != null) {
            return animationSpots.getSpeed(i);
        }
        return 1.0f;
    }

    public int hashCode() {
        return this.tileHash;
    }
}
