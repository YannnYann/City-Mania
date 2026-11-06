package info.flowersoft.theotown.components;

import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.minigame.BusCurrency;
import info.flowersoft.theotown.minigame.BusIdleGameFactory;
import info.flowersoft.theotown.minigame.Currency;
import info.flowersoft.theotown.minigame.IdleGame;
import info.flowersoft.theotown.minigame.IdleGameFactory;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.Saveable;
import info.flowersoft.theotown.util.SortedList;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultIdleGame extends CityComponent implements Saveable {
    public long lastPayment;
    public final int PAYMENT_DELAY_MS = 1000;
    public List<Currency> currencies = new ArrayList();
    public List<IdleGameFactory> factories = new ArrayList();
    public List<IdleGame> games = new ArrayList();
    public IntMap<IdleGameFactory> idToFactory = new IntMap<>();
    public IntMap<IdleGame> idToGame = new IntMap<>();
    public int gameIdCounter = 1;

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 20;
    }

    public static boolean isActive() {
        return Settings.legacyBusSystem;
    }

    public DefaultIdleGame(City city) {
        this.city = city;
        BusCurrency busCurrency = new BusCurrency(city.getTranslator());
        this.factories.add(new BusIdleGameFactory(city, busCurrency));
        this.currencies.add(busCurrency);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        HashMap map = new HashMap();
        for (int i = 0; i < this.currencies.size(); i++) {
            map.put(this.currencies.get(i).getTag(), this.currencies.get(i));
        }
        HashMap map2 = new HashMap();
        for (int i2 = 0; i2 < this.factories.size(); i2++) {
            map2.put(this.factories.get(i2).getTag(), this.factories.get(i2));
        }
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "currencies":
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        Currency currency = (Currency) map.get(jsonReader.nextName());
                        if (currency != null) {
                            jsonReader.beginObject();
                            currency.load(jsonReader);
                            jsonReader.endObject();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case "game id":
                    this.gameIdCounter = jsonReader.nextInt();
                    break;
                case "idle games":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        String strNextString = "";
                        while (jsonReader.hasNext()) {
                            String strNextName2 = jsonReader.nextName();
                            strNextName2.getClass();
                            if (strNextName2.equals("data")) {
                                IdleGameFactory idleGameFactory = (IdleGameFactory) map2.get(strNextString);
                                if (idleGameFactory != null) {
                                    jsonReader.beginObject();
                                    IdleGame idleGameLoad = idleGameFactory.load(jsonReader);
                                    if (idleGameLoad.getId() == 0) {
                                        int i3 = this.gameIdCounter;
                                        this.gameIdCounter = i3 + 1;
                                        idleGameLoad.setId(i3);
                                    }
                                    int id = idleGameLoad.getId();
                                    this.games.add(idleGameLoad);
                                    this.idToFactory.put(id, idleGameFactory);
                                    this.idToGame.put(id, idleGameLoad);
                                    jsonReader.endObject();
                                    Building building = idleGameFactory.getBuilding(idleGameLoad);
                                    if (building != null) {
                                        building._IDLE_ID = idleGameLoad.getId();
                                    }
                                } else {
                                    jsonReader.skipValue();
                                }
                            } else if (strNextName2.equals("type")) {
                                strNextString = jsonReader.nextString();
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("currencies").beginObject();
        for (int i = 0; i < this.currencies.size(); i++) {
            jsonWriter.name(this.currencies.get(i).getTag()).beginObject();
            this.currencies.get(i).save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endObject();
        jsonWriter.name("idle games").beginArray();
        for (int i2 = 0; i2 < this.games.size(); i2++) {
            IdleGame idleGame = this.games.get(i2);
            jsonWriter.beginObject();
            jsonWriter.name("type").value(this.idToFactory.get(idleGame.getId()).getTag());
            jsonWriter.name("data").beginObject();
            idleGame.save(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("game id").value(this.gameIdCounter);
    }

    public Currency getCurrency(String str) {
        for (int i = 0; i < this.currencies.size(); i++) {
            Currency currency = this.currencies.get(i);
            if (currency.getTag().equals(str)) {
                return currency;
            }
        }
        return null;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        IdleGameFactory idleGameFactory;
        Building building;
        if (isActive()) {
            long jMillis = TimeUtils.millis();
            long j = jMillis - this.lastPayment;
            if (0 < j && j < 1000) {
                issuePayment(j / 1000.0d);
            }
            this.lastPayment = jMillis;
            for (int i = 0; i < this.games.size(); i++) {
                IdleGame idleGame = this.games.get(i);
                if (idleGame.isActive() && ((building = (idleGameFactory = this.idToFactory.get(idleGame.getId())).getBuilding(idleGame)) == null || !idleGameFactory.getBuildings().contains(building.getDraft()) || this.tiles.getBuilding(building.getX(), building.getY()) != building)) {
                    idleGame.setActive(false);
                }
            }
            for (int i2 = 0; i2 < this.factories.size(); i2++) {
                IdleGameFactory idleGameFactory2 = this.factories.get(i2);
                List<BuildingDraft> buildings = idleGameFactory2.getBuildings();
                for (int i3 = 0; i3 < buildings.size(); i3++) {
                    SortedList<Building> buildingsOfDraft = this.city.getBuildings().getBuildingsOfDraft(buildings.get(i3));
                    for (int i4 = 0; i4 < buildingsOfDraft.size(); i4++) {
                        Building building2 = buildingsOfDraft.get(i4);
                        if (building2 != null && getGame(building2) == null) {
                            IdleGame nonActiveGame = getNonActiveGame();
                            if (nonActiveGame == null) {
                                nonActiveGame = idleGameFactory2.create(building2);
                                int i5 = this.gameIdCounter;
                                this.gameIdCounter = i5 + 1;
                                nonActiveGame.setId(i5);
                                this.games.add(nonActiveGame);
                                this.idToFactory.put(nonActiveGame.getId(), idleGameFactory2);
                                this.idToGame.put(nonActiveGame.getId(), nonActiveGame);
                            }
                            nonActiveGame.setBuilding(building2);
                            nonActiveGame.setActive(true);
                            building2._IDLE_ID = nonActiveGame.getId();
                        }
                    }
                }
                idleGameFactory2.update(this.games);
            }
        }
    }

    public final IdleGame getNonActiveGame() {
        for (int i = 0; i < this.games.size(); i++) {
            IdleGame idleGame = this.games.get(i);
            if (!idleGame.isActive()) {
                return idleGame;
            }
        }
        return null;
    }

    public List<IdleGame> getGames() {
        return this.games;
    }

    public final void issuePayment(double d) {
        if (isActive()) {
            for (int i = 0; i < this.games.size(); i++) {
                IdleGame idleGame = this.games.get(i);
                double overallIncome = idleGame.getOverallIncome() * d;
                if (this.city.getGameMode().hasInfiniteIdleMoney()) {
                    overallIncome *= 10.0d;
                }
                idleGame.getCurrency().spend(-overallIncome);
            }
        }
    }

    public IdleGame getGame(Building building) {
        int i = building._IDLE_ID;
        if (i > 0) {
            return this.idToGame.get(i);
        }
        return null;
    }

    public List<Currency> getCurrencies() {
        return this.currencies;
    }

    public double getIncome(Currency currency) {
        double overallIncome = 0.0d;
        if (!isActive()) {
            return 0.0d;
        }
        for (int i = 0; i < this.games.size(); i++) {
            IdleGame idleGame = this.games.get(i);
            if (idleGame.getCurrency() == currency && idleGame.isActive()) {
                overallIncome += idleGame.getOverallIncome();
            }
        }
        return overallIncome;
    }

    public IdleGame getGame(int i) {
        return this.idToGame.get(i);
    }

    public void drawBuilding(int i, int i2, Drawer drawer) {
        int i3;
        if (isActive() && Settings.ringBuildIndicator && !this.city.isReadonly()) {
            Building building = this.tiles.getBuilding(i, i2);
            IdleGame idleGame = (building == null || (i3 = building._IDLE_ID) <= 0) ? null : this.idToGame.get(i3);
            if (building == null || idleGame == null || !upgradeAvailable(idleGame)) {
                return;
            }
            boolean z = drawer.useShading;
            drawer.useShading = false;
            Engine engine = drawer.engine;
            float scaleX = engine.getScaleX();
            drawer.addShift((building.getWidth() + building.getHeight()) * 8, (-Math.max(Math.min((building.getWidth() * 8) - 8, Math.max(building.getHeight() - 1, 1) * 4), 8)) - (building.getMaxTerrainLevel() * 12));
            int transparency = engine.getTransparency();
            engine.setColor(Colors.WHITE);
            float f = scaleX * 2.0f;
            engine.setScale(f, f);
            drawer.draw(Resources.IMAGE_WORLD, -26.0f, (-26.0f) - (((float) Math.sin(((drawer.time % 1000) * 3.1415927f) / 1000.0f)) * 2.0f), Resources.ICON_UPGRADE);
            Drawing.getInstance().drawHalo((int) (drawer.x + (drawer.getShiftX() * scaleX)), (int) (drawer.y + (drawer.getShiftY() * scaleX)), engine, f);
            engine.setScale(scaleX, scaleX);
            drawer.resetShift();
            engine.setTransparency(transparency);
            drawer.useShading = z;
        }
    }

    public final boolean upgradeAvailable(IdleGame idleGame) {
        Currency currency = idleGame.getCurrency();
        for (int i = 0; i < idleGame.countStages(); i++) {
            if (currency.canSpend(idleGame.priceOfUpgrade(i, idleGame.getLevel(i)))) {
                return true;
            }
        }
        return currency.canSpend(idleGame.priceOfStage(idleGame.countStages()));
    }
}
