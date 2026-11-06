package info.flowersoft.theotown.city.modifier;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.city.objects.Rail;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.BinaryJsonReader;
import io.blueflower.stapel2d.util.json.BinaryJsonWriter;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CityReverter {
    public int actionX;
    public int actionY;
    public final DefaultBudget budget;
    public final City city;
    public final CityModifier cityModifier;
    public CityState endState;
    public CityState endStateComplete;
    public boolean forward;
    public JsonWriter jsonWriter;
    public ByteArrayOutputStream os;
    public int startSX;
    public int startSY;
    public CityState startState;
    public CityState startStateComplete;
    public int startTX;
    public int startTY;
    public int sx;
    public int sy;
    public final Tiles tiles;
    public long timeBuilding;
    public long timeGround;
    public long timePipe;
    public long timeRoad;
    public long timeTree;
    public long timeWire;
    public int tx;
    public int ty;
    public final FenceDraft[] EMPTY_FENCE_ARRAY = new FenceDraft[4];
    public final GameHandler handler = GameHandler.getInstance();

    public CityReverter(City city) {
        this.city = city;
        this.tiles = city.getTiles();
        this.cityModifier = new CityModifier(city, true);
        this.budget = (DefaultBudget) city.getComponent(0);
    }

    public void begin(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.actionX = i5;
        this.actionY = i6;
        this.sx = Math.max(Math.min(i, i3) - i7, 0);
        this.sy = Math.max(Math.min(i2, i4) - i7, 0);
        this.tx = Math.min(Math.max(i, i3) + i7, this.city.getWidth() - 1);
        int iMin = Math.min(Math.max(i2, i4) + i7, this.city.getHeight() - 1);
        this.ty = iMin;
        this.startSX = this.sx;
        this.startSY = this.sy;
        this.startTX = this.tx;
        this.startTY = iMin;
        this.startState = buildState(false);
        this.startStateComplete = buildState(true);
        this.endState = null;
    }

    public void end() {
        if (this.startState == null) {
            throw new IllegalStateException("You have to begin the action first");
        }
        CityState cityStateBuildState = buildState(false);
        this.endState = cityStateBuildState;
        if (equal(cityStateBuildState, this.startState)) {
            this.startState = null;
            this.endState = null;
        } else {
            prune(this.startState, this.endState, this.startStateComplete);
            this.endStateComplete = buildState(true);
            this.forward = true;
        }
    }

    public final void prune(CityState cityState, CityState cityState2, CityState cityState3) {
        long jMillis = TimeUtils.millis();
        int i = (this.tx - this.sx) + 1;
        int i2 = (this.ty - this.sy) + 1;
        while (this.sy < this.ty && equalLine(cityState.tileStates, cityState2.tileStates, 0, 1, (this.tx - this.sx) + 1)) {
            removeLine(cityState.tileStates, 0, 1, (this.tx - this.sx) + 1);
            removeLine(cityState2.tileStates, 0, 1, (this.tx - this.sx) + 1);
            removeLine(cityState3.tileStates, 0, 1, (this.tx - this.sx) + 1);
            this.sy++;
        }
        while (true) {
            int i3 = this.sy;
            int i4 = this.ty;
            if (i3 >= i4) {
                break;
            }
            List<TileState> list = cityState.tileStates;
            List<TileState> list2 = cityState2.tileStates;
            int i5 = this.tx;
            int i6 = this.sx;
            if (!equalLine(list, list2, (i4 - i3) * ((i5 - i6) + 1), 1, (i5 - i6) + 1)) {
                break;
            }
            List<TileState> list3 = cityState.tileStates;
            int i7 = this.ty - this.sy;
            int i8 = this.tx;
            int i9 = this.sx;
            removeLine(list3, i7 * ((i8 - i9) + 1), 1, (i8 - i9) + 1);
            List<TileState> list4 = cityState2.tileStates;
            int i10 = this.ty - this.sy;
            int i11 = this.tx;
            int i12 = this.sx;
            removeLine(list4, i10 * ((i11 - i12) + 1), 1, (i11 - i12) + 1);
            List<TileState> list5 = cityState3.tileStates;
            int i13 = this.ty - this.sy;
            int i14 = this.tx;
            int i15 = this.sx;
            removeLine(list5, i13 * ((i14 - i15) + 1), 1, (i14 - i15) + 1);
            this.ty--;
        }
        while (true) {
            int i16 = this.sx;
            int i17 = this.tx;
            if (i16 >= i17 || !equalLine(cityState.tileStates, cityState2.tileStates, 0, (i17 - i16) + 1, (this.ty - this.sy) + 1)) {
                break;
            }
            removeLine(cityState.tileStates, 0, (this.tx - this.sx) + 1, (this.ty - this.sy) + 1);
            removeLine(cityState2.tileStates, 0, (this.tx - this.sx) + 1, (this.ty - this.sy) + 1);
            removeLine(cityState3.tileStates, 0, (this.tx - this.sx) + 1, (this.ty - this.sy) + 1);
            this.sx++;
        }
        while (true) {
            int i18 = this.sx;
            int i19 = this.tx;
            if (i18 >= i19 || !equalLine(cityState.tileStates, cityState2.tileStates, i19 - i18, (i19 - i18) + 1, (this.ty - this.sy) + 1)) {
                break;
            }
            List<TileState> list6 = cityState.tileStates;
            int i20 = this.tx;
            int i21 = this.sx;
            removeLine(list6, i20 - i21, (i20 - i21) + 1, (this.ty - this.sy) + 1);
            List<TileState> list7 = cityState2.tileStates;
            int i22 = this.tx;
            int i23 = this.sx;
            removeLine(list7, i22 - i23, (i22 - i23) + 1, (this.ty - this.sy) + 1);
            List<TileState> list8 = cityState3.tileStates;
            int i24 = this.tx;
            int i25 = this.sx;
            removeLine(list8, i24 - i25, (i24 - i25) + 1, (this.ty - this.sy) + 1);
            this.tx--;
        }
        int i26 = (this.tx - this.sx) + 1;
        int i27 = (this.ty - this.sy) + 1;
        Gdx.app.debug("CityReverter", "Prune from " + i + "x" + i2 + " to " + i26 + "x" + i27 + "; " + (((i * 100) * i2) / (i26 * i27)) + "%; took " + (TimeUtils.millis() - jMillis) + "ms");
    }

    public final boolean equalLine(List<TileState> list, List<TileState> list2, int i, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (!equal(list.get(i), list2.get(i))) {
                return false;
            }
            i += i2;
        }
        return true;
    }

    public final void removeLine(List<TileState> list, int i, int i2, int i3) {
        int i4 = i + ((i3 - 1) * i2);
        for (int i5 = 0; i5 < i3; i5++) {
            list.remove(i4);
            i4 -= i2;
        }
    }

    public boolean isForward() {
        return this.forward;
    }

    public boolean canRevert() {
        return (this.startState == null || this.endState == null) ? false : true;
    }

    public void revert() {
        if (this.startState == null || this.endState == null) {
            throw new IllegalStateException("Start or end state not set");
        }
        int i = 0;
        CityState cityStateBuildState = buildState(false);
        int i2 = this.endState.diamonds - this.startState.diamonds;
        if (i2 < 0) {
            this.handler.earnDiamonds(-i2, true, "revert");
        } else if (i2 > 0) {
            this.handler.spendDiamonds(i2, "revert");
        }
        double d = this.endState.money - this.startState.money;
        if (d < 0.0d) {
            this.budget.earn(-d, this.actionX, this.actionY, "revert");
        } else if (d > 0.0d) {
            this.budget.spend(d, this.actionX, this.actionY, "revert");
        }
        int i3 = this.sy;
        while (true) {
            int i4 = this.ty;
            if (i3 <= i4) {
                int i5 = i;
                for (int i6 = this.sx; i6 <= this.tx; i6++) {
                    try {
                        revertTile(i6, i3, this.startStateComplete.tileStates.get(i5), this.endStateComplete.tileStates.get(i5), this.startState.tileStates.get(i5), this.endState.tileStates.get(i5), cityStateBuildState.tileStates.get(i5));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    i5++;
                }
                i3++;
                i = i5;
            } else {
                CityModifier cityModifier = this.cityModifier;
                int i7 = this.sx;
                int i8 = this.sy;
                cityModifier.adjustGroundWaterBorder(i7 - 1, i8 - 1, (this.tx - i7) + 3, (i4 - i8) + 3);
                CityState cityState = this.startState;
                this.startState = this.endState;
                this.endState = cityState;
                this.forward = !this.forward;
                CityState cityState2 = this.startStateComplete;
                this.startStateComplete = this.endStateComplete;
                this.endStateComplete = cityState2;
                return;
            }
        }
    }

    public final CityState buildState(boolean z) {
        CityState cityState = new CityState();
        cityState.tileStates = new ArrayList(((this.tx - this.sx) + 1) * ((this.ty - this.sy) + 1));
        cityState.money = this.budget.getEstate();
        cityState.diamonds = this.handler.getDiamonds();
        this.timeBuilding = 0L;
        this.timeGround = 0L;
        this.timeRoad = 0L;
        this.timeTree = 0L;
        this.timeWire = 0L;
        this.timePipe = 0L;
        this.os = new ByteArrayOutputStream();
        this.jsonWriter = new BinaryJsonWriter(new DataOutputStream(this.os));
        long jMillis = TimeUtils.millis();
        for (int i = this.sy; i <= this.ty; i++) {
            int i2 = this.sx;
            while (i2 <= this.tx) {
                boolean z2 = z;
                cityState.tileStates.add(buildTileState(i2, i, this.sx, this.sy, z2));
                i2++;
                z = z2;
            }
        }
        this.os = null;
        this.jsonWriter = null;
        Gdx.app.debug("CityReverter", "Took " + (TimeUtils.millis() - jMillis) + "ms to capture state");
        Gdx.app.debug("CityReverter", "Took " + this.timeBuilding + "ms building");
        Gdx.app.debug("CityReverter", "Took " + this.timeRoad + "ms road");
        Gdx.app.debug("CityReverter", "Took " + this.timeGround + "ms ground");
        Gdx.app.debug("CityReverter", "Took " + this.timeTree + "ms tree");
        Gdx.app.debug("CityReverter", "Took " + this.timeWire + "ms wire");
        Gdx.app.debug("CityReverter", "Took " + this.timePipe + "ms pipe");
        return cityState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void revertTile(int r25, int r26, info.flowersoft.theotown.city.modifier.CityReverter.TileState r27, info.flowersoft.theotown.city.modifier.CityReverter.TileState r28, info.flowersoft.theotown.city.modifier.CityReverter.TileState r29, info.flowersoft.theotown.city.modifier.CityReverter.TileState r30, info.flowersoft.theotown.city.modifier.CityReverter.TileState r31) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 985
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.city.modifier.CityReverter.revertTile(int, int, info.flowersoft.theotown.city.modifier.CityReverter$TileState, info.flowersoft.theotown.city.modifier.CityReverter$TileState, info.flowersoft.theotown.city.modifier.CityReverter$TileState, info.flowersoft.theotown.city.modifier.CityReverter$TileState, info.flowersoft.theotown.city.modifier.CityReverter$TileState):void");
    }

    public final boolean equal(SerializedObject serializedObject, SerializedObject serializedObject2) {
        if (serializedObject != serializedObject2) {
            return (serializedObject == null || serializedObject2 == null || serializedObject.hash != serializedObject2.hash) ? false : true;
        }
        return true;
    }

    public final boolean equal(TileState tileState, TileState tileState2) {
        return (tileState == null || tileState2 == null || tileState == tileState2) ? tileState == tileState2 : tileState.hash == tileState2.hash;
    }

    public final boolean equal(CityState cityState, CityState cityState2) {
        if (cityState == null || cityState2 == null || cityState.tileStates.size() != cityState2.tileStates.size() || cityState.money != cityState2.money || cityState.diamonds != cityState2.diamonds) {
            return cityState == cityState2;
        }
        for (int i = 0; i < cityState.tileStates.size(); i++) {
            if (!equal(cityState.tileStates.get(i), cityState2.tileStates.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final TileState buildTileState(int i, int i2, int i3, int i4, boolean z) {
        AnonymousClass1 anonymousClass1;
        Ground ground = this.tiles.getGround(i, i2);
        AnonymousClass1 anonymousClass12 = null;
        TileState tileState = new TileState();
        try {
            if (this.tiles.hasRoad(i, i2)) {
                long jMillis = TimeUtils.millis();
                int minLevel = this.city.getRoads().getMinLevel();
                int maxLevel = this.city.getRoads().getMaxLevel();
                while (minLevel <= maxLevel) {
                    Road road = this.tiles.getRoad(i, i2, minLevel);
                    if (road != null) {
                        SerializedObject serializedObject = new SerializedObject(this.os, this.jsonWriter);
                        road.save(serializedObject.getWriter(), z);
                        serializedObject.endWriter();
                        tileState.roads.add(serializedObject);
                        tileState.roadLevels.add(minLevel);
                        BusStop busStop = road.getBusStop();
                        if (busStop != null) {
                            SerializedObject serializedObject2 = new SerializedObject(this.os, this.jsonWriter);
                            busStop.save(serializedObject2.getWriter(), z);
                            serializedObject2.endWriter();
                            tileState.busStops.add(serializedObject2);
                            anonymousClass1 = null;
                        } else {
                            anonymousClass1 = null;
                            tileState.busStops.add(null);
                        }
                    } else {
                        anonymousClass1 = anonymousClass12;
                    }
                    minLevel++;
                    anonymousClass12 = anonymousClass1;
                }
                this.timeRoad += TimeUtils.millis() - jMillis;
            }
            Building building = this.tiles.getBuilding(i, i2);
            if (building != null && ((building.getX() == i && building.getY() == i2) || ((building.getX() < i3 && i2 == building.getY()) || ((building.getY() < i4 && i == building.getX()) || (building.getX() < i3 && building.getY() < i4 && i == i3 && i2 == i4))))) {
                long jMillis2 = TimeUtils.millis();
                SerializedObject serializedObject3 = new SerializedObject(this.os, this.jsonWriter);
                building.save(serializedObject3.getWriter(), z);
                serializedObject3.endWriter();
                tileState.building = serializedObject3;
                tileState.buildingX = building.getX();
                tileState.buildingY = building.getY();
                this.timeBuilding += TimeUtils.millis() - jMillis2;
            }
            if (this.tiles.hasWire(i, i2)) {
                long jMillis3 = TimeUtils.millis();
                for (int i5 = -1; i5 <= 1; i5++) {
                    Wire wire = this.tiles.getWire(i, i2, i5);
                    if (wire != null) {
                        SerializedObject serializedObject4 = new SerializedObject(this.os, this.jsonWriter);
                        wire.save(serializedObject4.getWriter());
                        serializedObject4.endWriter();
                        tileState.wires.add(serializedObject4);
                        tileState.wireLevels.add(i5);
                    }
                }
                this.timeWire += TimeUtils.millis() - jMillis3;
            }
            Pipe pipe = this.tiles.getPipe(i, i2);
            if (pipe != null) {
                long jMillis4 = TimeUtils.millis();
                SerializedObject serializedObject5 = new SerializedObject(this.os, this.jsonWriter);
                pipe.save(serializedObject5.getWriter());
                serializedObject5.endWriter();
                tileState.pipe = serializedObject5;
                this.timePipe += TimeUtils.millis() - jMillis4;
            }
            if (this.tiles.hasFence(i, i2)) {
                tileState.fences = new FenceDraft[4];
                for (int i6 = 0; i6 < 4; i6++) {
                    tileState.fences[i6] = this.tiles.getFence(i, i2, i6);
                }
            } else {
                tileState.fences = this.EMPTY_FENCE_ARRAY;
            }
            long jMillis5 = TimeUtils.millis();
            tileState.zone = this.tiles.getZone(i, i2);
            tileState.groundBaseHeight = (byte) ground.getBaseTerrainHeight();
            tileState.groundHeight = ground.height;
            tileState.groundHeights = ground.getTerrainHeights();
            tileState.groundDraft = ground.getDraft();
            tileState.groundFrame = ground.getFrame();
            this.timeGround += TimeUtils.millis() - jMillis5;
            Tree tree = this.tiles.getTree(i, i2);
            if (tree != null) {
                long jMillis6 = TimeUtils.millis();
                SerializedObject serializedObject6 = new SerializedObject(this.os, this.jsonWriter);
                tree.save(serializedObject6.getWriter());
                serializedObject6.endWriter();
                tileState.tree = serializedObject6;
                this.timeTree += TimeUtils.millis() - jMillis6;
            }
            Rail rail = this.tiles.getRail(i, i2);
            if (rail != null) {
                SerializedObject serializedObject7 = new SerializedObject(this.os, this.jsonWriter);
                rail.save(serializedObject7.getWriter());
                serializedObject7.endWriter();
                tileState.rail1 = serializedObject7;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        tileState.hash = hashCode(tileState);
        return tileState;
    }

    public final int hashCode(TileState tileState) {
        int iHashCode = tileState.groundDraft.id.hashCode() + tileState.groundHeights + (tileState.groundHeight << 4) + (tileState.groundBaseHeight << 8) + (tileState.groundFrame << 16);
        for (int i = 0; i < tileState.roads.size(); i++) {
            iHashCode ^= tileState.roads.get(i).hash;
            if (tileState.busStops.get(i) != null) {
                iHashCode ^= tileState.busStops.get(i).hash;
            }
        }
        for (int i2 = 0; i2 < tileState.wires.size(); i2++) {
            iHashCode ^= tileState.wires.get(i2).hash;
        }
        SerializedObject serializedObject = tileState.building;
        if (serializedObject != null) {
            iHashCode ^= serializedObject.hash;
        }
        SerializedObject serializedObject2 = tileState.pipe;
        if (serializedObject2 != null) {
            iHashCode ^= serializedObject2.hash;
        }
        SerializedObject serializedObject3 = tileState.tree;
        if (serializedObject3 != null) {
            iHashCode ^= serializedObject3.hash;
        }
        ZoneDraft zoneDraft = tileState.zone;
        if (zoneDraft != null) {
            iHashCode ^= zoneDraft.id.hashCode();
        }
        SerializedObject serializedObject4 = tileState.rail1;
        if (serializedObject4 != null) {
            iHashCode ^= serializedObject4.hash;
        }
        return Arrays.hashCode(tileState.fences) ^ iHashCode;
    }

    public static class SerializedObject {
        public int hash;
        public ByteArrayOutputStream out;
        public byte[] raw;
        public JsonWriter writer;

        public SerializedObject(ByteArrayOutputStream byteArrayOutputStream, JsonWriter jsonWriter) {
            this.out = byteArrayOutputStream;
            this.writer = jsonWriter;
        }

        public JsonWriter getWriter() throws IOException {
            this.writer.beginObject();
            return this.writer;
        }

        public void endWriter() throws IOException {
            this.writer.endObject();
            this.writer.close();
            this.raw = this.out.toByteArray();
            this.out.reset();
            ((BinaryJsonWriter) this.writer).reset();
            this.hash = Arrays.hashCode(this.raw);
            this.writer = null;
            this.out = null;
        }

        public JsonReader getReader() throws IOException {
            BinaryJsonReader binaryJsonReader = new BinaryJsonReader(new DataInputStream(new ByteArrayInputStream(this.raw)));
            binaryJsonReader.beginObject();
            return binaryJsonReader;
        }
    }

    public static class TileState {
        public SerializedObject building;
        public int buildingX;
        public int buildingY;
        public List<SerializedObject> busStops;
        public FenceDraft[] fences;
        public byte groundBaseHeight;
        public GroundDraft groundDraft;
        public int groundFrame;
        public short groundHeight;
        public byte groundHeights;
        public int hash;
        public SerializedObject pipe;
        public SerializedObject rail1;
        public IntList roadLevels;
        public List<SerializedObject> roads;
        public SerializedObject tree;
        public IntList wireLevels;
        public List<SerializedObject> wires;
        public ZoneDraft zone;

        public TileState() {
            this.roads = new ArrayList();
            this.busStops = new ArrayList();
            this.roadLevels = new IntList();
            this.wires = new ArrayList();
            this.wireLevels = new IntList();
        }
    }

    public static class CityState {
        public int diamonds;
        public double money;
        public List<TileState> tileStates;

        public CityState() {
        }
    }
}
