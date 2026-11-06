package info.flowersoft.theotown.city.objects;

import com.badlogic.gdx.utils.TimeUtils;
import com.google.android.gms.common.api.Api;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.components.coverage.CoverageAspect;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.CraneDraft;
import info.flowersoft.theotown.draft.SiteDraft;
import info.flowersoft.theotown.draft.SmokeDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.scripting.LuaUtil;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.PackedInt2;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Tuple;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.NoLuaAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class Building implements Renameable {
    public int[] _BUILDING_CONTROLLERS;
    public int _IDLE_ID;
    public AnimationSpots animationSpots;
    public final int[] aspects;
    public AttributeContainer attributeContainer;
    public long buildDay;
    public long buildTimeMS;
    public IntList childrenXY;
    public CrimeType crime;
    public AnimationDraft customBuildingIcon;
    public int decoFrame;
    public BuildingDraft draft;
    public EmptyBuildingCause emptyCause;
    public short flags;
    public int frame;
    public int groundTileFrame;
    public int lastDrawn;
    public int[] lastDrawnN;
    public long lastIllness;
    public LuaTable luaStorage;
    public LuaTable luaStorageProxy;
    public int maxTerrainLevel;
    public int minTerrainLevel;
    public String name;
    public int ownTimeShift;
    public short parentX;
    public short parentY;
    public int pendingPedestrians;
    public List<Tuple<UpgradeDraft, Long>> pendingUpgrades;
    public float performance;
    public float reachability;
    public int spentMoney;
    public final int[] tempUsedAspectAmount;
    public String text;
    public int tileHash;
    public int totalTransferred;
    public List<UpgradeDraft> upgrades;
    public float usage;
    public final int[] usedAspectAmount;
    public int waiting;
    public float waterWaste;
    public int x;
    public int y;

    public static int getPivotX(int i, int i2, int i3, int i4, int i5) {
        if (i3 == 0) {
            return i + i4;
        }
        if (i3 == 1) {
            return ((i + i2) - 1) - i5;
        }
        if (i3 == 2) {
            return ((i + i2) - 1) - i4;
        }
        if (i3 != 3) {
            return -1;
        }
        return i + i5;
    }

    public static int getPivotY(int i, int i2, int i3, int i4, int i5) {
        if (i3 == 0) {
            return i + i5;
        }
        if (i3 == 1) {
            return i + i4;
        }
        if (i3 == 2) {
            return ((i + i2) - 1) - i5;
        }
        if (i3 != 3) {
            return -1;
        }
        return ((i + i2) - 1) - i4;
    }

    public final boolean getFlag(int i) {
        return (i & this.flags) != 0;
    }

    public final void setFlag(int i, boolean z) {
        if (z) {
            this.flags = (short) (((short) i) | this.flags);
        } else {
            this.flags = (short) (((short) (~i)) & this.flags);
        }
    }

    public Building() {
        this.aspects = new int[2];
        this.performance = 1.0f;
        this.animationSpots = null;
        this.groundTileFrame = -1;
        this.spentMoney = 0;
        setHasPowerFlag(true);
        setHasWaterFlag(true);
        setUntouchableFlag(false);
        int[] iArr = CoverageAspect.values;
        this.usedAspectAmount = new int[iArr.length];
        this.tempUsedAspectAmount = new int[iArr.length];
        this.reachability = 0.5f;
    }

    public void markAsNewlyBuilt() {
        this.buildTimeMS = TimeUtils.millis();
    }

    public void setParent(int i, int i2) {
        this.parentX = (short) i;
        this.parentY = (short) i2;
    }

    public void removeParent() {
        this.parentX = (short) -1;
        this.parentY = (short) -1;
    }

    public boolean hasParent() {
        return this.parentX >= 0;
    }

    public void addChild(int i, int i2) {
        if (this.childrenXY == null) {
            this.childrenXY = new IntList();
        }
        this.childrenXY.add(PackedInt2.pack(i, i2));
    }

    public int childCount() {
        IntList intList = this.childrenXY;
        if (intList == null) {
            return 0;
        }
        return intList.size();
    }

    public int getChildX(int i) {
        return PackedInt2.unpackX(this.childrenXY.get(i));
    }

    public int getChildY(int i) {
        return PackedInt2.unpackY(this.childrenXY.get(i));
    }

    public void removeChild(int i) {
        IntList intList = this.childrenXY;
        if (intList == null) {
            return;
        }
        intList.removeAt(i);
    }

    public void removeChild(int i, int i2) {
        if (this.childrenXY == null) {
            return;
        }
        int i3 = 0;
        while (i3 < this.childrenXY.size()) {
            int i4 = this.childrenXY.get(i3);
            if (PackedInt2.unpackX(i4) == i && PackedInt2.unpackY(i4) == i2) {
                this.childrenXY.removeAt(i3);
                i3--;
            }
            i3++;
        }
    }

    public boolean containsChild(int i, int i2) {
        return getChildIndex(i, i2) >= 0;
    }

    public int getChildIndex(int i, int i2) {
        if (this.childrenXY == null) {
            return -1;
        }
        for (int i3 = 0; i3 < this.childrenXY.size(); i3++) {
            int i4 = this.childrenXY.get(i3);
            if (PackedInt2.unpackX(i4) == i && PackedInt2.unpackY(i4) == i2) {
                return i3;
            }
        }
        return -1;
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

    public void setLuaStorage(LuaTable luaTable) {
        this.luaStorage = luaTable;
        this.luaStorageProxy = null;
    }

    public Building(JsonReader jsonReader) throws MissingDraftException, IOException {
        UpgradeDraft next;
        UpgradeDraft next2;
        this();
        setHasRoadFlag(true);
        this.frame = 0;
        this.decoFrame = -1;
        setIsEmptyFlag(false);
        setBuiltFlag(true);
        this.spentMoney = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "pending upgrades":
                    if (this.draft.hasUpgrades()) {
                        this.pendingUpgrades = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            jsonReader.beginObject();
                            long jNextLong = -1;
                            String strNextString = null;
                            while (jsonReader.hasNext()) {
                                String strNextName2 = jsonReader.nextName();
                                strNextName2.getClass();
                                if (strNextName2.equals(C3670j8.x)) {
                                    strNextString = jsonReader.nextString();
                                } else if (strNextName2.equals("day")) {
                                    jNextLong = jsonReader.nextLong();
                                } else {
                                    jsonReader.skipValue();
                                }
                            }
                            jsonReader.endObject();
                            if (strNextString != null && jNextLong >= 0) {
                                Iterator<UpgradeDraft> it = this.draft.upgrades.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        next = it.next();
                                        if (next.id.equals(strNextString)) {
                                        }
                                    } else {
                                        next = null;
                                    }
                                }
                                if (next != null) {
                                    this.pendingUpgrades.add(new Tuple<>(next, Long.valueOf(jNextLong)));
                                }
                            }
                        }
                        jsonReader.endArray();
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                    break;
                case "performance":
                    this.performance = jsonReader.nextInt() / 10000.0f;
                    break;
                case "build day":
                    this.buildDay = jsonReader.nextLong();
                    break;
                case "ecause":
                    this.emptyCause = EmptyBuildingCause.load(jsonReader);
                    break;
                case "parent":
                    int iNextInt = jsonReader.nextInt();
                    this.parentX = (short) PackedInt2.unpackX(iNextInt);
                    this.parentY = (short) PackedInt2.unpackY(iNextInt);
                    break;
                case "total transferred":
                    this.totalTransferred = jsonReader.nextInt();
                    break;
                case "smoney":
                    this.spentMoney = jsonReader.nextInt();
                    break;
                case "spent diamonds":
                    setSpentDiamondsOnFlag(jsonReader.nextBoolean());
                    break;
                case "u":
                    this.usage = jsonReader.nextInt() / 1000.0f;
                    break;
                case "w":
                    this.waterWaste = jsonReader.nextInt() / 1000.0f;
                    break;
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                case "as":
                case "animation spots":
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
                case "id":
                    this.draft = (BuildingDraft) Drafts.getOrThrow(jsonReader.nextString(), BuildingDraft.class);
                    initAnimationSpots();
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
                case "gtf":
                    this.groundTileFrame = jsonReader.nextInt();
                    break;
                case "lua":
                    setLuaStorage(LuaTableSerializer.deserialize(jsonReader));
                    break;
                case "rbt":
                    this.reachability = jsonReader.nextInt() / 100.0f;
                    break;
                case "lill":
                    this.lastIllness = jsonReader.nextLong();
                    break;
                case "name":
                    this.name = jsonReader.nextString();
                    break;
                case "text":
                    this.text = jsonReader.nextString();
                    break;
                case "has road":
                    setHasRoadFlag(jsonReader.nextBoolean());
                    break;
                case "aspcs":
                    jsonReader.beginArray();
                    for (int i = 0; i < 2 && jsonReader.hasNext(); i++) {
                        this.aspects[i] = jsonReader.nextInt();
                    }
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "empty":
                    setIsEmptyFlag(jsonReader.nextBoolean());
                    break;
                case "frame":
                    if (jsonReader.peek() == 6) {
                        jsonReader.skipValue();
                        break;
                    } else {
                        this.frame = Math.min(jsonReader.nextInt(), this.draft.frames.length - 1);
                        break;
                    }
                    break;
                case "untouchable":
                    setUntouchableFlag(jsonReader.nextBoolean());
                    break;
                case "is working":
                    setBuiltFlag(jsonReader.nextBoolean());
                    break;
                case "waiting":
                    this.waiting = jsonReader.nextInt();
                    break;
                case "deco frame":
                    this.decoFrame = jsonReader.nextInt();
                    break;
                case "upgrades":
                    if (this.draft.hasUpgrades()) {
                        this.upgrades = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            String strNextString2 = jsonReader.nextString();
                            Iterator<UpgradeDraft> it2 = this.draft.upgrades.iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    next2 = it2.next();
                                    if (next2.id.equals(strNextString2)) {
                                    }
                                } else {
                                    next2 = null;
                                }
                            }
                            if (next2 != null) {
                                this.upgrades.add(next2);
                            }
                        }
                        jsonReader.endArray();
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                    break;
                case "children":
                    this.childrenXY = new IntList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        this.childrenXY.add(jsonReader.nextInt());
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (!this.draft.buildingType.isRCIOrDeco()) {
            setIsEmptyFlag(false);
        }
        int[] iArr = this.draft.groundTileFrames;
        if (iArr != null) {
            int i2 = this.groundTileFrame;
            if (i2 == -1) {
                pickGroundTileFrame();
            } else {
                this.groundTileFrame = Math.max(Math.min(i2, iArr.length - 1), 0);
            }
        } else {
            this.groundTileFrame = -1;
        }
        int[] iArr2 = this.draft.decoFrames;
        if (iArr2 == null || iArr2.length == 0) {
            this.decoFrame = -1;
        }
        this.tileHash = Hashing.hash(this.x, this.y) ^ this.draft.hashCode();
    }

    public final void pickGroundTileFrame() {
        int[] iArr = this.draft.groundTileFrames;
        if (iArr != null) {
            this.groundTileFrame = Resources.RND.nextInt(iArr.length);
        } else {
            this.groundTileFrame = -1;
        }
    }

    public Building(BuildingDraft buildingDraft, int i, int i2, int i3, int i4, long j, boolean z) {
        this();
        this.draft = buildingDraft;
        this.x = i;
        this.y = i2;
        this.frame = i3;
        this.decoFrame = i4;
        this.buildDay = j;
        setBuiltFlag(z);
        setHasRoadFlag(true);
        this.ownTimeShift = Resources.RND.nextInt(200);
        this.tileHash = Hashing.hash(i, i2) ^ this.draft.hashCode();
        initAnimationSpots();
        pickGroundTileFrame();
    }

    public final void initAnimationSpots() {
        List<AnimationSpot> list;
        if (this.animationSpots != null || (list = this.draft.animationSpots) == null || list.isEmpty()) {
            return;
        }
        this.animationSpots = new AnimationSpots(this.draft.animationSpots.size());
    }

    public final boolean isBuiltFlag() {
        return getFlag(1);
    }

    public final void setBuiltFlag(boolean z) {
        setFlag(1, z);
    }

    public final boolean isEmptyFlag() {
        return getFlag(2);
    }

    public final void setIsEmptyFlag(boolean z) {
        setFlag(2, z);
    }

    public final boolean hasRoadFlag() {
        return getFlag(4);
    }

    public final void setHasRoadFlag(boolean z) {
        setFlag(4, z);
    }

    public final boolean isHasPowerFlag() {
        return getFlag(8);
    }

    public final void setHasPowerFlag(boolean z) {
        setFlag(8, z);
    }

    public final boolean isHasWaterFlag() {
        return getFlag(16);
    }

    public final void setHasWaterFlag(boolean z) {
        setFlag(16, z);
    }

    public final boolean isBurningFlag() {
        return getFlag(32);
    }

    public final void setBurningFlag(boolean z) {
        setFlag(32, z);
    }

    public final boolean isOverloadedFlag() {
        return getFlag(64);
    }

    public final void setOverloadedFlag(boolean z) {
        setFlag(64, z);
    }

    public final boolean isIllFlag() {
        return getFlag(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
    }

    public final void setIllFlag(boolean z) {
        setFlag(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, z);
    }

    public final boolean isSpentDiamondsOnFlag() {
        return getFlag(256);
    }

    public final void setSpentDiamondsOnFlag(boolean z) {
        setFlag(256, z);
    }

    public final boolean isUntouchableFlag() {
        return getFlag(EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE);
    }

    public final void setUntouchableFlag(boolean z) {
        setFlag(EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE, z);
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public boolean isSpentDiamondsOn() {
        return isSpentDiamondsOnFlag();
    }

    public void setSpentDiamondsOn(boolean z) {
        setSpentDiamondsOnFlag(z);
    }

    public float getReachability() {
        return this.reachability;
    }

    public void addReachability(float f) {
        this.reachability = Math.min(Math.max(this.reachability + f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
    }

    public int getFrame() {
        return this.frame;
    }

    public void setFrame(int i) {
        this.frame = i;
    }

    public void setBuilt() {
        setBuiltFlag(true);
        setHasWaterFlag(true);
        setHasPowerFlag(true);
        setHasRoadFlag(true);
    }

    public CrimeType getCrime() {
        return this.crime;
    }

    public void setCrime(CrimeType crimeType) {
        this.crime = crimeType;
    }

    public AnimationDraft getCustomBuildingIcon() {
        return this.customBuildingIcon;
    }

    public void setCustomBuildingIcon(AnimationDraft animationDraft) {
        this.customBuildingIcon = animationDraft;
    }

    public boolean isLocked() {
        return isLockedAndNotRemoveable() || !this.draft.removable;
    }

    public boolean isLockedAndNotRemoveable() {
        int i = this.aspects[0];
        if (isBurning() || isIll()) {
            return true;
        }
        return i > 0 && getProvidedAmount(3) > 0 && i > getAspectCapacity(3) / 10;
    }

    public boolean isIll() {
        return isIllFlag();
    }

    public void setIll(boolean z) {
        setIllFlag(z);
    }

    public boolean isOverloaded() {
        return isOverloadedFlag();
    }

    public void setOverloaded(boolean z) {
        setOverloadedFlag(z);
    }

    public void save(JsonWriter jsonWriter, boolean z) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.draft.id);
        jsonWriter.name("x").value(this.x);
        jsonWriter.name("y").value(this.y);
        jsonWriter.name("build day").value(this.buildDay);
        if (this.name != null) {
            jsonWriter.name("name").value(this.name);
        }
        if (isUntouchableFlag()) {
            jsonWriter.name("untouchable").value(true);
        }
        if (this.performance != 1.0f) {
            jsonWriter.name("performance").value(Math.round(this.performance * 10000.0f));
        }
        if (isSpentDiamondsOnFlag()) {
            jsonWriter.name("spent diamonds").value(true);
        }
        if (this.spentMoney != Integer.MAX_VALUE) {
            jsonWriter.name("smoney").value(this.spentMoney);
        }
        if (this.groundTileFrame > -1) {
            jsonWriter.name("gtf").value(this.groundTileFrame);
        }
        if (z) {
            if (this.frame > 0) {
                jsonWriter.name("frame").value(this.frame);
            }
            if (this.decoFrame > 0) {
                jsonWriter.name("deco frame").value(this.decoFrame);
            }
            if (!isBuiltFlag()) {
                jsonWriter.name("is working").value(false);
            }
            if (isEmptyFlag()) {
                jsonWriter.name("empty").value(true);
            }
            if (!hasRoadFlag()) {
                jsonWriter.name("has road").value(false);
            }
            if (this.reachability > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                jsonWriter.name("rbt").value((int) (this.reachability * 100.0f));
            }
            if (this.usage > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                jsonWriter.name("u").value((int) (this.usage * 1000.0f));
            }
            if (this.waiting > 0) {
                jsonWriter.name("waiting").value(this.waiting);
            }
            if (this.totalTransferred > 0) {
                jsonWriter.name("total transferred").value(this.totalTransferred);
            }
            if (this.waterWaste > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                jsonWriter.name("w").value((int) (this.waterWaste * 1000.0f));
            }
            List<UpgradeDraft> list = this.upgrades;
            if (list != null && !list.isEmpty()) {
                jsonWriter.name("upgrades").beginArray();
                Iterator<UpgradeDraft> it = this.upgrades.iterator();
                while (it.hasNext()) {
                    jsonWriter.value(it.next().id);
                }
                jsonWriter.endArray();
            }
            if (hasPendingUpgrades()) {
                jsonWriter.name("pending upgrades").beginArray();
                for (Tuple<UpgradeDraft, Long> tuple : this.pendingUpgrades) {
                    jsonWriter.beginObject();
                    jsonWriter.name(C3670j8.x).value(tuple.getFirst().id);
                    jsonWriter.name("day").value(tuple.getSecond().longValue());
                    jsonWriter.endObject();
                }
                jsonWriter.endArray();
            }
            boolean z2 = false;
            for (int i = 0; i < 2 && !z2; i++) {
                z2 = this.aspects[i] != 0;
            }
            if (z2) {
                jsonWriter.name("aspcs");
                jsonWriter.beginArray();
                for (int i2 = 0; i2 < 2; i2++) {
                    jsonWriter.value(this.aspects[i2]);
                }
                jsonWriter.endArray();
            }
            AnimationSpots animationSpots = this.animationSpots;
            if (animationSpots != null) {
                animationSpots.saveSpeeds(jsonWriter, "as");
                this.animationSpots.saveColors(jsonWriter, "asc");
            }
            LuaTable luaTable = this.luaStorage;
            if (luaTable != null && luaTable.keyCount() > 0) {
                jsonWriter.name("lua");
                LuaTableSerializer.serialize(this.luaStorage, jsonWriter);
            }
            if (this.lastIllness > 0) {
                jsonWriter.name("lill").value(this.lastIllness);
            }
            if (this.text != null) {
                jsonWriter.name(C3522b4.i.K0).value(this.text);
            }
            if (hasParent()) {
                jsonWriter.name("parent").value(PackedInt2.pack(this.parentX, this.parentY));
            }
            if (childCount() > 0) {
                jsonWriter.name("children").beginArray();
                for (int i3 = 0; i3 < this.childrenXY.size(); i3++) {
                    jsonWriter.value(this.childrenXY.get(i3));
                }
                jsonWriter.endArray();
            }
            if (!isEmpty() || this.emptyCause == null) {
                return;
            }
            jsonWriter.name("ecause");
            this.emptyCause.save(jsonWriter);
        }
    }

    public EmptyBuildingCause getEmptyCause() {
        if (!isEmpty()) {
            return null;
        }
        EmptyBuildingCause emptyBuildingCause = this.emptyCause;
        return emptyBuildingCause != null ? emptyBuildingCause : EmptyBuildingCause.getUnknown();
    }

    public long getLastIllness() {
        return this.lastIllness;
    }

    public void setLastIllness(long j) {
        this.lastIllness = j;
    }

    public float getOverallUsage() {
        return Math.max(this.usage, this.waiting / this.draft.capacity);
    }

    public float getPerformance() {
        return this.performance;
    }

    public void setPerformance(float f) {
        this.performance = Math.min(Math.max(f, this.draft.performanceMin), this.draft.performanceMax);
    }

    public boolean addWaiter() {
        return addWaiters(1);
    }

    public boolean addWaiters(int i) {
        int i2 = this.waiting + i;
        this.waiting = i2;
        return i2 <= this.draft.capacity;
    }

    public void removeWaiters(int i) {
        this.totalTransferred += Math.min(i, this.waiting);
        float fMin = Math.min((this.waiting * 2.0f) / this.draft.capacity, 1.0f);
        float f = this.usage;
        if (fMin > f) {
            this.usage = (f * 0.5f) + (fMin * 0.5f);
        } else {
            this.usage = (f * 0.9f) + (fMin * 0.1f);
        }
        this.waiting = Math.max(this.waiting - i, 0);
    }

    public int getWaiting() {
        return this.waiting;
    }

    public int getTotalTransferred() {
        return this.totalTransferred;
    }

    public boolean isUntouchable() {
        return isUntouchableFlag();
    }

    public void setUntouchable(boolean z) {
        setUntouchableFlag(z);
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public int getWidth() {
        return this.draft.getWidth(this.frame);
    }

    public int getHeight() {
        return this.draft.getHeight(this.frame);
    }

    public int getVisualWidth(int i) {
        if ((i & 1) == 0) {
            return getWidth();
        }
        return getHeight();
    }

    public int getVisualHeight(int i) {
        if ((i & 1) == 0) {
            return getHeight();
        }
        return getWidth();
    }

    public BuildingDraft getDraft() {
        return this.draft;
    }

    public int[] getAspects() {
        return this.aspects;
    }

    public long getPrice() {
        long j = this.draft.price;
        if (this.upgrades != null) {
            for (int i = 0; i < this.upgrades.size(); i++) {
                j += this.upgrades.get(i).price;
            }
        }
        return j;
    }

    public long getMonthlyPrice() {
        long j = this.draft.monthlyPrice;
        if (this.upgrades != null) {
            for (int i = 0; i < this.upgrades.size(); i++) {
                j += this.upgrades.get(i).monthlyPrice;
            }
        }
        float f = this.performance;
        return Math.round(j * ((0.8f * f * f * f) + 0.2f));
    }

    public ZoneDraft getZone() {
        return this.draft.zone;
    }

    public BuildingType getBuildingType() {
        return this.draft.buildingType;
    }

    public String getDraftId() {
        return this.draft.id;
    }

    public String getUnifiedDraftId() {
        return this.draft.getUnifiedId();
    }

    public int[] getInfluenceInduceVector() {
        int[] iArr;
        boolean z;
        double dFloor;
        List<UpgradeDraft> list = this.upgrades;
        if (list == null || list.isEmpty()) {
            iArr = this.draft.influenceInduceVector;
            z = false;
        } else {
            iArr = (int[]) this.draft.influenceInduceVector.clone();
            for (int i = 0; i < this.upgrades.size(); i++) {
                UpgradeDraft upgradeDraft = this.upgrades.get(i);
                for (int i2 = 0; i2 < iArr.length; i2++) {
                    iArr[i2] = iArr[i2] + upgradeDraft.influenceInduceVector[i2];
                }
            }
            z = true;
        }
        if (this.performance != 1.0f) {
            if (!z) {
                iArr = (int[]) iArr.clone();
            }
            for (int i3 = 0; i3 < iArr.length; i3++) {
                if (iArr[i3] > 0) {
                    dFloor = Math.ceil(r2 * this.performance);
                } else {
                    dFloor = Math.floor(r2 * this.performance);
                }
                iArr[i3] = (int) dFloor;
            }
        }
        return iArr;
    }

    public boolean needsRoad() {
        return this.draft.needsRoad;
    }

    public List<UpgradeDraft> getUpgrades() {
        List<UpgradeDraft> list = this.upgrades;
        return list == null ? Collections.EMPTY_LIST : list;
    }

    public void draw(Drawer drawer) {
        drawer.engine.setType(12);
        float f = this.maxTerrainLevel;
        if (this.draft.supportsSlope) {
            f = drawer.terrainHeight;
        }
        drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-f) * 12.0f);
        if (isBuiltFlag()) {
            drawFinished(drawer);
        } else {
            drawInConstruction(drawer);
        }
        drawNewlyBuiltAnimation(drawer);
        drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f * 12.0f);
    }

    public void setAnimationTimeShift(int i, int i2) {
        this.ownTimeShift = i2 - i;
    }

    public int getAnimationTimeShift(int i) {
        return i + this.ownTimeShift;
    }

    public final void drawFinished(Drawer drawer) {
        double d;
        char c;
        float f;
        int i;
        int i2;
        int i3;
        char c2;
        int i4;
        float f2;
        Building building;
        Engine engine;
        float f3;
        int i5;
        int i6;
        boolean z;
        float f4;
        int i7;
        int i8;
        int iRotateCW;
        Drawer drawer2 = drawer;
        int i9 = this.groundTileFrame;
        if (i9 > -1) {
            drawGroundFrames(drawer2, this.draft.groundTileFrames[i9]);
        }
        int i10 = drawer2.time + this.ownTimeShift;
        if (i10 < 0) {
            i10 -= Integer.MIN_VALUE;
        }
        int i11 = i10;
        float f5 = ((this.draft.randomizeAnimation ? (this.x * 23941) + (this.y * 39517) : 0) + i11) / 200.0f;
        int i12 = drawer2.animationSpotFlags;
        if (isBurning()) {
            i12 |= 4;
        }
        int i13 = i12;
        if (this.draft.animation) {
            this.frame = Math.round(f5) % this.draft.frames.length;
        }
        boolean zHasPendingUpgrades = hasPendingUpgrades();
        float f6 = 2.0f;
        float f7 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (zHasPendingUpgrades) {
            UpgradeDraft first = this.pendingUpgrades.get(0).getFirst();
            long jLongValue = this.pendingUpgrades.get(0).getSecond().longValue();
            long j = first.buildTime;
            long j2 = jLongValue + j;
            d = 1.0d;
            float fMin = Math.min(Math.max((float) (1.0d - ((j2 - drawer2.day) / j)), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
            List<SiteDraft> list = Drafts.SITES;
            drawSiteBackground(list.get(this.ownTimeShift % list.size()), drawer2, fMin, 1.0f - Math.abs(((1.0f - fMin) * 2.0f) - 1.0f), j2);
            drawer2 = drawer2;
        } else {
            d = 1.0d;
        }
        Building building2 = this;
        if (building2.isEmpty()) {
            drawer2.engine.setColor(Colors.GRAY);
        }
        int iMin = building2.frame;
        int i14 = 1;
        if (iMin >= 0) {
            BuildingDraft buildingDraft = building2.draft;
            if (buildingDraft.rotationAware) {
                if (buildingDraft.extRotationAware) {
                    i8 = iMin & (-16);
                    iRotateCW = Direction.rotateCW(iMin & 15, drawer2.rotation);
                } else {
                    i8 = ((iMin + 4) - drawer2.rotation) % 4;
                    iRotateCW = (iMin / 4) * 4;
                }
                iMin = iRotateCW + i8;
            }
            iMin = Math.min(iMin, building2.draft.frames.length - 1);
            drawer2.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, building2.draft.frames[iMin]);
        }
        int i15 = iMin;
        int i16 = building2.decoFrame;
        if (i16 >= 0) {
            int iMin2 = Math.min(i16, building2.draft.decoFrames.length - 1);
            building2.decoFrame = iMin2;
            drawer2.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, building2.draft.decoFrames[iMin2]);
        }
        int i17 = i11;
        long jFloor = ((long) building2.tileHash) + (((long) Math.floor(drawer2.daytimeDay + 0.5d)) * 2987);
        boolean z2 = 1.0f - Math.abs(1.0f - ((((drawer2.daytime + 0.05f) + (((float) (building2.draft.randomizeLights ? (Math.abs(jFloor) % 10) - 5 : 0L)) / 50.0f)) % 1.0f) * 2.0f)) < 0.3f && building2.hasPower() && !building2.inConstruction() && !building2.isEmpty() && ((float) (jFloor % 100)) / 100.0f <= building2.draft.nightLightProbability;
        if (building2.draft.animationSpots != null) {
            Drawing drawing = Drawing.getInstance();
            BuildingDraft buildingDraft2 = building2.draft;
            c = 0;
            f = f5;
            i = i13;
            drawing.drawAnimations(drawer2, buildingDraft2.animationSpots, buildingDraft2.animationSpotIndices, building2.frame, i15, f, i, building2.animationSpots, z2);
        } else {
            c = 0;
            f = f5;
            i = i13;
        }
        if (building2.draft.hasUpgrades() && building2.upgrades != null) {
            int i18 = 0;
            while (i18 < 2) {
                int i19 = 0;
                while (i19 < building2.upgrades.size()) {
                    UpgradeDraft upgradeDraft = building2.upgrades.get(i19);
                    int[] iArr = upgradeDraft.frames;
                    if (iArr.length > i18) {
                        drawer2.draw(Resources.IMAGE_WORLD, f7, f7, iArr[i18]);
                    }
                    if (upgradeDraft.animationSpots == null || i18 != i14) {
                        i6 = i19;
                        z = z2;
                        f4 = f6;
                        i7 = i18;
                    } else {
                        i6 = i19;
                        f4 = f6;
                        i7 = i18;
                        Drawing.getInstance().drawAnimations(drawer2, upgradeDraft.animationSpots, upgradeDraft.animationSpotIndices, building2.frame, i15, f, i, null, z2);
                        z = z2;
                    }
                    i19 = i6 + 1;
                    i18 = i7;
                    z2 = z;
                    f6 = f4;
                }
                boolean z3 = z2;
                float f8 = f6;
                int i20 = i18;
                if (building2.hasPendingUpgrades()) {
                    Engine engine2 = drawer2.engine;
                    int transparency = engine2.getTransparency();
                    UpgradeDraft first2 = building2.pendingUpgrades.get(0).getFirst();
                    long jLongValue2 = building2.pendingUpgrades.get(0).getSecond().longValue();
                    int i21 = i15;
                    long j3 = first2.buildTime;
                    long j4 = jLongValue2 + j3;
                    int i22 = i17;
                    float fMin2 = Math.min(Math.max((float) (d - ((j4 - drawer2.day) / j3)), f7), 1.0f);
                    float f9 = 1.0f - fMin2;
                    engine2.setTransparency((int) (((double) transparency) * (((double) fMin2) + (((Math.sin((((double) (i22 % 1000)) * 3.141592653589793d) / 1000.0d) * 0.5d) + 0.5d) * ((double) f9)))));
                    int[] iArr2 = first2.frames;
                    if (iArr2.length > i20) {
                        drawer2.draw(Resources.IMAGE_WORLD, f7, f7, iArr2[i20]);
                    }
                    if (first2.animationSpots == null || i20 != 1) {
                        building = this;
                        engine = engine2;
                        i17 = i22;
                        f3 = f9;
                        i2 = i21;
                        i5 = transparency;
                    } else {
                        building = this;
                        engine = engine2;
                        i17 = i22;
                        f3 = f9;
                        i5 = transparency;
                        Drawing.getInstance().drawAnimations(drawer2, first2.animationSpots, first2.animationSpotIndices, building.frame, i21, f, i, null, false);
                        i2 = i21;
                    }
                    i3 = i;
                    f2 = f;
                    engine.setTransparency(i5);
                    i4 = 1;
                    if (i20 == 1) {
                        List<SiteDraft> list2 = Drafts.SITES;
                        c2 = 0;
                        Building building3 = building;
                        building3.drawSiteForeground(list2.get(building.ownTimeShift % list2.size()), drawer, fMin2, 1.0f - Math.abs((f3 * f8) - 1.0f), j4);
                        building2 = building3;
                        drawer2 = drawer;
                    } else {
                        drawer2 = drawer;
                        building2 = building;
                        c2 = 0;
                    }
                } else {
                    i2 = i15;
                    i3 = i;
                    c2 = c;
                    i4 = i14;
                    f2 = f;
                }
                i18 = i20 + 1;
                f = f2;
                i = i3;
                i15 = i2;
                i14 = i4;
                z2 = z3;
                f6 = f8;
                c = c2;
                f7 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }
        }
        int i23 = i15;
        float f10 = f;
        if (building2.isWorking() && building2.draft.smokeSpots != null && !building2.isEmptyFlag() && drawer2.lod.drawSmoke()) {
            for (int i24 = 0; i24 < building2.draft.smokeSpots.size(); i24++) {
                Drawing.getInstance().drawSmoke(drawer2, i23, building2.draft.smokeSpots.get(i24), i17);
            }
        }
        drawer2.engine.setColor(Colors.WHITE);
        if (building2.isBurningFlag() && building2.draft.useFireFrames) {
            Drawing.getInstance().drawFires(drawer2, building2.getVisualWidth(drawer2.rotation), building2.getVisualHeight(drawer2.rotation), i17, building2.frame, f10);
        }
        if (building2.isIll() && drawer2.engine.getAdditive() == 0) {
            building2.drawSick(drawer2, building2.getVisualWidth(drawer2.rotation), building2.getVisualHeight(drawer2.rotation), i17);
        }
        if (building2.hasPendingUpgrades()) {
            return;
        }
        drawIcon(drawer);
    }

    public final void drawSick(Drawer drawer, int i, int i2, int i3) {
        int i4;
        int i5;
        int i6 = i;
        float width = Resources.IMAGE_WORLD.getWidth(Resources.FRAME_CIRCLE);
        float height = Resources.IMAGE_WORLD.getHeight(Resources.FRAME_CIRCLE);
        drawer.setUseShading(false);
        Engine engine = drawer.engine;
        int red = engine.getRed();
        int green = engine.getGreen();
        int blue = engine.getBlue();
        int transparency = engine.getTransparency();
        engine.setColor(255, 60, 60);
        int i7 = i6 + i2;
        float f = (((i7 - 2) * 32) / 4) + 16;
        int i8 = this.draft.buildHeight;
        float f2 = ((((i6 - i2) * 16) / 4) + 4) - (i8 * 4);
        float fMax = (Math.max(2.0f * f, i8 * 8) * 0.8f) / width;
        float f3 = width * 0.5f;
        float f4 = height * 0.5f;
        engine.setTransparency(80);
        drawer.engine.setScale(drawer.scaleX * fMax, fMax * drawer.scaleY);
        drawer.draw(Resources.IMAGE_WORLD, f - (f3 * fMax), f2 - (f4 * fMax), Resources.FRAME_CIRCLE);
        engine.setTransparency(200);
        int i9 = 0;
        while (i9 < i7 - 1) {
            if (i9 < i6) {
                i4 = i9;
                i5 = 0;
            } else {
                i4 = i6 - 1;
                i5 = (i9 - i6) + 1;
            }
            float f5 = (r5 & 16777215) / 1.6777215E7f;
            int i10 = i9;
            float fSin = (((float) Math.sin((((double) ((i3 + Hashing.hash(this.x + i4, this.y + i5)) % 8000)) * 6.283185307179586d) / 8000.0d)) * 0.2f) + 1.0f;
            float f6 = (((i4 + i5) * 32) / 2) + (((r5 & 255) / 255.0f) * 32.0f);
            float f7 = ((((i4 - i5) * 16) / 2) - 4) - ((((65535 & r5) / 65535.0f) * 8.0f) * this.draft.buildHeight);
            float f8 = (f5 + 0.3f) * fSin;
            drawer.engine.setScale(drawer.scaleX * f8, f8 * drawer.scaleY);
            drawer.draw(Resources.IMAGE_WORLD, f6 - (f3 * f8), f7 - (f4 * f8), Resources.FRAME_CIRCLE);
            i9 = i10 + 1;
            i6 = i;
        }
        drawer.engine.setScale(drawer.scaleX, drawer.scaleY);
        drawer.setUseShading(true);
        engine.setColor(red, green, blue);
        engine.setTransparency(transparency);
    }

    public AnimationDraft getBuildingIcon() {
        AnimationDraft unhappy = this.customBuildingIcon;
        if (!isEmptyFlag()) {
            if (isIllFlag()) {
                unhappy = BuildingIcons.INSTANCE.getIllness();
            } else if (!hasNeededRoad()) {
                unhappy = BuildingIcons.INSTANCE.getNoRoad();
            } else if (!isHasPowerFlag()) {
                unhappy = BuildingIcons.INSTANCE.getNoEnergy();
            } else if (!isHasWaterFlag()) {
                unhappy = BuildingIcons.INSTANCE.getNoWater();
            } else if (isOverloadedFlag()) {
                unhappy = BuildingIcons.INSTANCE.getOverloaded();
            } else if (isFullOfWaste()) {
                unhappy = getProvidedAmount(3) > 0 ? BuildingIcons.INSTANCE.getWasteOverloaded() : BuildingIcons.INSTANCE.getWaste();
            } else if (isFullOfDeadPeople()) {
                unhappy = getProvidedAmount(4) > 0 ? BuildingIcons.INSTANCE.getDeadBodiesOverloaded() : BuildingIcons.INSTANCE.getDeadBodies();
            } else {
                AttributeContainer attributeContainer = this.attributeContainer;
                if (attributeContainer != null && attributeContainer.isUnhappy()) {
                    unhappy = BuildingIcons.INSTANCE.getUnhappy();
                }
            }
        }
        CrimeType crimeType = this.crime;
        return crimeType != null ? crimeType.getBuildingIcon() : unhappy;
    }

    public final void drawIcon(Drawer drawer) {
        AnimationDraft buildingIcon = getBuildingIcon();
        if (buildingIcon != null) {
            int[] iArr = buildingIcon.frames;
            if (iArr.length > 0) {
                drawIcon(drawer, iArr[0]);
            }
        }
    }

    public boolean isFullOfWaste() {
        int aspectCapacity;
        int i = this.aspects[0];
        return i > 0 && (aspectCapacity = getAspectCapacity(3)) > 0 && i >= aspectCapacity;
    }

    public boolean isFullOfDeadPeople() {
        int aspectCapacity;
        int i = this.aspects[1];
        return i > 0 && (aspectCapacity = getAspectCapacity(4)) > 0 && i >= aspectCapacity;
    }

    public final void drawIcon(Drawer drawer, int i) {
        drawer.drawSign(((getWidth() + getHeight()) * 32) / 4, (Math.max(this.draft.buildHeight, 1) * (-16)) / 2, i);
    }

    public final void drawGroundFrames(Drawer drawer, int i) {
        for (int visualHeight = getVisualHeight(drawer.rotation) - 1; visualHeight >= 0; visualHeight--) {
            for (int i2 = 0; i2 < getVisualWidth(drawer.rotation); i2++) {
                drawer.draw(Resources.IMAGE_WORLD, ((i2 + visualHeight) * 32) / 2, ((i2 - visualHeight) * 16) / 2, i);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void drawInConstruction(info.flowersoft.theotown.city.Drawer r20) {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.city.objects.Building.drawInConstruction(info.flowersoft.theotown.city.Drawer):void");
    }

    public final void drawSitePart(Drawer drawer, int i, int i2, SiteDraft siteDraft, int i3, float f, int i4) {
        int i5 = siteDraft.framesPerProgress;
        int iMin = Math.min((int) (i5 * f), i5 - 1);
        int i6 = siteDraft.framesPerFloor;
        int i7 = i3 + (iMin * i6);
        if (i6 == 4) {
            i7 += i4;
        }
        drawer.engine.setColor(siteDraft.color);
        float f2 = i;
        float f3 = i2;
        drawer.draw(Resources.IMAGE_WORLD, f2, f3, siteDraft.frames[i7]);
        int[] iArr = siteDraft.framesFG;
        if (iArr == null || iArr[i7] == 0) {
            return;
        }
        drawer.engine.setColor(siteDraft.colorFG);
        drawer.draw(Resources.IMAGE_WORLD, f2, f3, siteDraft.framesFG[i7]);
    }

    public final int getSiteShift(int i, int i2) {
        return (((i + this.x) * 89931) + ((i2 + this.y) * 731) + 9541) & 3;
    }

    public final void drawSiteBackground(SiteDraft siteDraft, Drawer drawer, float f, float f2, long j) {
        Building building = this;
        SiteDraft siteDraft2 = siteDraft;
        int i = siteDraft2.framesPerProgress * siteDraft2.framesPerFloor;
        int iAbs = i * ((int) ((((long) building.ownTimeShift) + Math.abs(j)) % ((long) (siteDraft2.frames.length / i))));
        float f3 = ((building.draft.buildHeight * 8) * f2) / siteDraft2.heightPerFloor;
        List<CraneDraft> list = Drafts.CRANES;
        CraneDraft craneDraft = list.get((int) Math.abs((((long) (building.ownTimeShift * 3)) + j) % ((long) list.size())));
        int i2 = building.ownTimeShift;
        int length = ((int) (((((long) i2) + (3 * j)) % ((long) craneDraft.frames.length)) / 4)) * 4;
        float f4 = (building.draft.buildHeight * f2) + 3.0f;
        int i3 = (int) ((((((long) drawer.day) * 37) + ((long) i2)) / 5) % 2);
        int i4 = 16;
        if (building.getWidth() > 1 && building.getHeight() > 1 && f < 0.75f) {
            int i5 = 0;
            while (i5 < f4) {
                drawer.draw(Resources.IMAGE_WORLD, i4, (-8) - (i5 * 8), craneDraft.frames[length + i3]);
                i5++;
                i4 = i4;
            }
        }
        int i6 = 0;
        while (true) {
            float f5 = i6;
            if (f5 < f3) {
                for (int visualHeight = building.getVisualHeight(drawer.rotation) - 1; visualHeight >= 0; visualHeight--) {
                    building.drawSitePart(drawer, (visualHeight * 32) / 2, (((0 - visualHeight) * 16) / 2) - (siteDraft2.heightPerFloor * i6), siteDraft2, iAbs, Math.min((f3 - f5) + (building.getSiteShift(0, visualHeight) * 0.1f), 1.0f), 2);
                }
                int visualHeight2 = building.getVisualHeight(drawer.rotation) - 1;
                int i7 = 0;
                while (i7 <= building.getVisualWidth(drawer.rotation) - 1) {
                    building.drawSitePart(drawer, ((i7 + visualHeight2) * 32) / 2, (((i7 - visualHeight2) * 16) / 2) - (siteDraft2.heightPerFloor * i6), siteDraft2, iAbs, Math.min((f3 - f5) + (building.getSiteShift(i7, visualHeight2) * 0.1f), 1.0f), 1);
                    i7++;
                    building = this;
                    siteDraft2 = siteDraft;
                }
                i6++;
                building = this;
                siteDraft2 = siteDraft;
            } else {
                drawer.engine.setColor(Colors.WHITE);
                return;
            }
        }
    }

    public final void drawSiteForeground(SiteDraft siteDraft, Drawer drawer, float f, float f2, long j) {
        Building building = this;
        SiteDraft siteDraft2 = siteDraft;
        Drawer drawer2 = drawer;
        int i = siteDraft2.framesPerProgress * siteDraft2.framesPerFloor;
        int iAbs = i * ((int) ((((long) building.ownTimeShift) + Math.abs(j)) % ((long) (siteDraft2.frames.length / i))));
        float f3 = ((building.draft.buildHeight * 8) * f2) / siteDraft2.heightPerFloor;
        List<CraneDraft> list = Drafts.CRANES;
        CraneDraft craneDraft = list.get((int) ((((long) (building.ownTimeShift * 3)) + j) % ((long) list.size())));
        int i2 = building.ownTimeShift;
        int length = ((int) (((((long) i2) + (3 * j)) % ((long) craneDraft.frames.length)) / 4)) * 4;
        float f4 = (building.draft.buildHeight * f2) + 3.0f;
        int i3 = (int) ((((((long) drawer2.day) * 37) + ((long) i2)) / 5) % 2);
        int visualWidth = building.getVisualWidth(drawer2.rotation);
        int visualHeight = building.getVisualHeight(drawer2.rotation);
        int i4 = 0;
        while (true) {
            float f5 = i4;
            if (f5 >= f3) {
                break;
            }
            int i5 = visualHeight - 1;
            while (i5 >= 0) {
                int i6 = visualWidth - 1;
                building.drawSitePart(drawer2, ((i6 + i5) * 32) / 2, (((i6 - i5) * 16) / 2) - (siteDraft2.heightPerFloor * i4), siteDraft2, iAbs, Math.min((f3 - f5) + (building.getSiteShift(i6, i5) * 0.1f), 1.0f), 0);
                i5--;
                drawer2 = drawer;
                i4 = i4;
                f5 = f5;
                f3 = f3;
            }
            int i7 = i4;
            float f6 = f5;
            float f7 = f3;
            int i8 = 0;
            while (i8 < visualWidth) {
                building.drawSitePart(drawer, (i8 * 32) / 2, ((i8 * 16) / 2) - (siteDraft2.heightPerFloor * i7), siteDraft2, iAbs, Math.min((f7 - f6) + (building.getSiteShift(i8, 0) * 0.1f), 1.0f), 3);
                i8++;
                building = this;
                siteDraft2 = siteDraft;
            }
            drawer2 = drawer;
            i4 = i7 + 1;
            building = this;
            siteDraft2 = siteDraft;
            f3 = f7;
        }
        drawer2.engine.setColor(Colors.WHITE);
        if (visualWidth <= 1 || visualHeight <= 1 || f >= 0.75f) {
            return;
        }
        drawer2.draw(Resources.IMAGE_WORLD, 16, (-8) - ((int) (f4 * 8.0f)), craneDraft.frames[length + i3 + 2]);
    }

    public final void drawNewlyBuiltAnimation(Drawer drawer) {
        if (this.buildTimeMS == 0) {
            return;
        }
        long jMillis = TimeUtils.millis() - this.buildTimeMS;
        if (jMillis < 0 || jMillis >= 800) {
            this.buildTimeMS = 0L;
            return;
        }
        float f = jMillis / 800.0f;
        int visualWidth = getVisualWidth(drawer.rotation);
        int visualHeight = getVisualHeight(drawer.rotation);
        int i = ((SmokeDraft) Drafts.get("$watervapor00", SmokeDraft.class)).frames[4];
        float f2 = f - 0.5f;
        int transparency = drawer.engine.getTransparency();
        drawer.engine.setTransparency((int) (transparency * 0.1f * (1.0f - ((4.0f * f2) * f2))));
        float scaleX = drawer.engine.getScaleX();
        float scaleY = drawer.engine.getScaleY();
        float f3 = (0.2f * f) + 0.6f;
        drawer.engine.setScale(scaleX * f3, f3 * scaleY);
        float f4 = f * (-8.0f);
        while (true) {
            visualHeight--;
            if (visualHeight <= 0) {
                break;
            }
            int i2 = visualWidth - 1;
            drawer.draw(Resources.IMAGE_WORLD, (((i2 + visualHeight) + 1.0f) * 32.0f) / 2.0f, (((i2 - visualHeight) * 16) / 2.0f) + f4 + (((Integer.MAX_VALUE & Hashing.hash(i2, visualHeight)) % 5) - 2), i);
        }
        int i3 = 0;
        int i4 = 0;
        while (i4 < visualWidth) {
            drawer.draw(Resources.IMAGE_WORLD, ((i4 + 1.0f) * 32.0f) / 2.0f, ((i4 * 16) / 2.0f) + f4 + (((Hashing.hash(i4, i3) & Api.BaseClientBuilder.API_PRIORITY_OTHER) % 5) - 2), i);
            i4++;
            i3 = 0;
        }
        drawer.engine.setColor(Colors.WHITE);
        drawer.engine.setTransparency(transparency);
        drawer.engine.setScale(scaleX, scaleY);
    }

    public boolean containsTile(int i, int i2) {
        int i3;
        int i4 = this.x;
        return i4 <= i && i < i4 + getWidth() && (i3 = this.y) <= i2 && i2 < i3 + getHeight();
    }

    public boolean isPivot(int i, int i2, int i3) {
        return isPivot(i, i2, i3, this.draft, this.frame, this.x, this.y, 0, 0);
    }

    public static boolean isPivot(int i, int i2, int i3, BuildingDraft buildingDraft, int i4, int i5, int i6, int i7, int i8) {
        return i == getPivotX(i5, buildingDraft.getWidth(i4), i3, i7, i8) && i2 == getPivotY(i6, buildingDraft.getHeight(i4), i3, i7, i8);
    }

    public int getPivotX(int i) {
        return getPivotX(this.x, getWidth(), i, 0, 0);
    }

    public int getPivotY(int i) {
        return getPivotY(this.y, getHeight(), i, 0, 0);
    }

    public int getPivotXN(int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int i3 = width > height ? (((((-(width - 1)) / height) + i2) - 1) * height) + width : 0;
        if (i == 0) {
            return this.x + i3;
        }
        if (i == 1) {
            return ((this.x + width) - 1) - i3;
        }
        if (i == 2) {
            return ((this.x + width) - 1) - i3;
        }
        if (i != 3) {
            return -1;
        }
        return this.x + i3;
    }

    public int getPivotYN(int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int i3 = width < height ? (((((-(height - 1)) / width) + i2) - 1) * width) + height : 0;
        if (i == 0) {
            return this.y + i3;
        }
        if (i == 1) {
            return this.y + i3;
        }
        if (i == 2) {
            return ((this.y + height) - 1) - i3;
        }
        if (i != 3) {
            return -1;
        }
        return ((this.y + height) - 1) - i3;
    }

    public int countCurrentHabitants() {
        if (isBuiltFlag()) {
            return this.draft.habitants;
        }
        return 0;
    }

    public long getBuildDay() {
        return this.buildDay;
    }

    public void setBuildDay(long j) {
        this.buildDay = j;
    }

    public void applyDayTimeShift(long j) {
        this.buildDay += j;
    }

    public double getDaysBuilt(double d) {
        return (d - this.buildDay) - ((double) this.draft.buildTime);
    }

    public boolean isWorking() {
        return isBuiltFlag() && !hasPendingUpgrades() && hasNeededRoad() && hasPower() && hasWater() && !isBurning() && !isEmpty();
    }

    public boolean isEmpty() {
        return isEmptyFlag();
    }

    public boolean isDestroyed() {
        return this.draft.buildingType == BuildingType.DESTROYED;
    }

    public void setEmpty(boolean z, EmptyBuildingCause emptyBuildingCause) {
        if (this.draft.buildingType.isRCIOrDeco()) {
            setIsEmptyFlag(z);
            this.emptyCause = emptyBuildingCause;
        }
    }

    public boolean hasPower() {
        return isHasPowerFlag();
    }

    public boolean inConstruction() {
        return !isBuiltFlag();
    }

    public void setHasRoad(boolean z) {
        setHasRoadFlag(z);
    }

    public boolean hasNeededRoad() {
        return (!this.draft.needsRoad) | hasRoadFlag();
    }

    public boolean hasRoad() {
        return hasRoadFlag();
    }

    public boolean hasUpgrade(UpgradeDraft upgradeDraft) {
        List<UpgradeDraft> list = this.upgrades;
        return list != null && list.contains(upgradeDraft);
    }

    public boolean hasPendingUpgrade(UpgradeDraft upgradeDraft) {
        if (this.pendingUpgrades != null) {
            for (int i = 0; i < this.pendingUpgrades.size(); i++) {
                if (this.pendingUpgrades.get(i).getFirst() == upgradeDraft) {
                    return true;
                }
            }
        }
        return false;
    }

    public int getOverallHabitants() {
        if (isEmptyFlag()) {
            return 0;
        }
        return this.draft.habitants;
    }

    public int getOverallCommercialJobs() {
        if (this.draft.zone.base != Zones.getInstance().COMMERCIAL0 || isEmptyFlag()) {
            return 0;
        }
        return this.draft.workers;
    }

    public int getOverallIndustrialJobs() {
        if (this.draft.zone.base == Zones.getInstance().COMMERCIAL0 || isEmptyFlag()) {
            return 0;
        }
        return this.draft.workers;
    }

    public int getCurrentJobs() {
        return getCurrentCommercialJobs() + getCurrentIndustrialJobs();
    }

    public int getOverallJobs() {
        return getOverallCommercialJobs() + getOverallIndustrialJobs();
    }

    public int getOverallPeople() {
        return getOverallHabitants() + getOverallCommercialJobs() + getOverallIndustrialJobs();
    }

    public int getCurrentPeople() {
        if (isBuiltFlag()) {
            return getOverallPeople();
        }
        return 0;
    }

    public int getCurrentHabitants() {
        if (isBuiltFlag()) {
            return getOverallHabitants();
        }
        return 0;
    }

    public int getCurrentCommercialJobs() {
        if (isBuiltFlag()) {
            return getOverallCommercialJobs();
        }
        return 0;
    }

    public int getCurrentIndustrialJobs() {
        if (isBuiltFlag()) {
            return getOverallIndustrialJobs();
        }
        return 0;
    }

    public int getLevel() {
        return this.draft.level - 1;
    }

    public long getPower() {
        long j = this.draft.power != 0 ? -1L : 0L;
        if (!inConstruction() && !isEmpty() && hasNeededRoad()) {
            j = this.draft.power;
            if (this.upgrades != null) {
                for (int i = 0; i < this.upgrades.size(); i++) {
                    j += this.upgrades.get(i).power;
                }
            }
        }
        return Math.round(j * this.performance);
    }

    public void setHasPower(boolean z) {
        setHasPowerFlag(z || getPower() >= 0);
    }

    public long getWater() {
        long j = this.draft.water != 0 ? -1L : 0L;
        if (!inConstruction() && !isEmpty() && hasNeededRoad()) {
            j = this.draft.water;
            if (this.upgrades != null) {
                for (int i = 0; i < this.upgrades.size(); i++) {
                    j += this.upgrades.get(i).water;
                }
            }
        }
        return Math.round(((j < 0 || hasPower()) ? j : -1L) * this.performance);
    }

    public boolean hasWater() {
        return isHasWaterFlag();
    }

    public float getWaterWaste() {
        return this.waterWaste;
    }

    public void setHasWater(boolean z, float f) {
        setHasWaterFlag(z || getWater() >= 0);
        this.waterWaste = f;
    }

    public boolean isBurning() {
        return isBurningFlag();
    }

    public void setBurning(boolean z) {
        setBurningFlag(z);
    }

    public void appendUpgrade(UpgradeDraft upgradeDraft, long j) {
        if (this.pendingUpgrades == null) {
            this.pendingUpgrades = new ArrayList();
        }
        this.pendingUpgrades.add(new Tuple<>(upgradeDraft, Long.valueOf(j)));
    }

    public boolean hasPendingUpgrades() {
        List<Tuple<UpgradeDraft, Long>> list = this.pendingUpgrades;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public UpgradeDraft getPendingUpgrade() {
        List<Tuple<UpgradeDraft, Long>> list = this.pendingUpgrades;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.pendingUpgrades.get(0).getFirst();
    }

    public double getPendingUpgradeDaysLeft(double d) {
        List<Tuple<UpgradeDraft, Long>> list = this.pendingUpgrades;
        if (list == null || list.isEmpty()) {
            return -1.0d;
        }
        return (this.pendingUpgrades.get(0).getSecond().longValue() + this.pendingUpgrades.get(0).getFirst().buildTime) - d;
    }

    public void skipPendingUpgradeDays(long j) {
        List<Tuple<UpgradeDraft, Long>> list = this.pendingUpgrades;
        if (list == null || list.isEmpty()) {
            return;
        }
        Tuple<UpgradeDraft, Long> tuple = this.pendingUpgrades.get(0);
        this.pendingUpgrades.set(0, new Tuple<>(tuple.getFirst(), Long.valueOf(tuple.getSecond().longValue() - j)));
    }

    public void removeUpgrade(UpgradeDraft upgradeDraft) {
        if (this.upgrades == null || !hasUpgrade(upgradeDraft)) {
            return;
        }
        this.upgrades.remove(upgradeDraft);
    }

    public void addFinishedUpgrade(UpgradeDraft upgradeDraft) {
        if (this.upgrades == null) {
            this.upgrades = new ArrayList();
        }
        if (hasUpgrade(upgradeDraft)) {
            return;
        }
        this.upgrades.add(upgradeDraft);
    }

    public void finalizeUpgrade(UpgradeDraft upgradeDraft) {
        List<UpgradeDraft> list;
        List<Tuple<UpgradeDraft, Long>> list2 = this.pendingUpgrades;
        if (list2 != null) {
            Iterator<Tuple<UpgradeDraft, Long>> it = list2.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().getFirst() == upgradeDraft) {
                        it.remove();
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (this.draft.hasUpgrades()) {
            if (upgradeDraft.onlyOne && (list = this.upgrades) != null) {
                list.clear();
            }
            ArrayList arrayList = new ArrayList(getUpgrades().size() + 1);
            for (UpgradeDraft upgradeDraft2 : this.draft.upgrades) {
                if (hasUpgrade(upgradeDraft2) || upgradeDraft2 == upgradeDraft) {
                    arrayList.add(upgradeDraft2);
                }
            }
            this.upgrades = arrayList;
        }
    }

    public int getUsedAspectAmount(int i) {
        return this.usedAspectAmount[i];
    }

    public void setUsedAspectAmount(int i, int i2) {
        this.usedAspectAmount[i] = i2;
    }

    public int getTempUsedAspectAmount(int i) {
        return this.tempUsedAspectAmount[i];
    }

    public void setTempUsedAspectAmount(int i, int i2) {
        this.tempUsedAspectAmount[i] = i2;
    }

    public AttributeContainer getAttributeContainer() {
        return this.attributeContainer;
    }

    public void setAttributeContainer(AttributeContainer attributeContainer) {
        this.attributeContainer = attributeContainer;
    }

    @Override // info.flowersoft.theotown.city.objects.Renameable
    public String getName() {
        return this.name;
    }

    @Override // info.flowersoft.theotown.city.objects.Renameable
    public void setName(String str) {
        if (str == null || str.trim().isEmpty()) {
            this.name = null;
        } else {
            this.name = str;
        }
    }

    public int hashCode() {
        return this.tileHash;
    }

    public String toString() {
        return "Building (" + this.x + "|" + this.y + ") of type " + this.draft.buildingType.name() + " from draft " + this.draft.id;
    }

    public int getNeededAmount(int i) {
        int i2 = this.draft.neededAspectAmount[i];
        if (this.upgrades != null) {
            for (int i3 = 0; i3 < this.upgrades.size(); i3++) {
                i2 += this.upgrades.get(i3).neededAspectAmount[i];
            }
        }
        return Math.round(Math.max(i2, 0) * this.performance);
    }

    public int getProvidedAmount(int i) {
        int i2 = -this.draft.neededAspectAmount[i];
        if (this.upgrades != null) {
            for (int i3 = 0; i3 < this.upgrades.size(); i3++) {
                i2 -= this.upgrades.get(i3).neededAspectAmount[i];
            }
        }
        return Math.round(Math.max(i2, 0) * this.performance);
    }

    public int getAspectCapacity(int i) {
        int i2 = this.draft.aspectCapacity[i];
        if (this.upgrades != null) {
            for (int i3 = 0; i3 < this.upgrades.size(); i3++) {
                i2 += this.upgrades.get(i3).aspectCapacity[i];
            }
        }
        return i2;
    }

    public void setAnimationFrameSpeed(int i, float f, int i2) {
        initAnimationSpots();
        AnimationSpots animationSpots = this.animationSpots;
        if (animationSpots == null) {
            return;
        }
        animationSpots.setSpeedPreserveFrame(i2 + this.ownTimeShift, this.draft.animationSpots.get(i), i, f);
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
        animationSpots.setFrame(i3 + this.ownTimeShift, this.draft.animationSpots.get(i), i, i2);
    }

    public int activeAnimationSpotFrame(int i, int i2) {
        initAnimationSpots();
        AnimationSpots animationSpots = this.animationSpots;
        if (animationSpots == null) {
            return 0;
        }
        return animationSpots.activeAnimationSpotFrame(i + this.ownTimeShift, this.draft.animationSpots.get(i2), i2);
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

    public int getMinTerrainLevel() {
        return this.minTerrainLevel;
    }

    public int getMaxTerrainLevel() {
        return this.maxTerrainLevel;
    }

    public void setTerrainLevels(int i, int i2) {
        this.minTerrainLevel = i;
        this.maxTerrainLevel = i2;
    }

    public int getPendingPedestrians() {
        return this.pendingPedestrians;
    }

    public void setPendingPedestrians(int i) {
        this.pendingPedestrians = i;
    }

    public boolean isSpentMoneyUnknown() {
        return this.spentMoney == Integer.MAX_VALUE;
    }

    public int getSpentMoney() {
        return this.spentMoney;
    }

    @NoLuaAccess
    public void setSpentMoney(int i) {
        this.spentMoney = i;
    }
}
