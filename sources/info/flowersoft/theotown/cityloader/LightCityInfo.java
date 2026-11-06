package info.flowersoft.theotown.cityloader;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.CityInfo;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.PipeList;
import info.flowersoft.theotown.city.RoadList;
import info.flowersoft.theotown.city.ScenarioInfo;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.TradingRelation;
import info.flowersoft.theotown.city.WireList;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.modifier.RoadBuilder;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.components.coverage.CoverageCalculator;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.store.CityPluginsExtractor;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class LightCityInfo {
    public String author;
    public boolean binary;
    public BuildingSurvey buildingSurvey;
    public final CityInfo cityInfo;
    public boolean compressedMinimap;
    public List<Connection> connections;
    public int[] detailedHabitants;
    public GameMode gameMode;
    public int habitants;
    public boolean hasMinimap;
    public boolean hasPreview;
    public int height;
    public String id;
    public double income;
    public long lastModified;
    public boolean leftSideTraffic;
    public int level;
    public int[] minimapData;
    public double money;
    public String name;
    public boolean premium;
    public int[] previewData;
    public int previewHeight;
    public int previewWidth;
    public int producedBodyDisposal;
    public long producedPower;
    public int producedWasteDisposal;
    public long producedWater;
    public RankDraft rank;
    public int saveCounter;
    public boolean scenario;
    public String scenarioAuthor;
    public String scenarioId;
    public int scenarioMinVersion;
    public final List<LightManagedPluginInfo> scenarioRequiredPlugins;
    public String scenarioText;
    public String scenarioTitle;
    public String seed;
    public long size;
    public final StringBuilder tempStringBuilder;
    public List<TradingRelation> tradingRelations;
    public boolean uber;
    public int usedBodyDisposal;
    public List<String> usedIds;
    public final List<LocalPluginManifest> usedLocalPlugins;
    public final List<LightManagedPluginInfo> usedPlugins;
    public long usedPower;
    public int usedWasteDisposal;
    public long usedWater;
    public int version;
    public int width;

    public LightCityInfo(JsonReader jsonReader) throws IOException {
        this.previewWidth = -1;
        this.previewHeight = -1;
        this.connections = new ArrayList();
        this.tradingRelations = new ArrayList();
        this.scenario = false;
        this.scenarioId = "";
        this.scenarioTitle = "";
        this.scenarioText = "";
        this.scenarioAuthor = "";
        this.scenarioRequiredPlugins = new ArrayList();
        this.scenarioMinVersion = 0;
        this.usedPlugins = new ArrayList();
        this.usedLocalPlugins = new ArrayList();
        this.tempStringBuilder = new StringBuilder();
        this.habitants = -1;
        this.gameMode = GameMode.MIDDLE;
        this.author = "";
        this.premium = false;
        this.binary = false;
        this.compressedMinimap = false;
        this.detailedHabitants = new int[3];
        this.cityInfo = new CityInfo();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "last modified":
                    this.lastModified = jsonReader.nextLong();
                    break;
                case "habitants":
                    this.habitants = jsonReader.nextInt();
                    break;
                case "used plugins":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        this.usedPlugins.add(new LightManagedPluginInfo(jsonReader));
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                case "gamemode":
                    this.gameMode = GameMode.valueOf(jsonReader.nextString());
                    break;
                case "author":
                    if (jsonReader.peek() == 12) {
                        jsonReader.nextNull();
                        break;
                    } else {
                        this.author = jsonReader.nextString();
                        break;
                    }
                    break;
                case "binary":
                    this.binary = jsonReader.nextBoolean();
                    break;
                case "scenario text":
                    this.scenarioText = jsonReader.nextString();
                    break;
                case "height":
                    this.height = jsonReader.nextInt();
                    break;
                case "income":
                    this.income = jsonReader.nextDouble();
                    break;
                case "trading":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        TradingRelation tradingRelation = new TradingRelation();
                        tradingRelation.load(jsonReader);
                        this.tradingRelations.add(tradingRelation);
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                case "survey":
                    jsonReader.beginObject();
                    this.buildingSurvey = new BuildingSurvey(jsonReader);
                    jsonReader.endObject();
                    break;
                case "scenario":
                    this.scenario = jsonReader.nextBoolean();
                    break;
                case "scenminv":
                    this.scenarioMinVersion = jsonReader.nextInt();
                    break;
                case "body disposal":
                    jsonReader.beginArray();
                    this.producedBodyDisposal = jsonReader.nextInt();
                    this.usedBodyDisposal = jsonReader.nextInt();
                    jsonReader.endArray();
                    break;
                case "compressed minimap":
                    this.compressedMinimap = jsonReader.nextBoolean();
                    break;
                case "premium":
                    this.premium = jsonReader.nextBoolean();
                    break;
                case "preview":
                    this.hasPreview = jsonReader.nextBoolean();
                    break;
                case "used local plugins":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        this.usedLocalPlugins.add(new LocalPluginManifest(jsonReader));
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                case "used ids":
                    jsonReader.beginArray();
                    this.usedIds = new ArrayList();
                    while (jsonReader.hasNext()) {
                        this.usedIds.add(readId(jsonReader.nextString()));
                    }
                    jsonReader.endArray();
                    break;
                case "id":
                    if (jsonReader.peek() == 12) {
                        jsonReader.nextNull();
                        this.id = null;
                        break;
                    } else {
                        this.id = jsonReader.nextString();
                        break;
                    }
                    break;
                case "info":
                    jsonReader.beginObject();
                    this.cityInfo.load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "name":
                    this.name = jsonReader.nextString();
                    break;
                case "rank":
                    String strNextString = jsonReader.nextString();
                    if (!Drafts.ALL.containsKey(strNextString)) {
                        break;
                    } else {
                        this.rank = (RankDraft) Drafts.ALL.get(strNextString);
                        break;
                    }
                    break;
                case "seed":
                    if (jsonReader.peek() == 12) {
                        jsonReader.nextNull();
                        break;
                    } else {
                        this.seed = jsonReader.nextString();
                        break;
                    }
                    break;
                case "uber":
                    this.uber = jsonReader.nextBoolean();
                    break;
                case "money":
                    this.money = jsonReader.nextDouble();
                    break;
                case "power":
                    jsonReader.beginArray();
                    this.producedPower = jsonReader.nextLong();
                    this.usedPower = jsonReader.nextLong();
                    jsonReader.endArray();
                    break;
                case "water":
                    jsonReader.beginArray();
                    this.producedWater = jsonReader.nextLong();
                    this.usedWater = jsonReader.nextLong();
                    jsonReader.endArray();
                    break;
                case "width":
                    this.width = jsonReader.nextInt();
                    break;
                case "rank lvl":
                    this.level = jsonReader.nextInt();
                    if (!Drafts.RANKS.isEmpty()) {
                        this.rank = Drafts.RANKS.get(Math.min(Math.max(this.level, 0), Drafts.RANKS.size() - 1));
                    }
                    RankDraft rankDraft = this.rank;
                    if (rankDraft == null) {
                        break;
                    } else {
                        this.level = rankDraft.ordinal;
                        break;
                    }
                    break;
                case "version":
                    this.version = jsonReader.nextInt();
                    break;
                case "scenario title":
                    this.scenarioTitle = jsonReader.nextString();
                    break;
                case "left side traffic":
                    this.leftSideTraffic = jsonReader.nextBoolean();
                    break;
                case "save counter":
                    this.saveCounter = jsonReader.nextInt();
                    break;
                case "minimap":
                    this.hasMinimap = jsonReader.nextBoolean();
                    break;
                case "waste disposal":
                    jsonReader.beginArray();
                    this.producedWasteDisposal = jsonReader.nextInt();
                    this.usedWasteDisposal = jsonReader.nextInt();
                    jsonReader.endArray();
                    break;
                case "scenario req plugins":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        this.scenarioRequiredPlugins.add(new LightManagedPluginInfo(jsonReader));
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                case "scenario id":
                    this.scenarioId = jsonReader.nextString();
                    break;
                case "connections":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        Connection connection = new Connection();
                        connection.load(jsonReader);
                        this.connections.add(connection);
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                case "detailed habitants":
                    jsonReader.beginArray();
                    this.detailedHabitants[0] = jsonReader.nextInt();
                    this.detailedHabitants[1] = jsonReader.nextInt();
                    this.detailedHabitants[2] = jsonReader.nextInt();
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "scenario author":
                    this.scenarioAuthor = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public final String readId(String str) {
        this.tempStringBuilder.setLength(0);
        for (int i = 0; i < str.length(); i++) {
            this.tempStringBuilder.append((char) (str.charAt(i) ^ (i + 7)));
        }
        return this.tempStringBuilder.toString();
    }

    public final String writeId(String str) {
        this.tempStringBuilder.setLength(0);
        for (int i = 0; i < str.length(); i++) {
            this.tempStringBuilder.append((char) (str.charAt(i) ^ (i + 7)));
        }
        return this.tempStringBuilder.toString();
    }

    public LightCityInfo(City city, int i, boolean z, boolean z2, boolean z3) {
        this.previewWidth = -1;
        this.previewHeight = -1;
        this.connections = new ArrayList();
        this.tradingRelations = new ArrayList();
        this.scenario = false;
        this.scenarioId = "";
        this.scenarioTitle = "";
        this.scenarioText = "";
        this.scenarioAuthor = "";
        ArrayList arrayList = new ArrayList();
        this.scenarioRequiredPlugins = arrayList;
        this.scenarioMinVersion = 0;
        this.usedPlugins = new ArrayList();
        this.usedLocalPlugins = new ArrayList();
        this.tempStringBuilder = new StringBuilder();
        this.name = city.getName();
        this.author = city.getAuthor();
        this.seed = city.getSeed();
        this.width = city.getWidth();
        this.height = city.getHeight();
        this.lastModified = InternetTime.getInstance().getTime();
        this.version = i;
        this.premium = z;
        People people = (People) city.getComponent(9);
        this.habitants = people.getPeople();
        this.detailedHabitants = new int[]{people.getPeople(0), people.getPeople(1), people.getPeople(2)};
        this.gameMode = city.getGameMode();
        this.hasMinimap = true;
        DefaultManagement defaultManagement = (DefaultManagement) city.getComponent(3);
        this.buildingSurvey = defaultManagement.getBuildingSurvey();
        this.hasPreview = false;
        this.binary = z2;
        this.compressedMinimap = z3;
        RankDraft rank = city.getRank();
        this.rank = rank;
        this.level = rank.ordinal;
        this.id = city.getId();
        this.cityInfo = city.getCityInfo();
        this.uber = city.isUber();
        this.leftSideTraffic = city.isLeftSideTraffic();
        ScenarioInfo scenarioInfo = city.getScenarioInfo();
        this.scenario = scenarioInfo != null;
        if (scenarioInfo != null) {
            this.scenarioId = scenarioInfo.getId();
            this.scenarioTitle = scenarioInfo.getTitle();
            this.scenarioText = scenarioInfo.getText();
            this.scenarioAuthor = scenarioInfo.getAuthor();
            arrayList.clear();
            arrayList.addAll(scenarioInfo.getRequiredStorePlugins());
            this.scenarioMinVersion = scenarioInfo.getMinVersion();
        }
        DefaultBudget defaultBudget = (DefaultBudget) city.getComponent(0);
        this.money = defaultBudget.getEstate();
        this.income = defaultBudget.getMonthlyIncome();
        RoadList roads = city.getRoads();
        for (int i2 = 0; i2 < roads.getConnectionSize(); i2++) {
            this.connections.add(new Connection(roads.getConnection(i2)));
        }
        WireList wires = city.getWires();
        for (int i3 = 0; i3 < wires.getConnectionSize(); i3++) {
            this.connections.add(new Connection(wires.getConnection(i3)));
        }
        PipeList pipes = city.getPipes();
        for (int i4 = 0; i4 < pipes.getConnectionSize(); i4++) {
            this.connections.add(new Connection(pipes.getConnection(i4)));
        }
        for (int i5 = 0; i5 < city.countNeighbors(); i5++) {
            NeighborCity neighbor = city.getNeighbor(i5);
            if (neighbor != null) {
                this.tradingRelations.add(neighbor.getTradingRelation());
            }
        }
        DefaultPower defaultPower = (DefaultPower) city.getComponent(5);
        this.producedPower = defaultPower.nativeAvailablePower();
        this.usedPower = defaultPower.nativeConsumedPower();
        DefaultWater defaultWater = (DefaultWater) city.getComponent(8);
        this.producedWater = (int) defaultWater.nativeAvailableWater();
        this.usedWater = (int) defaultWater.nativeConsumedWater();
        CoverageCalculator coverageCalculator = defaultManagement.getCoverageCalculator();
        this.producedWasteDisposal = coverageCalculator.getNativeProvidedAmount(3);
        this.usedWasteDisposal = coverageCalculator.getNativeNeededAmount(3);
        this.producedBodyDisposal = coverageCalculator.getNativeProvidedAmount(4);
        this.usedBodyDisposal = coverageCalculator.getNativeNeededAmount(4);
        CityPluginsExtractor.Result resultCollectUsedPlugins = CityPluginsExtractor.collectUsedPlugins(city);
        IntList intList = resultCollectUsedPlugins.pluginIdsAndOccurrences;
        this.usedPlugins.clear();
        for (int i6 = 0; i6 < intList.size(); i6 += 2) {
            int i7 = intList.get(i6);
            int i8 = intList.get(i6 + 1);
            ManagedPluginFile managedPluginFile = ManagedPluginsController.getInstance().getManagedPluginFile(i7);
            if (managedPluginFile != null && !ManagedPluginsController.getInstance().isPermanent(managedPluginFile.getPluginId())) {
                LightManagedPluginInfo lightManagedPluginInfo = new LightManagedPluginInfo(managedPluginFile);
                lightManagedPluginInfo.setOccurrences(i8);
                this.usedPlugins.add(lightManagedPluginInfo);
            }
        }
        this.usedLocalPlugins.clear();
        for (String str : resultCollectUsedPlugins.localPluginOccurrences.keySet()) {
            LocalPluginManifest localPluginManifest = Drafts.ID_TO_PLUGIN_MANIFEST.get(str);
            if (localPluginManifest != null && !localPluginManifest.isPermanent()) {
                localPluginManifest.setOccurrences(resultCollectUsedPlugins.localPluginOccurrences.get(str).intValue());
                this.usedLocalPlugins.add(localPluginManifest);
            }
        }
        this.usedIds = resultCollectUsedPlugins.ids;
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("name").value(this.name);
        jsonWriter.name("author").value(this.author);
        jsonWriter.name("seed").value(this.seed);
        jsonWriter.name("width").value(this.width);
        jsonWriter.name("height").value(this.height);
        jsonWriter.name("last modified").value(this.lastModified);
        jsonWriter.name("version").value(this.version);
        jsonWriter.name("premium").value(this.premium);
        jsonWriter.name("habitants").value(this.habitants);
        jsonWriter.name("detailed habitants").beginArray();
        jsonWriter.value(this.detailedHabitants[0]).value(this.detailedHabitants[1]).value(this.detailedHabitants[2]);
        jsonWriter.endArray();
        jsonWriter.name("gamemode").value(this.gameMode.name());
        jsonWriter.name("minimap").value(this.hasMinimap);
        jsonWriter.name("preview").value(this.hasPreview && this.previewData != null);
        jsonWriter.name("binary").value(this.binary);
        jsonWriter.name("compressed minimap").value(this.compressedMinimap);
        jsonWriter.name("rank lvl").value(this.level);
        jsonWriter.name(C3670j8.x).value(this.id);
        jsonWriter.name("save counter").value(this.saveCounter);
        jsonWriter.name("info").beginObject();
        this.cityInfo.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("connections").beginArray();
        for (Connection connection : this.connections) {
            jsonWriter.beginObject();
            connection.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("trading").beginArray();
        for (TradingRelation tradingRelation : this.tradingRelations) {
            jsonWriter.beginObject();
            tradingRelation.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("power").beginArray();
        jsonWriter.value(this.producedPower);
        jsonWriter.value(this.usedPower);
        jsonWriter.endArray();
        jsonWriter.name("water").beginArray();
        jsonWriter.value(this.producedWater);
        jsonWriter.value(this.usedWater);
        jsonWriter.endArray();
        jsonWriter.name("waste disposal").beginArray();
        jsonWriter.value(this.producedWasteDisposal);
        jsonWriter.value(this.usedWasteDisposal);
        jsonWriter.endArray();
        jsonWriter.name("body disposal").beginArray();
        jsonWriter.value(this.producedBodyDisposal);
        jsonWriter.value(this.usedBodyDisposal);
        jsonWriter.endArray();
        jsonWriter.name("survey");
        jsonWriter.beginObject();
        this.buildingSurvey.save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.name("money").value(this.money);
        jsonWriter.name("income").value(this.income);
        jsonWriter.name("uber").value(this.uber);
        jsonWriter.name("left side traffic").value(this.leftSideTraffic);
        if (this.scenario) {
            jsonWriter.name("scenario").value(this.scenario);
            jsonWriter.name("scenario id").value(this.scenarioId);
            jsonWriter.name("scenario title").value(this.scenarioTitle);
            jsonWriter.name("scenario text").value(this.scenarioText);
            jsonWriter.name("scenario author").value(this.scenarioAuthor);
            if (!this.scenarioRequiredPlugins.isEmpty()) {
                jsonWriter.name("scenario req plugins").beginArray();
                for (int i = 0; i < this.scenarioRequiredPlugins.size(); i++) {
                    jsonWriter.beginObject();
                    this.scenarioRequiredPlugins.get(i).save(jsonWriter);
                    jsonWriter.endObject();
                }
                jsonWriter.endArray();
            }
            jsonWriter.name("scenminv").value(this.scenarioMinVersion);
        }
        jsonWriter.name("used plugins").beginArray();
        for (LightManagedPluginInfo lightManagedPluginInfo : this.usedPlugins) {
            jsonWriter.beginObject();
            lightManagedPluginInfo.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("used local plugins").beginArray();
        for (LocalPluginManifest localPluginManifest : this.usedLocalPlugins) {
            jsonWriter.beginObject();
            localPluginManifest.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("used ids").beginArray();
        List<String> list = this.usedIds;
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                jsonWriter.value(writeId(it.next()));
            }
        }
        jsonWriter.endArray();
    }

    public CityInfo getCityInfo() {
        return this.cityInfo;
    }

    public void setGameMode(GameMode gameMode) {
        this.gameMode = gameMode;
    }

    public List<LightManagedPluginInfo> getUsedPlugins() {
        return this.usedPlugins;
    }

    public List<LightManagedPluginInfo> getFilteredUsedPlugins() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.usedPlugins.size(); i++) {
            if (!ManagedPluginsController.getInstance().isPermanent(this.usedPlugins.get(i).getId())) {
                arrayList.add(this.usedPlugins.get(i));
            }
        }
        return arrayList;
    }

    public List<LocalPluginManifest> getUsedLocalPlugins() {
        return this.usedLocalPlugins;
    }

    public boolean isUber() {
        return this.uber;
    }

    public boolean isScenario() {
        return this.scenario;
    }

    public String getScenarioId() {
        return this.scenarioId;
    }

    public String getScenarioTitle() {
        return this.scenarioTitle;
    }

    public String getScenarioAuthor() {
        return this.scenarioAuthor;
    }

    public List<LightManagedPluginInfo> getScenarioRequiredPlugins() {
        return this.scenarioRequiredPlugins;
    }

    public int getScenarioMinVersion() {
        return this.scenarioMinVersion;
    }

    public long getProducedPower() {
        return this.producedPower;
    }

    public long getUsedPower() {
        return this.usedPower;
    }

    public long getProducedWater() {
        return this.producedWater;
    }

    public long getUsedWater() {
        return this.usedWater;
    }

    public int getUsedWasteDisposal() {
        return this.usedWasteDisposal;
    }

    public int getWasteDisposal() {
        return this.producedWasteDisposal;
    }

    public int getUsedBodyDisposal() {
        return this.usedBodyDisposal;
    }

    public int getBodyDisposal() {
        return this.producedBodyDisposal;
    }

    public String getName() {
        return this.name;
    }

    public String getAuthor() {
        return this.author;
    }

    public String getSeed() {
        return this.seed;
    }

    public TradingRelation getTradingRelation(String str) {
        for (TradingRelation tradingRelation : this.tradingRelations) {
            if (tradingRelation.getId().equals(str)) {
                return tradingRelation;
            }
        }
        return null;
    }

    public List<TradingRelation> getTradingRelations() {
        return this.tradingRelations;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public RankDraft getRank() {
        return this.rank;
    }

    public long getLastModified() {
        return this.lastModified;
    }

    public int getVersion() {
        return this.version;
    }

    public int getHabitants() {
        return this.habitants;
    }

    public int[] getDetailedHabitants() {
        int[] iArr = this.detailedHabitants;
        if (iArr != null) {
            return Arrays.copyOf(iArr, 3);
        }
        return new int[3];
    }

    public GameMode getGameMode() {
        return this.gameMode;
    }

    public boolean hasMinimap() {
        return this.hasMinimap;
    }

    public boolean hasPreview() {
        return this.hasPreview;
    }

    public int[] getMinimapData() {
        return this.minimapData;
    }

    public void setMinimapData(int[] iArr) {
        this.minimapData = iArr;
    }

    public int getPreviewWidth() {
        return this.previewWidth;
    }

    public int getPreviewHeight() {
        return this.previewHeight;
    }

    public int[] getPreviewData() {
        return this.previewData;
    }

    public void setPreviewData(int[] iArr, int i, int i2) {
        this.hasPreview = true;
        this.previewWidth = i;
        this.previewHeight = i2;
        this.previewData = iArr;
    }

    public void clearPreviewData() {
        this.previewWidth = -1;
        this.previewHeight = -1;
        this.previewData = null;
    }

    public BuildingSurvey getBuildingSurvey() {
        return this.buildingSurvey;
    }

    public long getSize() {
        return this.size;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public boolean isBinaryFormat() {
        return this.binary;
    }

    public boolean hasCompressedMinimap() {
        return this.compressedMinimap;
    }

    public int getSaveCounter() {
        return this.saveCounter;
    }

    public void setSaveCounter(int i) {
        this.saveCounter = i;
    }

    public void applyConnections(City city, int i, int i2) {
        boolean z;
        if (this.connections.isEmpty()) {
            return;
        }
        Tiles tiles = city.getTiles();
        boolean z2 = false;
        CityModifier cityModifier = new CityModifier(city, false);
        RoadBuilder roadBuilder = cityModifier.getRoadBuilder();
        for (Connection connection : this.connections) {
            String str = connection.id;
            int i3 = connection.type;
            int i4 = connection.dir;
            int iOpposite = Direction.opposite(connection.dir);
            int iDifferenceX = (connection.x + Direction.differenceX(i4)) - i;
            int iDifferenceY = (connection.y + Direction.differenceY(i4)) - i2;
            int i5 = connection.level;
            if (city.isValid(iDifferenceX, iDifferenceY)) {
                if (i3 != 0) {
                    if (i3 == 1) {
                        WireDraft wireDraft = (WireDraft) Drafts.get(str, WireDraft.class);
                        Wire wire = tiles.getWire(iDifferenceX, iDifferenceY, wireDraft != null ? wireDraft.level : 1);
                        if (wireDraft != null && wire == null && cityModifier.isBuildable(wireDraft, iDifferenceX, iDifferenceY, iDifferenceX, iDifferenceY)) {
                            cityModifier.build(wireDraft, iDifferenceX, iDifferenceY, iDifferenceX, iDifferenceY);
                            wire = tiles.getWire(iDifferenceX, iDifferenceY, wireDraft.level);
                        }
                        if (wire != null && !Direction.isIn(iOpposite, wire.getConnectionDir())) {
                            city.getWires().remove(wire);
                            wire.setConnection(iOpposite);
                            city.getWires().add(wire);
                        }
                    } else if (i3 == 2) {
                        PipeDraft pipeDraft = (PipeDraft) Drafts.get(str, PipeDraft.class);
                        Pipe pipe = tiles.getPipe(iDifferenceX, iDifferenceY);
                        if (pipeDraft != null && pipe == null) {
                            cityModifier.build(pipeDraft, iDifferenceX, iDifferenceY, iDifferenceX, iDifferenceY);
                            pipe = tiles.getPipe(iDifferenceX, iDifferenceY);
                        }
                        if (pipe != null && !Direction.isIn(iOpposite, pipe.getConnectionDir())) {
                            city.getPipes().remove(pipe);
                            pipe.setConnection(iOpposite);
                            city.getPipes().add(pipe);
                        }
                    }
                    z = z2;
                } else {
                    RoadDraft roadDraft = (RoadDraft) Drafts.get(str, RoadDraft.class);
                    Road road = tiles.getRoad(iDifferenceX, iDifferenceY, i5);
                    Building building = tiles.getBuilding(iDifferenceX, iDifferenceY);
                    if (roadDraft == null) {
                        z = z2;
                    } else if (building == null || building.getBuildingType() == BuildingType.DECORATION || building.getBuildingType() == BuildingType.DESTROYED) {
                        if (i5 == 0 && cityModifier.isWater(iDifferenceX, iDifferenceY)) {
                            cityModifier.buildTerrain(false, iDifferenceX, iDifferenceY, null);
                        }
                        if (i5 >= 0 && building != null) {
                            cityModifier.remove(iDifferenceX, iDifferenceY, (LuaValue) null);
                        }
                        if (road == null || !road.draft.id.equals(str)) {
                            roadBuilder.setDraft(roadDraft, null);
                            roadBuilder.setLine(iDifferenceX, iDifferenceY, iDifferenceX, iDifferenceY);
                            z = false;
                            roadBuilder.setRelativeLevel(i5, 0);
                            roadBuilder.build();
                            road = tiles.getRoad(iDifferenceX, iDifferenceY, i5);
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    if (road != null && !Direction.isIn(iOpposite, road.getConnectionDir())) {
                        city.getRoads().remove(road);
                        road.setConnection(iOpposite);
                        city.getRoads().add(road);
                    }
                }
                z2 = z;
            }
        }
    }

    public static class Connection implements Saveable {
        public int dir;
        public String id;
        public int level;
        public int type;
        public int x;
        public int y;

        public Connection() {
        }

        public Connection(Road road) {
            this.type = 0;
            this.id = road.draft.id;
            this.x = road.x;
            this.y = road.y;
            this.level = road.level;
            this.dir = road.getConnectionDir();
        }

        public Connection(Wire wire) {
            this.type = 1;
            this.id = wire.getDraft().id;
            this.x = wire.getX();
            this.y = wire.getY();
            this.dir = wire.getConnectionDir();
        }

        public Connection(Pipe pipe) {
            this.type = 2;
            this.id = pipe.getDraft().id;
            this.x = pipe.getX();
            this.y = pipe.getY();
            this.dir = pipe.getConnectionDir();
        }

        @Override // info.flowersoft.theotown.util.Saveable
        public void load(JsonReader jsonReader) throws IOException {
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.getClass();
                switch (strNextName) {
                    case "x":
                        this.x = jsonReader.nextInt();
                        break;
                    case "y":
                        this.y = jsonReader.nextInt();
                        break;
                    case "id":
                        this.id = jsonReader.nextString();
                        break;
                    case "dir":
                        this.dir = jsonReader.nextInt();
                        break;
                    case "type":
                        this.type = jsonReader.nextInt();
                        break;
                    case "level":
                        this.level = jsonReader.nextInt();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
        }

        @Override // info.flowersoft.theotown.util.Saveable
        public void save(JsonWriter jsonWriter) throws IOException {
            jsonWriter.name("type").value(this.type);
            jsonWriter.name(C3670j8.x).value(this.id);
            jsonWriter.name("x").value(this.x);
            jsonWriter.name("y").value(this.y);
            jsonWriter.name("level").value(this.level);
            jsonWriter.name("dir").value(this.dir);
        }
    }
}
