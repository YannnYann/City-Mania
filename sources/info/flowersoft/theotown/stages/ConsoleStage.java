package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.ironsource.R6;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.InAppHandler;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.cityfile.Backup;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityfile.MapDirectory;
import info.flowersoft.theotown.cityfile.RegionInformation;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.creation.CityCreator;
import info.flowersoft.theotown.creation.HeightMap;
import info.flowersoft.theotown.creation.RegionCreator;
import info.flowersoft.theotown.crossplatform.GamesService;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.mechanics.LogEntry;
import info.flowersoft.theotown.online.RegionUploader;
import info.flowersoft.theotown.region.Region;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.ContentCollector;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.HeightMapManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.stages.commandhandler.ActionHandler;
import info.flowersoft.theotown.stages.commandhandler.CityOptionsHandler;
import info.flowersoft.theotown.stages.commandhandler.CommandHandler;
import info.flowersoft.theotown.stages.commandhandler.DefaultHandler;
import info.flowersoft.theotown.stages.commandhandler.FunnyHandler;
import info.flowersoft.theotown.stages.commandhandler.LuaHandler;
import info.flowersoft.theotown.stages.commandhandler.PluginListHandler;
import info.flowersoft.theotown.stages.commandhandler.PluginMetaCommandsHandler;
import info.flowersoft.theotown.stages.commandhandler.RemoveHandler;
import info.flowersoft.theotown.stages.commandhandler.StorageHandler;
import info.flowersoft.theotown.stages.commandhandler.VarsHandler;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.ScrollableTextFrame;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.ui.TextField;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.OSUtil;
import info.flowersoft.theotown.util.ProgressVariable;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class ConsoleStage extends BaseStage {
    public final City city;
    public final List<CommandHandler> cmds;
    public final List<String> lastInputs;
    public final Region region;
    public final SSP ssp;
    public String text;
    public TextField textField;
    public ScrollableTextFrame textFrame;

    public ConsoleStage(Stapel2DGameContext stapel2DGameContext, City city, final Region region, boolean z) {
        super(stapel2DGameContext);
        this.ssp = new SSP("theotown console history");
        this.text = "Welcome to the developer console of TheoTown\nEnter help for more information\n\n";
        this.lastInputs = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.cmds = arrayList;
        this.city = city;
        this.region = region;
        arrayList.add(new DefaultHandler());
        arrayList.add(new PluginListHandler());
        arrayList.add(new VarsHandler(city));
        arrayList.add(new ActionHandler(city));
        arrayList.add(new LuaHandler(city));
        arrayList.add(new StorageHandler(city));
        arrayList.add(new FunnyHandler());
        if (city != null) {
            arrayList.add(new CityOptionsHandler(city));
        }
        if (z) {
            arrayList.add(new PluginMetaCommandsHandler(city));
            arrayList.add(new RemoveHandler());
        }
        arrayList.add(new CommandHandler() { // from class: info.flowersoft.theotown.stages.ConsoleStage.1
            public final String key = Resources.CONFIG.optJSONObject(R6.L).optString("cmd region unlock key");

            @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
            public boolean canHandle(String str) {
                return Hashing.sha(str).equals(this.key);
            }

            @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
            public void handle(JSONObject jSONObject, String str, Setter<String> setter) {
                Region region2 = region;
                if (region2 != null) {
                    MapDirectory mapDirectory = region2.getMapDirectory();
                    RegionInformation regionInformation = region.getRegionInformation();
                    Iterator<CityKeeper> it = mapDirectory.getMaps().iterator();
                    while (it.hasNext()) {
                        regionInformation.getCityInformation(it.next()).setLocked(false);
                    }
                    mapDirectory.saveRegionInformation(regionInformation);
                    region.reloadRegionInformation();
                    setter.set("done");
                    TheoTown.analytics.logEvent("Fraud", "unlock region", "");
                }
            }
        });
        List<CommandHandler> commandHandlers = TheoTown.runtimeFeatures.getCommandHandlers();
        if (commandHandlers != null) {
            arrayList.addAll(commandHandlers);
        }
        loadLastInputs();
    }

    public final void loadLastInputs() {
        try {
            JSONArray jSONArray = new JSONArray(this.ssp.load().getString("history", "[]"));
            this.lastInputs.clear();
            for (int i = 0; i < jSONArray.length(); i++) {
                String strOptString = jSONArray.optString(i);
                if (strOptString != null && strOptString.trim().length() > 0) {
                    this.lastInputs.add(strOptString);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void registerInput(String str) {
        if (str != null && !str.trim().isEmpty()) {
            if (this.lastInputs.contains(str)) {
                this.lastInputs.remove(str);
            }
            while (this.lastInputs.size() >= 32) {
                this.lastInputs.remove(0);
            }
            this.lastInputs.add(str);
        }
        SSP.Writer writerEdit = this.ssp.edit();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < this.lastInputs.size(); i++) {
            jSONArray.put(this.lastInputs.get(i));
        }
        writerEdit.putString("history", jSONArray.toString());
        writerEdit.apply();
    }

    public final String getPreviousInput(String str) {
        int iIndexOf = this.lastInputs.indexOf(str);
        if (iIndexOf >= 0) {
            return this.lastInputs.get(Math.max(iIndexOf - 1, 0));
        }
        if (this.lastInputs.isEmpty()) {
            return str;
        }
        return this.lastInputs.get(r3.size() - 1);
    }

    public final String getNextInput(String str) {
        int iIndexOf = this.lastInputs.indexOf(str);
        if (iIndexOf == this.lastInputs.size() - 1) {
            return "";
        }
        return iIndexOf >= 0 ? this.lastInputs.get(iIndexOf + 1) : str;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        Page page = new Page(this.context, "CONSOLE", Resources.ICON_CONSOLE, this.gui);
        Panel contentPanel = page.getContentPanel();
        ScrollableTextFrame scrollableTextFrame = new ScrollableTextFrame(this.text, 0, 0, contentPanel.getClientWidth(), contentPanel.getClientHeight(), contentPanel);
        this.textFrame = scrollableTextFrame;
        scrollableTextFrame.setFont(Resources.skin.fontSmall);
        GoldButton goldButtonAddButton = page.addButton(Resources.ICON_BACKWARD, this.context.getTranslator().translate(1856), true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.ConsoleStage.2
            @Override // java.lang.Runnable
            public void run() {
                ConsoleStage.this.getGameStack().pop();
            }
        });
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.ConsoleStage.3
            @Override // java.lang.Runnable
            public void run() {
                ConsoleStage.this.getGameStack().pop();
            }
        });
        GoldButton goldButtonAddButton2 = page.addButton(Resources.ICON_PLAY, "", false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.ConsoleStage.4
            @Override // java.lang.Runnable
            public void run() {
                String text = ConsoleStage.this.textField.getText();
                ConsoleStage.this.registerInput(text);
                if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
                    ConsoleStage.this.textField.setText("");
                }
                if (text.isEmpty()) {
                    return;
                }
                ConsoleStage.this.appendLines("> " + text);
                ConsoleStage.this.process(text, new Setter<String>() { // from class: info.flowersoft.theotown.stages.ConsoleStage.4.1
                    @Override // io.blueflower.stapel2d.util.Setter
                    public void set(String str) {
                        ConsoleStage.this.appendLines(str);
                    }
                });
            }
        });
        goldButtonAddButton2.setGolden(true);
        goldButtonAddButton2.addSensitiveKey(66);
        TextField textField = new TextField(goldButtonAddButton.getWidth() + 2, 0, ((r4.getClientWidth() - goldButtonAddButton.getWidth()) - goldButtonAddButton2.getWidth()) - 4, page.getControlLine().getClientHeight(), page.getControlLine());
        this.textField = textField;
        textField.setHint("Enter command here; Type help for help");
        this.textField.setActive();
        int i = 0;
        int i2 = 0;
        new Panel(0, 0, i2, i, this.gui) { // from class: info.flowersoft.theotown.stages.ConsoleStage.5
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void updateKeyInput(KeyMapper keyMapper) {
                if (keyMapper.keyHit(19)) {
                    TextField textField2 = ConsoleStage.this.textField;
                    ConsoleStage consoleStage = ConsoleStage.this;
                    textField2.setText(consoleStage.getPreviousInput(consoleStage.textField.getText()));
                } else if (keyMapper.keyHit(20)) {
                    TextField textField3 = ConsoleStage.this.textField;
                    ConsoleStage consoleStage2 = ConsoleStage.this;
                    textField3.setText(consoleStage2.getNextInput(consoleStage2.textField.getText()));
                }
            }
        };
        new IconButton(((AnimationDraft) Drafts.get("$anim_store_restart00", AnimationDraft.class)).frames[0], "", i2, i, 30, 30, this.gui) { // from class: info.flowersoft.theotown.stages.ConsoleStage.6
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ConsoleStage.this.context.requestRestart();
            }
        };
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    public final void appendLines(String str) {
        String str2 = this.text + str + "\n";
        this.text = str2;
        this.textFrame.setText(str2);
        this.textFrame.getListBox().setShiftToBottom();
    }

    public void process(String str, Setter<String> setter) {
        int iOptInt;
        int i;
        int i2;
        int i3;
        int i4;
        String str2 = str;
        try {
            if (!str2.contains(":")) {
                if (!str2.contains("\"")) {
                    str2 = "\"" + str2.trim() + "\"";
                }
                str2 = str2 + ":{}";
            }
            JSONObject jSONObject = new JSONObject(("{" + str2 + "}").replace((char) 160, ' '));
            if (jSONObject.has("hello")) {
                setter.set("42");
                return;
            }
            if (jSONObject.has("pt")) {
                setter.set("Show plugin texture usage");
                getGameStack().push(new PluginTextureStage(this.context));
                return;
            }
            if (jSONObject.has("help")) {
                setter.set((((((("cr:{name:\"Region name\",seed:\"42\",size:4,maps:[0,0,4]} - Creates a new region\n") + "lr - Lists all regions\n") + "rr:\"directory name\" - Removes specified region\n") + "pt - Shows plugin texture usage\n") + "settl:false - Disables all traffic lights of the current city\n") + "bgseed - Returns seed of the background city (small)\n") + "plugins - Lists all ids used by plugins");
                return;
            }
            CommandHandler commandHandler = null;
            heightMapLoadHeightMap = null;
            HeightMap heightMapLoadHeightMap = null;
            boolean z = true;
            int i5 = 0;
            if (jSONObject.has("cr")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("cr");
                String string = jSONObject2.getString("name");
                int iOptInt2 = jSONObject2.optInt("tiles", 64);
                String strOptString = jSONObject2.optString("seed", "" + Resources.RND.nextLong());
                boolean zOptBoolean = jSONObject2.optBoolean("trees", true);
                boolean zOptBoolean2 = jSONObject2.optBoolean("decos", true);
                boolean zOptBoolean3 = jSONObject2.optBoolean("terrain", true);
                boolean zOptBoolean4 = jSONObject2.optBoolean("rivers", true);
                int iOptInt3 = jSONObject2.optInt("roughness", 0);
                jSONObject2.optBoolean("desert", true);
                jSONObject2.optBoolean("snow", true);
                int iOptInt4 = jSONObject2.optInt("size", 0);
                JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("maps");
                String strOptString2 = jSONObject2.optString("bmp", strOptString);
                if (strOptString2 != null && !strOptString2.isEmpty()) {
                    File file = new File(TheoTown.APP_DIR, strOptString2);
                    if (file.exists() && file.isFile()) {
                        heightMapLoadHeightMap = TheoTown.runtimeFeatures.loadHeightMap(new FileHandle(file.getAbsolutePath()), iOptInt4 * iOptInt2);
                        if (heightMapLoadHeightMap == null) {
                            TheoTown.runtimeFeatures.showToast("Could not read in " + file.getName());
                        }
                    } else {
                        heightMapLoadHeightMap = new HeightMapManager(this.context).get(strOptString2, iOptInt4 * iOptInt2);
                    }
                }
                HeightMap heightMap = heightMapLoadHeightMap;
                if (heightMap != null && iOptInt4 == 0) {
                    iOptInt4 = heightMap.getWidth() / iOptInt2;
                }
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                    jSONArrayOptJSONArray.put(0).put(0).put(iOptInt4);
                }
                LocalMapDirectory newRegion = LocalMapDirectory.getNewRegion(string, this.context);
                RegionCreator regionCreator = new RegionCreator(newRegion, this.context, iOptInt2, strOptString, strOptString2, zOptBoolean, zOptBoolean2, zOptBoolean3, zOptBoolean4, iOptInt3, CityCreator.collectAvailableBiomes(Settings.disabledBiomes), GameMode.EASY, heightMap, Settings.regionOriginBackup);
                int i6 = 0;
                while (true) {
                    int i7 = i6 + 2;
                    if (i7 >= jSONArrayOptJSONArray.length()) {
                        break;
                    }
                    int i8 = jSONArrayOptJSONArray.getInt(i6);
                    int i9 = jSONArrayOptJSONArray.getInt(i6 + 1);
                    if (jSONArrayOptJSONArray.get(i7) instanceof JSONArray) {
                        JSONArray jSONArray = jSONArrayOptJSONArray.getJSONArray(i7);
                        i3 = jSONArray.getInt(0);
                        i4 = jSONArray.getInt(1);
                    } else {
                        i3 = jSONArrayOptJSONArray.getInt(i7);
                        i4 = i3;
                    }
                    iOptInt4 = Math.max(iOptInt4, Math.max(i8 + i3, i9 + i4));
                    i6 += 3;
                }
                regionCreator.beginCreation(iOptInt4);
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 2;
                    if (i11 < jSONArrayOptJSONArray.length()) {
                        int i12 = jSONArrayOptJSONArray.getInt(i10);
                        int i13 = jSONArrayOptJSONArray.getInt(i10 + 1);
                        if (jSONArrayOptJSONArray.get(i11) instanceof JSONArray) {
                            JSONArray jSONArray2 = jSONArrayOptJSONArray.getJSONArray(i11);
                            int i14 = jSONArray2.getInt(0);
                            int i15 = jSONArray2.getInt(1);
                            iOptInt = jSONArray2.optInt(2, 0);
                            i = i14;
                            i2 = i15;
                        } else {
                            iOptInt = 0;
                            i = jSONArrayOptJSONArray.getInt(i11);
                            i2 = i;
                        }
                        RegionCreator regionCreator2 = regionCreator;
                        regionCreator2.addRegionMap(i12, i13, i, i2, iOptInt);
                        regionCreator = regionCreator2;
                        i10 += 3;
                    } else {
                        regionCreator.endCreation();
                        RegionInformation regionInformation = newRegion.getRegionInformation();
                        regionInformation.setName(string);
                        newRegion.saveRegionInformation(regionInformation);
                        setter.set("Region " + string + " successfully created. You have to restart to see any effect.");
                        return;
                    }
                }
            } else {
                if (jSONObject.has("lr")) {
                    List<String> listCollectRegions = LocalMapDirectory.collectRegions();
                    String str3 = "";
                    while (i5 < listCollectRegions.size()) {
                        String str4 = listCollectRegions.get(i5);
                        str3 = str3 + String.format(Locale.ENGLISH, "%s - %s\n", str4, LocalMapDirectory.getRegion(str4, this.context).getRegionInformation().getName());
                        i5++;
                    }
                    setter.set(str3);
                    return;
                }
                if (jSONObject.has("rr")) {
                    List<String> listCollectRegions2 = LocalMapDirectory.collectRegions();
                    String string2 = jSONObject.getString("rr");
                    if (!listCollectRegions2.contains(string2)) {
                        setter.set("Couldn't find a region directory named " + string2);
                        return;
                    }
                    LocalMapDirectory region = LocalMapDirectory.getRegion(string2, this.context);
                    String name = region.getRegionInformation().getName();
                    region.deleteAnything();
                    region.getDirectory().delete();
                    setter.set(String.format(Locale.ENGLISH, "Removed region %s - %s", string2, name));
                    return;
                }
                if (jSONObject.has("settut")) {
                    this.city.getCityInfo().tutorialStage = jSONObject.getString("settut");
                    setter.set("Set tutorial stage to " + jSONObject.getString("settut"));
                    return;
                }
                if (jSONObject.has("disable uber")) {
                    this.city.setUber(false);
                    setter.set("done");
                    return;
                }
                if (jSONObject.has("settl")) {
                    if (this.city != null) {
                        boolean z2 = jSONObject.getBoolean("settl");
                        synchronized (this.city) {
                            try {
                                Iterator<Road> it = this.city.getRoads().iterator();
                                while (it.hasNext()) {
                                    it.next().setTrafficLights(z2);
                                }
                            } finally {
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("Turned all traffic lights ");
                        sb.append(z2 ? "on" : "off");
                        setter.set(sb.toString());
                        return;
                    }
                    setter.set("ERROR: No active city context");
                    return;
                }
                if (jSONObject.has("detholiad")) {
                    String string3 = jSONObject.getString("detholiad");
                    File file2 = new File(Resources.getTheoTownDir(), string3);
                    File file3 = new File(Resources.getTheoTownDir(), string3.substring(0, string3.lastIndexOf(".plugin")));
                    if (!file2.exists()) {
                        setter.set("Couldn't find file");
                        return;
                    } else if (!file3.mkdirs() && !file3.exists()) {
                        setter.set("May not create directory");
                        return;
                    } else {
                        ContentCollector.extractZipDir(file2.getAbsolutePath(), file3.getAbsolutePath());
                        return;
                    }
                }
                if (jSONObject.has("bgseed")) {
                    City city = BaseStage.staticBackgroundCity;
                    if (city != null) {
                        String seed = city.getSeed();
                        setter.set(seed);
                        OSUtil.pasteIntoClipboard(seed);
                        TheoTown.runtimeFeatures.showToast("Copied seed of background city");
                        return;
                    }
                    return;
                }
                if (jSONObject.has("getid")) {
                    setter.set(this.city.getId());
                    return;
                }
                if (jSONObject.has("setgm")) {
                    int i16 = jSONObject.getInt("setgm");
                    if ((i16 & 256) == 0) {
                        z = false;
                    }
                    int i17 = i16 & 255;
                    GameMode gameMode = this.city.getGameMode();
                    GameMode gameMode2 = GameMode.SANDBOX;
                    if (gameMode == gameMode2 && i17 != gameMode2.ordinal() && !z) {
                        setter.set("May not change gamemode of sandbox city");
                        return;
                    }
                    if (i17 == 6) {
                        setter.set("Specified gamemode cannot be used");
                        return;
                    }
                    if (i17 >= 0 && i17 < GameMode.values().length && i17 != GameMode.NOLOGIC.ordinal()) {
                        GameMode gameMode3 = GameMode.values()[i17];
                        this.city.setGameMode(gameMode3);
                        setter.set("Set game mode to " + gameMode3.name());
                        return;
                    }
                    setter.set("Invalid index: " + i17);
                    return;
                }
                if (jSONObject.has("winter")) {
                    boolean zOptBoolean5 = jSONObject.optBoolean("winter");
                    WinterManager winterManager = WinterManager.getInstance();
                    if (!zOptBoolean5 && !WinterManager.shouldItBeWinter(Settings.winter)) {
                        z = false;
                    }
                    winterManager.setWinter(z);
                    this.city.getCityInfo().winter = zOptBoolean5;
                    setter.set("Set winter to " + zOptBoolean5);
                    return;
                }
                if (jSONObject.has("stdout")) {
                    System.out.println("=== In-game console ===");
                    System.out.println(this.text);
                    setter.set("Console text written to standard output");
                    return;
                }
                if (jSONObject.has("outcopy")) {
                    OSUtil.pasteIntoClipboard(this.text);
                    setter.set("Copied to clipboard");
                    return;
                }
                if (jSONObject.has("clearreports")) {
                    ManagedPluginsController.getInstance().clearReportedPlugins();
                    setter.set("Cleared");
                    return;
                }
                if (!jSONObject.has("237") && !jSONObject.has("1237") && !jSONObject.has("1.2.37")) {
                    if (jSONObject.has("noreqs")) {
                        if (TheoTown.DEBUG || TheoTown.isPickleMode()) {
                            Constants.NO_REQUIREMENTS = true;
                            setter.set("Requirements disabled");
                            return;
                        }
                        return;
                    }
                    if (jSONObject.has("exception")) {
                        addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.ConsoleStage$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                ConsoleStage.$r8$lambda$TCL6DtsEjba0obF1zRqulNCNrXY();
                            }
                        });
                        return;
                    }
                    if (jSONObject.has("create backup")) {
                        setter.set("Saved to " + Backup.saveBackup(System.currentTimeMillis() + ".backup").getAbsolutePath());
                        return;
                    }
                    if (jSONObject.has("load backup")) {
                        if (Backup.loadBackup(jSONObject.getString("load backup"))) {
                            setter.set("Success");
                            return;
                        } else {
                            setter.set("Something gone wrong");
                            return;
                        }
                    }
                    if (jSONObject.has("load online backup")) {
                        InputStream inputStreamOpenStream = new URL("https://bck0.theotown.com/backups/" + jSONObject.getString("load online backup")).openStream();
                        if (Backup.loadBackup(inputStreamOpenStream)) {
                            setter.set("Success");
                        } else {
                            setter.set("Something gone wrong");
                        }
                        inputStreamOpenStream.close();
                        return;
                    }
                    if (jSONObject.has("restart")) {
                        this.context.requestRestart();
                        return;
                    }
                    if (jSONObject.has("uploadregion")) {
                        Region region2 = this.region;
                        if (region2 == null || !(region2.getMapDirectory() instanceof LocalMapDirectory)) {
                            return;
                        }
                        final JSONObject jSONObjectOptObject = JSONUtil.optObject(jSONObject, "uploadregion");
                        final LocalMapDirectory localMapDirectory = (LocalMapDirectory) this.region.getMapDirectory();
                        if (Backend.getInstance().getUser().isSocialConnected()) {
                            final ProgressVariable progressVariable = new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                            final RegionUploader regionUploader = new RegionUploader();
                            getGameStack().push(new WaitingStage(this.context, Resources.ICON_WEATHER_FOG, "Uploading region to cloud", new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.ConsoleStage$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ConsoleStage.m2213$r8$lambda$vJF6dnEyGONPg3Gt904hCsdq5c(regionUploader, localMapDirectory, progressVariable, jSONObjectOptObject);
                                }
                            }), null, progressVariable, null));
                            return;
                        }
                        getGameStack().push(new AccountStage(this.context));
                        return;
                    }
                    if (jSONObject.has("restore purchases")) {
                        InAppHandler.getInstance().restorePurchases();
                        setter.set("Done.");
                        return;
                    }
                    if (jSONObject.has("list purchases")) {
                        JSONArray restoredPurchases = InAppHandler.getInstance().getRestoredPurchases();
                        if (restoredPurchases == null) {
                            setter.set("None");
                            return;
                        } else {
                            setter.set(restoredPurchases.toString(2));
                            return;
                        }
                    }
                    if (jSONObject.has("insets")) {
                        float[] insetsTRBL = TheoTown.runtimeFeatures.getInsetsTRBL();
                        if (insetsTRBL != null) {
                            setter.set("top: " + insetsTRBL[0]);
                            setter.set("right: " + insetsTRBL[1]);
                            setter.set("bottom: " + insetsTRBL[2]);
                            setter.set("left: " + insetsTRBL[3]);
                            return;
                        }
                        setter.set("null");
                        return;
                    }
                    if (jSONObject.has("reset achievements")) {
                        GamesService gamesService = TheoTown.gamesService;
                        if (gamesService != null) {
                            gamesService.resetAchievements();
                            setter.set("Reset achievements :)");
                            return;
                        }
                        return;
                    }
                    if (jSONObject.has("budget log")) {
                        City city2 = this.city;
                        if (city2 != null) {
                            List<DefaultBudget.BudgetLog> log = ((DefaultBudget) city2.getComponent(0)).getLog();
                            while (i5 < log.size()) {
                                setter.set(log.get(i5).toString());
                                i5++;
                            }
                            return;
                        }
                        return;
                    }
                    if (jSONObject.has("diamond log")) {
                        List<LogEntry> log2 = GameHandler.getInstance().getLog();
                        while (i5 < log2.size()) {
                            setter.set(log2.get(i5).toString());
                            i5++;
                        }
                        return;
                    }
                    if (jSONObject.has("rate")) {
                        TheoTown.runtimeFeatures.rateGame();
                        return;
                    }
                    if (jSONObject.has("rate light")) {
                        TheoTown.runtimeFeatures.rateGameLight();
                        return;
                    }
                    if (jSONObject.names() != null && jSONObject.names().length() > 0 && Hashing.md5(jSONObject.names().getString(0)).equals("98ca1a5c8ce8c1cdd0a0a82d261bae89")) {
                        if (TaskManager.getInstance().TASK_H76.isCompleted()) {
                            setter.set("You already hacked it, calm down");
                            return;
                        }
                        TaskManager.getInstance().TASK_H76.complete();
                        GameHandler.getInstance().earnRegionCoins(200);
                        SuccessOverlay.getInstance().addEvent(3, 200.0d);
                        setter.set("Just Pickle");
                        return;
                    }
                    Iterator<String> itKeys = jSONObject.keys();
                    String next = null;
                    while (itKeys.hasNext() && commandHandler == null) {
                        next = itKeys.next();
                        int i18 = 0;
                        while (true) {
                            if (i18 >= this.cmds.size()) {
                                break;
                            }
                            if (this.cmds.get(i18).canHandle(next)) {
                                commandHandler = this.cmds.get(i18);
                                break;
                            }
                            i18++;
                        }
                    }
                    if (commandHandler != null) {
                        commandHandler.handle(jSONObject, next, setter);
                        return;
                    } else {
                        setter.set("I don't get you");
                        return;
                    }
                }
                setter.set("Congratulations on almost cracking the spoiler.");
                GlobalTransitionVariables.getInstance().set("!_unlock_metro_pickle", 42L);
            }
        } catch (Exception e) {
            setter.set(e.getLocalizedMessage());
            if (e.getMessage().equals("User asked for it") && (e instanceof RuntimeException)) {
                throw ((RuntimeException) e);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$TCL6DtsEjba0obF1zRqulNCNrXY() {
        throw new RuntimeException("User asked for it " + System.currentTimeMillis());
    }

    /* JADX INFO: renamed from: $r8$lambda$vJF6dnEy-GONPg3Gt904hCsdq5c, reason: not valid java name */
    public static /* synthetic */ void m2213$r8$lambda$vJF6dnEyGONPg3Gt904hCsdq5c(RegionUploader regionUploader, LocalMapDirectory localMapDirectory, ProgressVariable progressVariable, JSONObject jSONObject) {
        String str = regionUploader.uploadRegion(localMapDirectory, progressVariable, jSONObject.optString("name"), jSONObject.optString("password"), jSONObject.optBoolean("allow plugins", true)).get();
        if (str != null) {
            TheoTown.runtimeFeatures.showToast("Failed: " + str);
        }
    }

    public String toString() {
        return "ConsoleStage";
    }
}
