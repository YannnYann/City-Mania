package info.flowersoft.theotown.minigame;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.minigame.IdleGame;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.BusRouteTool;
import info.flowersoft.theotown.util.ListSampler;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import vm2.Lua;

/* JADX INFO: loaded from: classes4.dex */
public class BusIdleGame extends IdleGame {
    public static final List<CarDraft> CARS = Drafts.getDraftsWithTag("idle bus", CarDraft.class);
    public final int RANK_STAGE_FACTOR;
    public Building building;
    public final City city;
    public final List<IntList> paths;
    public final Tiles tiles;
    public final Translator translator;

    public final int convertOldPathToNewFormat(int i) {
        int i2 = (i >> 14) & Lua.MASK_NOT_Bx;
        return ((i >> 28) << 26) | (i2 << 13) | (i & Lua.MASK_NOT_Bx);
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public int maxStageCount() {
        return 30;
    }

    public BusIdleGame(final City city, Currency currency) {
        super(currency);
        this.paths = new ArrayList();
        this.RANK_STAGE_FACTOR = 10;
        this.city = city;
        this.tiles = city.getTiles();
        Translator translator = city.getTranslator();
        this.translator = translator;
        addSpec(new StandardSpec(translator.translate(3443), " " + translator.translate(3317), false, 0.1d, 0.01d, 0.5d, 10.0d));
        addSpec(new StandardSpec(translator.translate(1959), " " + translator.translate(1537), true, 10.0d, 0.2d, 5.0d, 10.0d));
        addProperty(new IdleGame.Property() { // from class: info.flowersoft.theotown.minigame.BusIdleGame.1
            @Override // info.flowersoft.theotown.minigame.IdleGame.Property
            public boolean isNeeded(int i) {
                return true;
            }

            @Override // info.flowersoft.theotown.minigame.IdleGame.Property
            public boolean isReady(int i) {
                return ((IntList) BusIdleGame.this.paths.get(i)).size() >= 2;
            }

            @Override // info.flowersoft.theotown.minigame.IdleGame.Property
            public String getName() {
                return BusIdleGame.this.translator.translate(1438);
            }

            @Override // info.flowersoft.theotown.minigame.IdleGame.Property
            public int getIcon() {
                return Resources.ICON_ROUTE;
            }

            @Override // info.flowersoft.theotown.minigame.IdleGame.Property
            public void onClick(int i, final Setter<Boolean> setter) {
                setter.set(Boolean.FALSE);
                city.applyComponent(new BusRouteTool(BusIdleGame.this, i, new Runnable() { // from class: info.flowersoft.theotown.minigame.BusIdleGame.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        setter.set(Boolean.TRUE);
                        city.focus(BusIdleGame.this.building.getX() + 1, BusIdleGame.this.building.getY() + 1, city.getIsoConverter().getAbsScaleX());
                        if (city.canAchieve()) {
                            TheoTown.gamesService.unlockAchievement("bus_route_create");
                        }
                    }
                }));
            }
        });
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public void setActive(boolean z) {
        super.setActive(z);
        if (z) {
            return;
        }
        this.building = null;
    }

    public float getSpeed(int i) {
        return (float) getSpec(0).getValue(i, getLevel(i), getRank());
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame, info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        int iNextInt = -1;
        int iNextInt2 = -1;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "building":
                    jsonReader.beginArray();
                    iNextInt = jsonReader.nextInt();
                    iNextInt2 = jsonReader.nextInt();
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "base":
                    jsonReader.beginObject();
                    super.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "path":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        IntList intList = new IntList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            intList.add(convertOldPathToNewFormat(jsonReader.nextInt()));
                        }
                        jsonReader.endArray();
                        this.paths.add(intList);
                    }
                    jsonReader.endArray();
                    break;
                case "path2":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        IntList intList2 = new IntList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            intList2.add(jsonReader.nextInt());
                        }
                        jsonReader.endArray();
                        this.paths.add(intList2);
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (this.city.isValid(iNextInt, iNextInt2)) {
            this.building = this.tiles.getBuilding(iNextInt, iNextInt2);
        }
        while (this.paths.size() < countStages()) {
            this.paths.add(new IntList());
        }
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame, info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("base").beginObject();
        super.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("building").beginArray();
        Building building = this.building;
        if (building != null) {
            jsonWriter.value(building.getX());
            jsonWriter.value(this.building.getY());
        } else {
            jsonWriter.value(-1);
            jsonWriter.value(-1);
        }
        jsonWriter.endArray();
        jsonWriter.name("path2").beginArray();
        for (int i = 0; i < this.paths.size(); i++) {
            IntList intList = this.paths.get(i);
            jsonWriter.beginArray();
            for (int i2 = 0; i2 < intList.size(); i2++) {
                jsonWriter.value(intList.get(i2));
            }
            jsonWriter.endArray();
        }
        jsonWriter.endArray();
    }

    public Building getBuilding() {
        return this.building;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public void setBuilding(Building building) {
        this.building = building;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public double priceOfStage(int i) {
        return (Math.pow(3.1d, i + (getRank() * 10)) * 10.0d) - 10.0d;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public double priceOfUpgrade(int i, int i2) {
        return Math.pow(2.15d, i + (getRank() * 10)) * 21.0d * Math.pow(1.24d, i2) * ((double) ((i2 * 0.05f) + 1.0f));
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public double income(int i, int i2) {
        return Math.pow(1.8d, i + (getRank() * 10)) * 0.25d * (Math.pow(1.16d, i2) + 1.0d) * ((((double) (getMajorLevel(i, i2) + 1)) * 0.5d) + 0.5d);
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public void drawStageIcon(Engine engine, int i, int i2, int i3, int i4, int i5) {
        Engine engine2 = engine;
        CarDraft stageCar = getStageCar(i5);
        int busCount = getBusCount(i5);
        int i6 = 0;
        while (i6 < busCount) {
            int iRound = Math.round(i - ((i6 - ((busCount - 1) * 0.5f)) * 10));
            Color[] colorArr = stageCar.colors;
            if (colorArr != null) {
                engine2.setColor(colorArr[((stageCar.framesPerColor * i5) / 4) % colorArr.length]);
            }
            float f = iRound;
            float f2 = i2;
            float f3 = i3;
            float f4 = i4;
            engine2.drawImage(Resources.IMAGE_WORLD, f, f2, f3, f4, 0.5f, 0.5f, stageCar.frames[1]);
            engine2.setColor(Colors.WHITE);
            engine2.drawImage(Resources.IMAGE_WORLD, f, f2, f3, f4, 0.5f, 0.5f, stageCar.overlayFrames[1]);
            i6++;
            engine2 = engine;
        }
    }

    public void addToPath(int i, int i2, int i3, int i4) {
        this.paths.get(i).add((i2 << 13) | (i4 << 26) | i3);
    }

    public int getPathLength(int i) {
        return this.paths.get(i).size();
    }

    public int getPathX(int i, int i2) {
        return (this.paths.get(i).get(i2) >> 13) & 8191;
    }

    public int getPathY(int i, int i2) {
        return this.paths.get(i).get(i2) & 8191;
    }

    public int getPathLevel(int i, int i2) {
        return this.paths.get(i).get(i2) >> 26;
    }

    public void removeFromPath(int i, int i2) {
        this.paths.get(i).removeAt(i2);
    }

    public int getBusCount(int i) {
        return getMajorLevel(i, getLevel(i)) + 1;
    }

    public int pathContains(int i, int i2, int i3, int i4) {
        IntList intList = this.paths.get(i);
        for (int i5 = 0; i5 < intList.size(); i5++) {
            if (getPathX(i, i5) == i2 && getPathY(i, i5) == i3 && getPathLevel(i, i5) == i4) {
                return i5;
            }
        }
        return -1;
    }

    public void clearPath(int i) {
        this.paths.get(i).clear();
    }

    public Color getStageColor(int i) {
        Color[] colorArr = getStageCar(i).colors;
        return colorArr[i % colorArr.length];
    }

    public CarDraft getStageCar(int i) {
        List<CarDraft> list = CARS;
        return list.get((getLevel(i) / 10) % list.size());
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public String getStageTitle(int i) {
        return StringFormatter.format(this.translator.translate(535), Integer.valueOf(getLevel(i) + 1));
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public String getStageSubTitle(int i) {
        return super.getStageSubTitle(i);
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public String getUnlockTitle(int i) {
        return this.translator.translate(3155);
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public String getUnlockSubTitle(int i) {
        return StringFormatter.format(this.translator.translate(2920), Integer.valueOf(i + 1));
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public String getUpgradeTitle(int i) {
        return this.translator.translate(1786);
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public String getIncomeTitle() {
        return this.translator.translate(1480);
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public int getIcon() {
        return Resources.ICON_PUBLICTRANSPORT;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public String getName() {
        return (getRank() + 1) + ". " + this.city.getTranslator().translate(2169) + " " + countStages() + "/" + maxStageCount();
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public String getUnlockImmediatelyTitle() {
        return this.translator.translate(2613);
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public String getUnlockImmediatelyText() {
        return this.translator.translate(1515);
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public void upgrade(int i, int i2) {
        super.upgrade(i, i2);
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame
    public void addStage() {
        int iCountStages = countStages();
        super.addStage();
        this.paths.add(new IntList());
        if (this.city.getBusStops().size() >= 2) {
            int i = 0;
            while (i < Math.min(((this.city.getBusStops().size() - 2) / 8) + 2, this.city.getBusStops().size())) {
                BusStop busStop = (BusStop) new ListSampler(this.city.getBusStops()).sample(Resources.RND);
                int baseTerrainHeight = this.city.getTiles().getBaseTerrainHeight(busStop.getX(), busStop.getY());
                if (pathContains(iCountStages, busStop.getX(), busStop.getY(), busStop.level + baseTerrainHeight) == -1) {
                    addToPath(iCountStages, busStop.getX(), busStop.getY(), busStop.level + baseTerrainHeight);
                    i++;
                }
            }
        }
    }
}
