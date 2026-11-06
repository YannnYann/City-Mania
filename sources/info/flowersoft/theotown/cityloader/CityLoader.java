package info.flowersoft.theotown.cityloader;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.CityInfo;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.ScenarioInfo;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.util.IdGenerator;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import vm2.LuaTable;

/* JADX INFO: loaded from: classes4.dex */
public final class CityLoader extends ComponentLoader {
    public final Translator translator;

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        return city;
    }

    public CityLoader(Translator translator) {
        this.translator = translator;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "general";
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadRaw(JsonReader jsonReader, City city) throws IOException {
        RankDraft rankDraft;
        byte b;
        JsonReader jsonReader2 = jsonReader;
        int width = this.f3927info.getWidth();
        int height = this.f3927info.getHeight();
        String name = this.f3927info.getName();
        String author = this.f3927info.getAuthor();
        String seed = this.f3927info.getSeed();
        GameMode gameMode = GameMode.MIDDLE;
        RankDraft rankDraft2 = Drafts.RANKS.get(0);
        CityInfo cityInfo = new CityInfo();
        HashMap map = new HashMap();
        boolean zNextBoolean = Settings.leftSideTrafficOriginal;
        int iNextInt = 0;
        int iNextInt2 = 0;
        boolean zNextBoolean2 = false;
        int iNextInt3 = 0;
        float fNextFloat = 0.0f;
        float fNextFloat2 = 0.0f;
        float fNextFloat3 = 1.0f;
        long jNextLong = 0;
        long jNextLong2 = 0;
        String strGenerateId = null;
        ScenarioInfo scenarioInfo = null;
        LuaTable luaTableDeserialize = null;
        AnimationDraft animationDraft = null;
        boolean z = false;
        while (jsonReader2.hasNext() && !z) {
            String strNextName = jsonReader2.nextName();
            strNextName.getClass();
            byte b2 = -1;
            switch (strNextName.hashCode()) {
                case -2031702505:
                    if (strNextName.equals("transition vars")) {
                        b2 = 0;
                    }
                    break;
                case -1768407915:
                    if (strNextName.equals("gamemode")) {
                        b2 = 1;
                    }
                    break;
                case -1406328437:
                    if (strNextName.equals("author")) {
                        b = 2;
                        b2 = b;
                    }
                    break;
                case -1332194002:
                    if (strNextName.equals("background")) {
                        b = 3;
                        b2 = b;
                    }
                    break;
                case -1221029593:
                    if (strNextName.equals("height")) {
                        b = 4;
                        b2 = b;
                    }
                    break;
                case -775588976:
                    if (strNextName.equals("scenario")) {
                        b = 5;
                        b2 = b;
                    }
                    break;
                case -40300674:
                    if (strNextName.equals("rotation")) {
                        b = 6;
                        b2 = b;
                    }
                    break;
                case 3355:
                    if (strNextName.equals(C3670j8.x)) {
                        b = 7;
                        b2 = b;
                    }
                    break;
                case 3832:
                    if (strNextName.equals("xp")) {
                        b = 8;
                        b2 = b;
                    }
                    break;
                case 98971:
                    if (strNextName.equals("cxp")) {
                        b = 9;
                        b2 = b;
                    }
                    break;
                case 107512:
                    if (strNextName.equals("lua")) {
                        b = 10;
                        b2 = b;
                    }
                    break;
                case 3237038:
                    if (strNextName.equals("info")) {
                        b = 11;
                        b2 = b;
                    }
                    break;
                case 3373707:
                    if (strNextName.equals("name")) {
                        b2 = 12;
                    }
                    break;
                case 3492908:
                    if (strNextName.equals("rank")) {
                        b = 13;
                        b2 = b;
                    }
                    break;
                case 3526257:
                    if (strNextName.equals("seed")) {
                        b = 14;
                        b2 = b;
                    }
                    break;
                case 3582970:
                    if (strNextName.equals("uber")) {
                        b = 15;
                        b2 = b;
                    }
                    break;
                case 113126854:
                    if (strNextName.equals("width")) {
                        b2 = 16;
                    }
                    break;
                case 254502312:
                    if (strNextName.equals("rank day")) {
                        b = 17;
                        b2 = b;
                    }
                    break;
                case 254510638:
                    if (strNextName.equals("rank lvl")) {
                        b = 18;
                        b2 = b;
                    }
                    break;
                case 726992813:
                    if (strNextName.equals("left side traffic")) {
                        b = 19;
                        b2 = b;
                    }
                    break;
                case 1408798087:
                    if (strNextName.equals("last simulation timestamp")) {
                        b = 20;
                        b2 = b;
                    }
                    break;
                case 1910891298:
                    if (strNextName.equals("scale x")) {
                        b = 21;
                        b2 = b;
                    }
                    break;
                case 2061260890:
                    if (strNextName.equals("shift x")) {
                        b = 22;
                        b2 = b;
                    }
                    break;
                case 2061260891:
                    if (strNextName.equals("shift y")) {
                        b = 23;
                        b2 = b;
                    }
                    break;
            }
            switch (b2) {
                case 0:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        map.put(jsonReader.nextName(), Long.valueOf(jsonReader.nextLong()));
                    }
                    jsonReader.endObject();
                    jsonReader2 = jsonReader;
                    break;
                case 1:
                    GameMode gameModeValueOf = GameMode.valueOf(jsonReader.nextString());
                    if (this.f3927info.getVersion() < 144) {
                        gameMode = gameModeValueOf;
                        z = true;
                    } else {
                        gameMode = gameModeValueOf;
                    }
                    jsonReader2 = jsonReader;
                    break;
                case 2:
                    if (jsonReader.peek() != 12) {
                        author = jsonReader.nextString();
                    } else {
                        jsonReader.nextNull();
                    }
                    jsonReader2 = jsonReader;
                    break;
                case 3:
                    animationDraft = (AnimationDraft) Drafts.get(jsonReader.nextString(), AnimationDraft.class);
                    jsonReader2 = jsonReader;
                    break;
                case 4:
                    height = jsonReader.nextInt();
                    jsonReader2 = jsonReader;
                    break;
                case 5:
                    jsonReader2.beginObject();
                    ScenarioInfo scenarioInfo2 = new ScenarioInfo();
                    scenarioInfo2.load(jsonReader2);
                    jsonReader2.endObject();
                    if (scenarioInfo2.getMinVersion() > 0 && TheoTown.VERSION_CODE < scenarioInfo2.getMinVersion()) {
                        throw new IllegalStateException();
                    }
                    List<LightManagedPluginInfo> missingPlugins = ManagedPluginsController.getInstance().getMissingPlugins(scenarioInfo2.getRequiredStorePlugins());
                    if (!missingPlugins.isEmpty()) {
                        StringBuilder sb = new StringBuilder();
                        for (int i = 0; i < missingPlugins.size(); i++) {
                            sb.append(missingPlugins.get(i).getTitle());
                            if (i < missingPlugins.size() - 1) {
                                sb.append(", ");
                            }
                        }
                        throw new IllegalStateException("Missing plugins: " + ((Object) sb));
                    }
                    scenarioInfo = scenarioInfo2;
                    jsonReader2 = jsonReader;
                    break;
                    break;
                case 6:
                    iNextInt3 = jsonReader2.nextInt();
                    z = true;
                    jsonReader2 = jsonReader;
                    break;
                case 7:
                    if (jsonReader2.peek() == 12) {
                        jsonReader2.nextNull();
                        strGenerateId = null;
                    } else {
                        strGenerateId = jsonReader2.nextString();
                    }
                    jsonReader2 = jsonReader;
                    break;
                case 8:
                    iNextInt = jsonReader2.nextInt();
                    iNextInt2 = iNextInt;
                    jsonReader2 = jsonReader;
                    break;
                case 9:
                    iNextInt2 = jsonReader2.nextInt();
                    jsonReader2 = jsonReader;
                    break;
                case 10:
                    luaTableDeserialize = LuaTableSerializer.deserialize(jsonReader2);
                    jsonReader2 = jsonReader;
                    break;
                case 11:
                    jsonReader2.beginObject();
                    cityInfo.load(jsonReader2);
                    jsonReader2.endObject();
                    jsonReader2 = jsonReader;
                    break;
                case 12:
                    name = jsonReader2.nextString();
                    jsonReader2 = jsonReader;
                    break;
                case 13:
                    String strNextString = jsonReader2.nextString();
                    if (Drafts.ALL.containsKey(strNextString) && (Drafts.ALL.get(strNextString) instanceof RankDraft)) {
                        rankDraft = (RankDraft) Drafts.ALL.get(strNextString);
                        rankDraft2 = rankDraft;
                    }
                    jsonReader2 = jsonReader;
                    break;
                case 14:
                    if (jsonReader2.peek() == 12) {
                        jsonReader2.nextNull();
                        seed = null;
                    } else {
                        seed = jsonReader2.nextString();
                    }
                    jsonReader2 = jsonReader;
                    break;
                case 15:
                    zNextBoolean2 = jsonReader2.nextBoolean();
                    jsonReader2 = jsonReader;
                    break;
                case 16:
                    width = jsonReader2.nextInt();
                    jsonReader2 = jsonReader;
                    break;
                case 17:
                    jNextLong = jsonReader2.nextLong();
                    jsonReader2 = jsonReader;
                    break;
                case 18:
                    rankDraft = Drafts.RANKS.get(Math.min(Math.max(jsonReader2.nextInt(), 0), Drafts.RANKS.size() - 1));
                    rankDraft2 = rankDraft;
                    jsonReader2 = jsonReader;
                    break;
                case 19:
                    zNextBoolean = jsonReader2.nextBoolean();
                    jsonReader2 = jsonReader;
                    break;
                case 20:
                    jNextLong2 = jsonReader2.nextLong();
                    jsonReader2 = jsonReader;
                    break;
                case 21:
                    fNextFloat3 = jsonReader2.nextFloat();
                    jsonReader2 = jsonReader;
                    break;
                case 22:
                    fNextFloat = jsonReader2.nextFloat();
                    jsonReader2 = jsonReader;
                    break;
                case 23:
                    fNextFloat2 = jsonReader2.nextFloat();
                    jsonReader2 = jsonReader;
                    break;
                default:
                    jsonReader2.skipValue();
                    jsonReader2 = jsonReader;
                    break;
            }
        }
        if (strGenerateId == null) {
            strGenerateId = IdGenerator.generateId(16);
        }
        String str = strGenerateId;
        if (seed == null) {
            seed = "";
        }
        City city2 = new City(width, height, gameMode, this.translator);
        city2.setName(name);
        city2.setAuthor(author);
        city2.setSeed(seed);
        city2.setRank(rankDraft2, jNextLong);
        city2.setId(str);
        city2.setLastSimulationTimestamp(jNextLong2);
        city2.setTargetXp(iNextInt);
        city2.setCurrentXp(iNextInt2);
        city2.setCityInfo(cityInfo);
        city2.setScenarioInfo(scenarioInfo);
        city2.getTransitionVars().putAll(map);
        LuaTable luaTable = luaTableDeserialize;
        if (luaTable != null) {
            city2.setLuaStorage(luaTable);
        }
        AnimationDraft animationDraft2 = animationDraft;
        if (animationDraft2 != null) {
            city2.setBackground(animationDraft2);
        }
        city2.setUber(zNextBoolean2);
        city2.getIsoConverter().setAbsShift(fNextFloat, fNextFloat2);
        city2.setScale(fNextFloat3);
        city2.setLeftSideTraffic(zNextBoolean);
        city2.setRotationRaw(iNextInt3);
        Drafts.setLeftSideTraffic(city2.isLeftSideTraffic());
        return city2;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveRaw(JsonWriter jsonWriter, City city) throws IOException {
        jsonWriter.name("width").value(city.getWidth());
        jsonWriter.name("height").value(city.getHeight());
        jsonWriter.name("name").value(city.getName());
        jsonWriter.name("seed").value(city.getSeed());
        jsonWriter.name("gamemode").value(city.getGameMode().name());
        jsonWriter.name("shift x").value(city.getIsoConverter().getAbsShiftX());
        jsonWriter.name("shift y").value(city.getIsoConverter().getAbsShiftY());
        jsonWriter.name("scale x").value(city.getScale());
        jsonWriter.name("rank lvl").value(city.getRank().ordinal);
        jsonWriter.name("rank day").value(city.getRankUpgradeAbsDay());
        jsonWriter.name(C3670j8.x).value(city.getId());
        jsonWriter.name("last simulation timestamp").value(city.getLastSimulationTimestamp());
        jsonWriter.name("xp").value(city.getTargetXp());
        jsonWriter.name("cxp").value(city.getCurrentXp());
        jsonWriter.name("info").beginObject();
        city.getCityInfo().save(jsonWriter);
        jsonWriter.endObject();
        if (city.getScenarioInfo() != null) {
            jsonWriter.name("scenario").beginObject();
            city.getScenarioInfo().save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.name("transition vars").beginObject();
        for (Map.Entry<String, Long> entry : city.getTransitionVars().entrySet()) {
            jsonWriter.name(entry.getKey()).value(entry.getValue().longValue());
        }
        jsonWriter.endObject();
        LuaTable rawLuaStorage = city.getRawLuaStorage();
        if (rawLuaStorage != null) {
            jsonWriter.name("lua");
            LuaTableSerializer.serialize(rawLuaStorage, jsonWriter);
        }
        jsonWriter.name("background");
        jsonWriter.value(city.getBackground().id);
        jsonWriter.name("uber").value(city.isUber());
        jsonWriter.name("left side traffic").value(city.isLeftSideTraffic());
        jsonWriter.name("rotation").value(city.getRotation());
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader jsonReader, City city) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endObject();
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void afterLoad(City city) {
        super.afterLoad(city);
        long absoluteDay = ((DefaultDate) city.getComponent(1)).getAbsoluteDay();
        if (city.getRankUpgradeAbsDay() == 0) {
            city.setRank(city.getRank(), Math.max(absoluteDay - 30, 0L));
        } else if (city.getRankUpgradeAbsDay() > absoluteDay) {
            city.setRank(city.getRank(), absoluteDay);
        }
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        jsonWriter.beginObject();
        saveRaw(jsonWriter, city);
        jsonWriter.endObject();
    }
}
