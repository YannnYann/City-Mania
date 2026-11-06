package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Preferences;
import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.MapSize;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.stages.RecoveryMode;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.UnitsSetting;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import vm2.NoLuaAccess;

/* JADX INFO: loaded from: classes4.dex */
public class Settings {
    public static boolean adaptiveGroundBlending = false;
    public static boolean areaZoneTool = false;
    public static String author = null;
    public static boolean autoLoading = false;
    public static boolean autoRestoreSampleMaps = false;
    public static boolean autoRoadDecorations = false;
    public static boolean autoRoadForZones = false;
    public static boolean autoSave = false;
    public static int autoSaveMinutes = 0;
    public static boolean autoTrafficLights = false;
    public static boolean autoUntouchable = false;
    public static boolean biggerMinimap = false;
    public static boolean buildingToolOld = false;
    public static int carRatio = 0;
    public static boolean catastrophes = false;
    public static boolean cityTasks = false;
    public static boolean cloudShadows = false;
    public static boolean crashedWhileLoadingTexture = false;
    public static int cursorScaling = 0;
    public static String cursorStyle = null;
    public static boolean darkBuildTool = false;
    public static boolean darkToolbar = false;
    public static boolean debugHotkeys = false;
    public static boolean debugMode = false;
    public static boolean decos = false;
    public static float depthFactor = 0.0f;
    public static boolean diagonalRoadTool = false;
    public static List<String> disabledBiomes = new ArrayList();
    public static boolean disasterEarthquake = false;
    public static boolean disasterFire = false;
    public static boolean disasterFlooding = false;
    public static boolean disasterGodzilla = false;
    public static boolean disasterIllness = false;
    public static boolean disasterMeteorite = false;
    public static boolean disasterNuke = false;
    public static boolean disasterTornado = false;
    public static boolean disasterUfo = false;
    public static int displayResolution = 0;
    public static boolean doubleCarDrawing = false;
    public static boolean downloadStaticFiles = false;
    public static boolean drawMapEdges = false;
    public static boolean drawNeighbors = false;
    public static boolean drawPedestrians = false;
    public static boolean drawSmoke = false;
    public static boolean drawWaterSparkle = false;
    public static boolean drawZones = false;
    public static boolean edgeGradients = false;
    public static int edgeRadius = 0;
    public static boolean energySaving = false;
    public static boolean energySavingPlus = false;
    public static boolean experimentalFeatures = false;
    public static int failedStartupCtr = 0;
    public static boolean fancyBackground = false;
    public static int firstVersion = 0;
    public static int fontScaling = 0;
    public static boolean fullscreen = false;
    public static int fullscreenHeight = 0;
    public static int fullscreenWidth = 0;
    public static boolean fullyLoaded = false;
    public static int gameCounter = 0;
    public static int gameMode = 0;
    public static int generalSoundLevel = 0;
    public static boolean gridInBuildMode = false;
    public static boolean groundBlending = false;
    public static boolean groundSnowOverlay = false;
    public static boolean handInToolbar = false;
    public static boolean hideLabels = false;
    public static boolean hideMoneyFeature = false;
    public static boolean hideRankFeature = false;
    public static boolean hideUI = false;
    public static boolean highResolutionCityPreview = false;
    public static boolean highlightHoveredBuilding = false;
    public static String id = null;
    public static boolean isFirstStart = false;

    @NoLuaAccess
    public static JSONObject jsonPrefs = null;
    public static int lastVersion = 0;
    public static boolean leftMinimap = false;
    public static boolean leftSideTrafficNewCities = false;
    public static boolean leftSideTrafficOriginal = false;
    public static boolean legacyBusSystem = false;

    @NoLuaAccess
    public static int loadCounter = 0;
    public static Locale locale = null;
    public static boolean lod = false;
    public static boolean lowResMapScreenshot = false;
    public static boolean mapRenderingNoBackground = false;
    public static int mapSize = 0;
    public static int maxRank = 0;
    public static boolean maxZoomOut = false;
    public static String missingChars = null;
    public static boolean modifyCursor = false;
    public static boolean multiRoadDecorationSupport = false;
    public static int musicLevel = 0;
    public static boolean newIndicator = false;
    public static int nightMode = 0;
    public static boolean notifyBadAttribute = false;
    public static boolean notifyBadTraffic = false;
    public static boolean notifyBodyDisposal = false;
    public static boolean notifyDestroyedTile = false;
    public static boolean notifyLowBudget = false;
    public static boolean notifyLowPower = false;
    public static boolean notifyLowWater = false;
    public static boolean notifyMedicOverloaded = false;
    public static boolean notifyNeedHighEducation = false;
    public static boolean notifyNeedLowEducation = false;
    public static boolean notifyNoPark = false;
    public static boolean notifyNoPower = false;
    public static boolean notifyNoRoad = false;
    public static boolean notifyNoSport = false;
    public static boolean notifyNoWater = false;
    public static boolean notifyNoise = false;
    public static boolean notifyPollutedPump = false;
    public static boolean notifyPollution = false;
    public static boolean notifySchoolOverloaded = false;
    public static boolean notifyUnhappy = false;
    public static boolean notifyUnlocked = false;
    public static boolean notifyWaste = false;
    public static boolean notifyWaterWaste = false;
    public static boolean notifyZoneNeeded = false;
    public static long playTimeSeconds = 0;
    public static boolean pluginTextureCache = false;

    @NoLuaAccess
    public static Preferences prefs = null;
    public static boolean premium = false;
    public static boolean pushNotifications;
    public static boolean pushNotificationsOnline;
    public static boolean realMinimapResolution;
    public static int regionGridSize;
    public static int regionMapSize;
    public static boolean regionOriginBackup;
    public static String regionSearchTerm;
    public static boolean relaxedLineTool;
    public static boolean renderPollution;
    public static boolean reversedBuildTool;
    public static boolean rightSidebar;
    public static boolean ringBuildIndicator;
    public static boolean rivers;
    public static boolean roadAutoJoin;
    public static boolean roadSnowOverlay;
    public static int roadZoneHeight;
    public static int roadZoneWidth;
    public static boolean rushHour;
    public static boolean saveForScreenshot;
    public static boolean saveMinimap;
    public static int screenOrientation;
    public static boolean screenRecording;
    public static boolean screenRecordingMobile;
    public static int screenRecordingQuality;
    public static int screenTaps;
    public static String screenshotPath;
    public static boolean scrollEdges;
    public static int shader;
    public static ShaderConfig shaderConfig;
    public static String shaderId;
    public static boolean shortMoney;
    public static boolean showCloseButton;
    public static boolean showInfluencePreview;
    public static boolean showMinimap;
    public static boolean showNoMemAccessDialog;
    public static boolean showRCI;
    public static boolean showRoadLength;
    public static boolean showTouchPoints;
    public static boolean showTrafficMarkerInRoadTool;
    public static boolean smoothCarMovement;
    public static boolean smoothScrolling;
    public static boolean smoothWaterHeight;
    public static int smoothZoom;
    public static int soundAmbientLevel;
    public static int soundGameLevel;
    public static int soundPluginLevel;
    public static int soundUILevel;
    public static int soundWeatherLevel;
    public static boolean specialViewFollowCarTool;
    public static int startCounter;
    public static String storeSearchTerm;
    public static int stretchFactor;
    public static boolean supportDrawInTwoModeTools;
    public static int targetFps;
    public static boolean terrain;
    public static int terrainRoughness;
    public static boolean terrainShading;
    public static int theme;
    public static String themeId;
    public static boolean toolHistory;
    public static boolean toolbarNames;
    public static boolean toolbarPrices;
    public static boolean touchRotate;
    public static boolean translatePlugins;
    public static boolean transparencyInBuildMode;
    public static boolean trees;
    public static boolean tsMapDarkMode;
    public static boolean uiAnimations;
    public static int uiSize;
    public static UnitsSetting units;
    public static boolean useBigTextureIfPossible;
    public static boolean useBlur;
    public static boolean useLowColorDepth;
    public static boolean useToolbarBuildtool;
    public static boolean useZoneRadius;
    public static boolean verticalToolButtons;
    public static boolean verticalToolbar;
    public static boolean vsync;
    public static boolean weather;
    public static boolean weatherLightning;
    public static int windowHeight;
    public static int windowWidth;
    public static int winter;

    public static boolean shouldSaveOnLeaveCity() {
        return autoSave && !RecoveryMode.INSTANCE.getActive();
    }

    public static boolean shouldSaveForScreenshot() {
        return saveForScreenshot && !RecoveryMode.INSTANCE.getActive();
    }

    public static boolean shouldSaveOnAppSwitch() {
        return autoSave && !RecoveryMode.INSTANCE.getActive();
    }

    public static UnitsSetting getEffectiveUnits() {
        UnitsSetting unitsSetting = units;
        return unitsSetting != null ? unitsSetting : UnitsSetting.getDefault();
    }

    @NoLuaAccess
    public static File getLegacySettingsFile() {
        return new File(Resources.getTheoTownDir(), ".settings.json");
    }

    @NoLuaAccess
    public static File getSettingsFile() {
        return new File(Resources.getTheoTownDir(), "settings.json");
    }

    @NoLuaAccess
    public static JSONObject loadJSON() {
        JSONObject jSONObject;
        String textFile;
        File settingsFile = getSettingsFile();
        if (!settingsFile.exists()) {
            File legacySettingsFile = getLegacySettingsFile();
            if (legacySettingsFile.exists()) {
                legacySettingsFile.renameTo(settingsFile);
            }
        }
        if (!settingsFile.exists() || (textFile = Files.readTextFile(Gdx.files.absolute(settingsFile.getAbsolutePath()))) == null) {
            jSONObject = null;
        } else {
            try {
                jSONObject = new JSONObject(textFile);
            } catch (JSONException e) {
                e.printStackTrace();
                jSONObject = null;
            }
        }
        return jSONObject == null ? new JSONObject() : jSONObject;
    }

    @NoLuaAccess
    public static boolean saveJSON(JSONObject jSONObject) {
        try {
            return Files.writeTextFile(getSettingsFile(), jSONObject.toString(2));
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @NoLuaAccess
    public static boolean getBoolean(String str, boolean z) {
        return jsonPrefs.optBoolean(str, prefs.getBoolean(str, z));
    }

    @NoLuaAccess
    public static int getInt(String str, int i) {
        return jsonPrefs.optInt(str, prefs.getInteger(str, i));
    }

    @NoLuaAccess
    public static String getString(String str, String str2) {
        return jsonPrefs.optString(str, prefs.getString(str, str2));
    }

    @NoLuaAccess
    public static void getStringArray(String str, List<String> list, List<String> list2) {
        try {
            JSONArray jSONArrayOptJSONArray = jsonPrefs.optJSONArray(str);
            if (jSONArrayOptJSONArray != null) {
                list2.clear();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    list2.add(jSONArrayOptJSONArray.getString(i));
                }
                return;
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        list2.clear();
        list2.addAll(list);
    }

    @NoLuaAccess
    public static long getLong(String str, long j) {
        return jsonPrefs.optLong(str, prefs.getLong(str, j));
    }

    @NoLuaAccess
    public static synchronized void load() {
        try {
            prefs = Gdx.app.getPreferences(SSP.migratePrefFile("info.flowersoft.theotown.theotown.settings"));
            jsonPrefs = loadJSON();
            if (prefs.getBoolean("json backed", false)) {
                prefs.clear();
                prefs.flush();
            }
            resetAll();
            isFirstStart = getBoolean("is first start", true);
            displayResolution = getInt("display resolution2", displayResolution);
            transparencyInBuildMode = getBoolean("transparency in build mode", transparencyInBuildMode);
            gridInBuildMode = getBoolean("grid in build mode", gridInBuildMode);
            drawPedestrians = getBoolean("draw pedestrians", drawPedestrians);
            doubleCarDrawing = getBoolean("double car drawing", doubleCarDrawing);
            drawWaterSparkle = getBoolean("draw water sparkle", drawWaterSparkle);
            drawSmoke = getBoolean("draw smoke", drawSmoke);
            drawMapEdges = getBoolean("draw map edges", drawMapEdges);
            areaZoneTool = getBoolean("area zone tool", areaZoneTool);
            shader = getInt("shader", shader);
            shaderConfig = ShaderConfig.valueOf(getString("shader config", shaderConfig.name()));
            shaderId = getString("shader id", shaderId);
            premium = getBoolean("premium", premium);
            reversedBuildTool = getBoolean("reversed build tool", reversedBuildTool);
            showMinimap = getBoolean("show minimap", showMinimap);
            showRCI = getBoolean("show rci", showRCI);
            energySaving = getBoolean("energy saving", energySaving);
            showInfluencePreview = getBoolean("show influence preview", showInfluencePreview);
            screenOrientation = getInt("screen orientation2", 0);
            debugMode = getBoolean("debug mode", debugMode);
            gameCounter = getInt("game counter", gameCounter);
            startCounter = getInt("start counter", startCounter);
            mapSize = getInt("map size", mapSize);
            regionMapSize = getInt("region map size", regionMapSize);
            regionGridSize = getInt("region grid size", regionGridSize);
            gameMode = getInt("game mode", gameMode);
            maxZoomOut = getBoolean("max zoom out2", maxZoomOut);
            weather = getBoolean("weather", weather);
            catastrophes = getBoolean("catastrophes2", catastrophes);
            disasterFire = getBoolean("disaster fire2", disasterFire);
            disasterMeteorite = getBoolean("disaster meteorite2", disasterMeteorite);
            disasterEarthquake = getBoolean("disaster earthquake2", disasterEarthquake);
            disasterIllness = getBoolean("disaster illness3", disasterIllness);
            disasterFlooding = getBoolean("disaster flooding2", disasterFlooding);
            disasterGodzilla = getBoolean("disaster godzilla2", disasterGodzilla);
            disasterNuke = getBoolean("disaster nuke2", disasterNuke);
            disasterTornado = getBoolean("disaster tornado2", disasterTornado);
            disasterUfo = getBoolean("disaster ufo2", disasterUfo);
            firstVersion = getInt("first version", firstVersion);
            lastVersion = getInt("last version", lastVersion);
            generalSoundLevel = getInt("master sound level", generalSoundLevel);
            musicLevel = getInt("music level", musicLevel);
            soundUILevel = getInt("sound ui level", soundUILevel);
            soundGameLevel = getInt("sound game level", soundGameLevel);
            soundWeatherLevel = getInt("sound weather level", soundWeatherLevel);
            soundAmbientLevel = getInt("sound ambient level", soundAmbientLevel);
            soundPluginLevel = getInt("sound plugin level", soundPluginLevel);
            fancyBackground = getBoolean("fancy background", fancyBackground);
            autoRoadForZones = getBoolean("auto zone road", autoRoadForZones);
            relaxedLineTool = getBoolean("relaxed line tool", relaxedLineTool);
            lod = getBoolean("lod", lod);
            lowResMapScreenshot = getBoolean("low res map screenshot", lowResMapScreenshot);
            showNoMemAccessDialog = getBoolean("show no memory access dialog", showNoMemAccessDialog);
            rightSidebar = getBoolean("sidebar on right side", rightSidebar);
            leftMinimap = getBoolean("minimap on left side", leftMinimap);
            useBlur = getBoolean("blur01", useBlur);
            author = getString("author", author);
            trees = getBoolean("trees", trees);
            decos = getBoolean("decos", decos);
            terrain = getBoolean("terrain", terrain);
            rivers = getBoolean("rivers", rivers);
            terrainRoughness = getInt("terrain roughness", terrainRoughness);
            getStringArray("disabled biomes", Collections.EMPTY_LIST, disabledBiomes);
            autoUntouchable = getBoolean("auto untouchable", autoUntouchable);
            autoRestoreSampleMaps = getBoolean("auto restore sample maps", autoRestoreSampleMaps);
            crashedWhileLoadingTexture = getBoolean("chrash on texture load", crashedWhileLoadingTexture);
            useLowColorDepth = getBoolean("use low color depth5", useLowColorDepth);
            winter = getInt("winter2", winter);
            experimentalFeatures = getBoolean("experimental", experimentalFeatures);
            boolean z = getBoolean("traffic on left side", leftSideTrafficOriginal);
            leftSideTrafficOriginal = z;
            leftSideTrafficNewCities = getBoolean("traffic on left side new cities", z);
            hideRankFeature = getBoolean("hide rank feature", hideRankFeature);
            hideMoneyFeature = getBoolean("hide money feature", hideMoneyFeature);
            saveMinimap = getBoolean("save minimap", saveMinimap);
            autoSave = getBoolean("auto save", autoSave);
            missingChars = getString("missing chars", missingChars);
            autoLoading = getBoolean("auto loading", autoLoading);
            autoTrafficLights = getBoolean("auto traffic lights", autoTrafficLights);
            shortMoney = getBoolean("short money", shortMoney);
            showTrafficMarkerInRoadTool = getBoolean("show traffic marker in road tool", showTrafficMarkerInRoadTool);
            smoothScrolling = getBoolean("smooth scrolling", smoothScrolling);
            smoothZoom = getInt("smooth zoom", smoothZoom);
            buildingToolOld = getBoolean("building tool old", buildingToolOld);
            roadAutoJoin = getBoolean("road auto join", roadAutoJoin);
            energySavingPlus = getBoolean("energy saving plus", energySavingPlus);
            ringBuildIndicator = getBoolean("ring build indicator", ringBuildIndicator);
            playTimeSeconds = getLong("play time", playTimeSeconds);
            Locale locale2 = locale;
            String string = getString("locale", locale2 != null ? locale2.getLanguage() : "");
            if (string.isEmpty()) {
                locale = null;
            } else {
                String[] strArrSplit = string.split("_");
                if (strArrSplit.length == 1) {
                    locale = new Locale(string);
                } else {
                    locale = new Locale(strArrSplit[0], strArrSplit[1]);
                }
            }
            showRoadLength = getBoolean("show road lentgh", showRoadLength);
            showTouchPoints = getBoolean("show touch points", showTouchPoints);
            carRatio = getInt("car ratio", carRatio);
            screenRecording = getBoolean("screen recording2", screenRecording);
            screenRecordingMobile = getBoolean("screen recording mobile", screenRecordingMobile);
            screenRecordingQuality = getInt("screen recording quality", screenRecordingQuality);
            useZoneRadius = getBoolean("use zone radius", useZoneRadius);
            touchRotate = getBoolean("touch rotate", touchRotate);
            terrainShading = getBoolean("use terrain shading", terrainShading);
            roadZoneWidth = getInt("road zone width", roadZoneWidth);
            roadZoneHeight = getInt("road zone height", roadZoneHeight);
            autoSaveMinutes = getInt("auto save minutes", autoSaveMinutes);
            downloadStaticFiles = getBoolean("download static files", downloadStaticFiles);
            cityTasks = getBoolean("city tasks", cityTasks);
            screenTaps = getInt("screen taps", screenTaps);
            saveForScreenshot = getBoolean("save for screenshot", saveForScreenshot);
            useToolbarBuildtool = getBoolean("toolbar buildtool", useToolbarBuildtool);
            pushNotifications = getBoolean("push notifications", pushNotifications);
            pushNotificationsOnline = getBoolean("push notifications online mode2", pushNotificationsOnline);
            smoothCarMovement = getBoolean("smooth car movement", smoothCarMovement);
            renderPollution = getBoolean("render pollution", renderPollution);
            cloudShadows = getBoolean("cloud shadows", cloudShadows);
            newIndicator = getBoolean("new indicator", newIndicator);
            drawZones = getBoolean("draw zones", drawZones);
            realMinimapResolution = getBoolean("real minimap resolution", realMinimapResolution);
            showCloseButton = getBoolean("show close button", showCloseButton);
            maxRank = getInt("max rank", maxRank);
            specialViewFollowCarTool = getBoolean("special view follow car tool", specialViewFollowCarTool);
            handInToolbar = getBoolean("hand in toolbar", handInToolbar);
            useBigTextureIfPossible = getBoolean("use big texture if possible", useBigTextureIfPossible);
            storeSearchTerm = getString("store search term", storeSearchTerm);
            regionSearchTerm = getString("region search term", regionSearchTerm);
            fullscreen = getBoolean("fullscreen", fullscreen);
            fullscreenWidth = getInt("fullscreen width", fullscreenWidth);
            fullscreenHeight = getInt("fullscreen height", fullscreenHeight);
            scrollEdges = getBoolean("scroll edges", scrollEdges);
            fontScaling = getInt("font scaling", fontScaling);
            hideLabels = getBoolean("hide labels", hideLabels);
            vsync = getBoolean("vsync", vsync);
            targetFps = getInt("target fps", targetFps);
            biggerMinimap = getBoolean("bigger minimap", biggerMinimap);
            windowWidth = getInt("window width", windowWidth);
            windowHeight = getInt("window height", windowHeight);
            supportDrawInTwoModeTools = getBoolean("draw two mode tools00", supportDrawInTwoModeTools);
            verticalToolButtons = getBoolean("vertical tool buttons00", verticalToolButtons);
            int i = (getInt("ui size", (uiSize * 8) / 100) * 100) / 8;
            uiSize = i;
            uiSize = getInt("ui size pp", i);
            weatherLightning = getBoolean("weather lightning", weatherLightning);
            nightMode = getInt("night mode", nightMode);
            rushHour = getBoolean("rush hour", rushHour);
            uiAnimations = getBoolean("ui animations", uiAnimations);
            mapRenderingNoBackground = getBoolean("no background map rendering", mapRenderingNoBackground);
            verticalToolbar = getBoolean("vertical toolbar3", verticalToolbar);
            darkToolbar = getBoolean("dark toolbar2", darkToolbar);
            toolbarNames = getBoolean("toolbar names2", toolbarNames);
            toolbarPrices = getBoolean("toolbar prices2", toolbarPrices);
            toolHistory = getBoolean("tool history", toolHistory);
            screenshotPath = getString("screenshot path", "");
            edgeRadius = getInt("edge radius", edgeRadius);
            smoothWaterHeight = getBoolean("smooth water height", smoothWaterHeight);
            multiRoadDecorationSupport = getBoolean("multi road decoration support", multiRoadDecorationSupport);
            diagonalRoadTool = getBoolean("diagonal road tool", diagonalRoadTool);
            regionOriginBackup = getBoolean("experimental.region origin backup", regionOriginBackup);
            translatePlugins = getBoolean("translate plugins", translatePlugins);
            darkBuildTool = getBoolean("dark build tool", darkBuildTool);
            pluginTextureCache = getBoolean("plugin texture cache", pluginTextureCache);
            autoRoadDecorations = getBoolean("auto road decorations", autoRoadDecorations);
            modifyCursor = getBoolean("modify cursor", modifyCursor);
            cursorStyle = getString("cursor style", cursorStyle);
            cursorScaling = getInt("cursor scaling", cursorScaling);
            groundBlending = getBoolean("ground blending", groundBlending);
            adaptiveGroundBlending = getBoolean("ground blending adaptive", adaptiveGroundBlending);
            try {
                units = UnitsSetting.valueOf(getString("units", "auto"));
            } catch (IllegalArgumentException unused) {
                units = null;
            }
            notifyLowPower = getBoolean("low_power", notifyLowPower);
            notifyLowWater = getBoolean("low_water", notifyLowWater);
            notifyNoPower = getBoolean("no_power", notifyNoPower);
            notifyNoWater = getBoolean("no_water", notifyNoWater);
            notifyNoRoad = getBoolean("no_road", notifyNoRoad);
            notifyNoPark = getBoolean("no_park", notifyNoPark);
            notifyNoSport = getBoolean("no_sport", notifyNoSport);
            notifyPollution = getBoolean("pollution", notifyPollution);
            notifyNoise = getBoolean("noise", notifyNoise);
            notifyWaterWaste = getBoolean("water_waste", notifyWaterWaste);
            notifyUnhappy = getBoolean("unhappy", notifyUnhappy);
            notifyUnlocked = getBoolean("unlocked", notifyUnlocked);
            notifyLowBudget = getBoolean("low_budget", notifyLowBudget);
            notifyZoneNeeded = getBoolean("zone_needed", notifyZoneNeeded);
            notifyPollutedPump = getBoolean("polluted_pump", notifyPollutedPump);
            notifySchoolOverloaded = getBoolean("school_overloaded", notifySchoolOverloaded);
            notifyMedicOverloaded = getBoolean("medic_overloaded", notifyMedicOverloaded);
            notifyDestroyedTile = getBoolean("destroyed_tile", notifyDestroyedTile);
            notifyNeedLowEducation = getBoolean("need_low_education", notifyNeedLowEducation);
            notifyNeedHighEducation = getBoolean("need_high_education", notifyNeedHighEducation);
            notifyBadTraffic = getBoolean("bad_traffic", notifyBadTraffic);
            notifyWaste = getBoolean("waste", notifyWaste);
            notifyBodyDisposal = getBoolean("body_disposal", notifyBodyDisposal);
            notifyBadAttribute = getBoolean("bad_attribute", notifyBadAttribute);
            debugHotkeys = getBoolean("debug_hotkeys", debugHotkeys);
            highlightHoveredBuilding = getBoolean("highlight hovered building", highlightHoveredBuilding);
            highResolutionCityPreview = getBoolean("high resolution city preview", highResolutionCityPreview);
            roadSnowOverlay = getBoolean("road snow overlay", roadSnowOverlay);
            groundSnowOverlay = getBoolean("ground snow overlay", groundSnowOverlay);
            legacyBusSystem = getBoolean("legacy bus system", legacyBusSystem);
            depthFactor = getInt("depthFactor", Math.round(depthFactor * 10.0f)) * 0.1f;
            stretchFactor = getInt("stretchFactor", stretchFactor);
            tsMapDarkMode = getBoolean("ts map dark mode", tsMapDarkMode);
            edgeGradients = getBoolean("edge gradients", edgeGradients);
            failedStartupCtr = getInt("failed starts", failedStartupCtr);
            drawNeighbors = getBoolean("draw neighboring cities", drawNeighbors);
            int i2 = getInt("theme", theme);
            theme = i2;
            if (i2 < 0 || i2 > 2) {
                theme = 2;
            }
            themeId = null;
            String string2 = getString("theme id", "");
            if (!string2.isEmpty()) {
                themeId = string2;
            }
            String string3 = getString(C3670j8.x, "");
            id = string3;
            if (string3.isEmpty()) {
                id = UUID.randomUUID().toString();
            }
            fullyLoaded = true;
            int i3 = loadCounter;
            if (i3 == 0 || isFirstStart) {
                if (i3 == 0) {
                    gameCounter++;
                }
                save();
            }
            loadCounter++;
            TheoTown.analytics.logSettings();
            prefs = null;
            jsonPrefs = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @NoLuaAccess
    public static synchronized void loadLight() {
        if (fullyLoaded) {
            return;
        }
        Preferences preferences = Gdx.app.getPreferences(SSP.migratePrefFile("info.flowersoft.theotown.theotown.settings"));
        resetAll();
        pushNotifications = preferences.getBoolean("push notifications", pushNotifications);
        pushNotificationsOnline = preferences.getBoolean("push notifications online mode2", pushNotificationsOnline);
    }

    @NoLuaAccess
    public static void putBoolean(String str, boolean z) {
        prefs.putBoolean(str, z);
        try {
            jsonPrefs.put(str, z);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @NoLuaAccess
    public static void putInt(String str, int i) {
        prefs.putInteger(str, i);
        try {
            jsonPrefs.put(str, i);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @NoLuaAccess
    public static void putLong(String str, long j) {
        prefs.putLong(str, j);
        try {
            jsonPrefs.put(str, j);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @NoLuaAccess
    public static void putString(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        prefs.putString(str, str2);
        try {
            jsonPrefs.put(str, str2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @NoLuaAccess
    public static void putStringArray(String str, List<String> list) {
        try {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < list.size(); i++) {
                jSONArray.put(list.get(i));
            }
            jsonPrefs.put(str, jSONArray);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @NoLuaAccess
    public static synchronized void save() {
        try {
            if (!fullyLoaded) {
                throw new IllegalStateException("Is not fully loaded");
            }
            jsonPrefs = loadJSON();
            prefs = Gdx.app.getPreferences(SSP.migratePrefFile("info.flowersoft.theotown.theotown.settings"));
            putBoolean("is first start", false);
            putInt("display resolution2", displayResolution);
            putBoolean("transparency in build mode", transparencyInBuildMode);
            putBoolean("grid in build mode", gridInBuildMode);
            putBoolean("draw pedestrians", drawPedestrians);
            putBoolean("double car drawing", doubleCarDrawing);
            putBoolean("draw water sparkle", drawWaterSparkle);
            putBoolean("draw smoke", drawSmoke);
            putBoolean("draw map edges", drawMapEdges);
            putBoolean("area zone tool", areaZoneTool);
            putInt("shader", shader);
            putString("shader config", shaderConfig.name());
            putString("shader id", shaderId);
            putBoolean("premium", TheoTown.PREMIUM);
            putBoolean("reversed build tool", reversedBuildTool);
            putBoolean("show minimap", showMinimap);
            putBoolean("show rci", showRCI);
            putBoolean("energy saving", energySaving);
            putBoolean("show influence preview", showInfluencePreview);
            putInt("screen orientation2", screenOrientation);
            putBoolean("debug mode", debugMode);
            putInt("game counter", gameCounter);
            putInt("start counter", startCounter);
            putInt("map size", mapSize);
            putInt("region map size", regionMapSize);
            putInt("region grid size", regionGridSize);
            putInt("game mode", gameMode);
            putBoolean("max zoom out2", maxZoomOut);
            putBoolean("weather", weather);
            putBoolean("catastrophes2", catastrophes);
            putBoolean("disaster fire2", disasterFire);
            putBoolean("disaster meteorite2", disasterMeteorite);
            putBoolean("disaster earthquake2", disasterEarthquake);
            putBoolean("disaster illness3", disasterIllness);
            putBoolean("disaster flooding2", disasterFlooding);
            putBoolean("disaster godzilla2", disasterGodzilla);
            putBoolean("disaster nuke2", disasterNuke);
            putBoolean("disaster tornado2", disasterTornado);
            putBoolean("disaster ufo2", disasterUfo);
            putInt("first version", firstVersion);
            putInt("last version", TheoTown.VERSION_CODE);
            putInt("master sound level", generalSoundLevel);
            putInt("music level", musicLevel);
            putInt("sound ui level", soundUILevel);
            putInt("sound game level", soundGameLevel);
            putInt("sound weather level", soundWeatherLevel);
            putInt("sound ambient level", soundAmbientLevel);
            putInt("sound plugin level", soundPluginLevel);
            putBoolean("fancy background", fancyBackground);
            putBoolean("auto zone road", autoRoadForZones);
            putBoolean("relaxed line tool", relaxedLineTool);
            putBoolean("lod", lod);
            putBoolean("low res map screenshot", lowResMapScreenshot);
            putBoolean("show no memory access dialog", showNoMemAccessDialog);
            putBoolean("sidebar on right side", rightSidebar);
            putBoolean("minimap on left side", leftMinimap);
            putBoolean("blur01", useBlur);
            putString("author", author);
            putBoolean("trees", trees);
            putBoolean("decos", decos);
            putBoolean("terrain", terrain);
            putBoolean("rivers", rivers);
            putInt("terrain roughness", terrainRoughness);
            if (disabledBiomes == null) {
                disabledBiomes = new ArrayList();
            }
            putStringArray("disabled biomes", disabledBiomes);
            putBoolean("auto untouchable", autoUntouchable);
            putBoolean("auto restore sample maps", autoRestoreSampleMaps);
            putBoolean("chrash on texture load", crashedWhileLoadingTexture);
            putBoolean("use low color depth5", useLowColorDepth);
            putInt("winter2", winter);
            putBoolean("experimental", experimentalFeatures);
            putBoolean("traffic on left side", leftSideTrafficOriginal);
            putBoolean("traffic on left side new cities", leftSideTrafficNewCities);
            putBoolean("save minimap", saveMinimap);
            putBoolean("auto save", autoSave);
            putString("missing chars", missingChars);
            putBoolean("auto loading", autoLoading);
            putBoolean("auto traffic lights", autoTrafficLights);
            putBoolean("short money", shortMoney);
            putBoolean("show traffic marker in road tool", showTrafficMarkerInRoadTool);
            putBoolean("smooth scrolling", smoothScrolling);
            putInt("smooth zoom", smoothZoom);
            putBoolean("building tool old", buildingToolOld);
            putBoolean("road auto join", roadAutoJoin);
            putBoolean("energy saving plus", energySavingPlus);
            putBoolean("ring build indicator", ringBuildIndicator);
            putLong("play time", playTimeSeconds);
            Locale locale2 = locale;
            putString("locale", locale2 != null ? locale2.toString() : "");
            putInt("locale spec", Constants.f3913VERDCHTIG);
            putBoolean("show road lentgh", showRoadLength);
            putBoolean("show touch points", showTouchPoints);
            putInt("car ratio", carRatio);
            putBoolean("screen recording2", screenRecording);
            putBoolean("screen recording mobile", screenRecordingMobile);
            putInt("screen recording quality", screenRecordingQuality);
            putBoolean("use zone radius", useZoneRadius);
            putBoolean("touch rotate", touchRotate);
            putBoolean("use terrain shading", terrainShading);
            putInt("road zone width", roadZoneWidth);
            putInt("road zone height", roadZoneHeight);
            putInt("auto save minutes", autoSaveMinutes);
            putBoolean("download static files", downloadStaticFiles);
            putBoolean("city tasks", cityTasks);
            putInt("screen taps", screenTaps);
            putBoolean("save for screenshot", saveForScreenshot);
            putBoolean("toolbar buildtool", useToolbarBuildtool);
            putBoolean("push notifications", pushNotifications);
            putBoolean("push notifications online mode2", pushNotificationsOnline);
            putBoolean("smooth car movement", smoothCarMovement);
            putBoolean("render pollution", renderPollution);
            putBoolean("cloud shadows", cloudShadows);
            putBoolean("new indicator", newIndicator);
            putBoolean("draw zones", drawZones);
            putBoolean("real minimap resolution", realMinimapResolution);
            putBoolean("show close button", showCloseButton);
            putInt("max rank", maxRank);
            putBoolean("special view follow car tool", specialViewFollowCarTool);
            putBoolean("hand in toolbar", handInToolbar);
            putBoolean("use big texture if possible", useBigTextureIfPossible);
            putString("store search term", storeSearchTerm);
            putString("region search term", regionSearchTerm);
            putBoolean("fullscreen", fullscreen);
            putInt("fullscreen width", fullscreenWidth);
            putInt("fullscreen height", fullscreenHeight);
            putBoolean("scroll edges", scrollEdges);
            putInt("font scaling", fontScaling);
            putBoolean("hide labels", hideLabels);
            putBoolean("vsync", vsync);
            putInt("target fps", targetFps);
            putBoolean("bigger minimap", biggerMinimap);
            putInt("window width", windowWidth);
            putInt("window height", windowHeight);
            putBoolean("draw two mode tools00", supportDrawInTwoModeTools);
            putBoolean("vertical tool buttons00", verticalToolButtons);
            putInt("ui size pp", uiSize);
            putBoolean("weather lightning", weatherLightning);
            putInt("night mode", nightMode);
            putBoolean("rush hour", rushHour);
            putBoolean("ui animations", uiAnimations);
            putBoolean("no background map rendering", mapRenderingNoBackground);
            putBoolean("vertical toolbar3", verticalToolbar);
            putBoolean("dark toolbar2", darkToolbar);
            putBoolean("toolbar names2", toolbarNames);
            putBoolean("toolbar prices2", toolbarPrices);
            putBoolean("tool history", toolHistory);
            putString("screenshot path", screenshotPath);
            putInt("edge radius", edgeRadius);
            putBoolean("smooth water height", smoothWaterHeight);
            putBoolean("multi road decoration support", multiRoadDecorationSupport);
            putBoolean("diagonal road tool", diagonalRoadTool);
            putBoolean("experimental.region origin backup", regionOriginBackup);
            putBoolean("translate plugins", translatePlugins);
            putBoolean("dark build tool", darkBuildTool);
            putBoolean("plugin texture cache", pluginTextureCache);
            putBoolean("auto road decorations", autoRoadDecorations);
            putBoolean("modify cursor", modifyCursor);
            putString("cursor style", cursorStyle);
            putInt("cursor scaling", cursorScaling);
            putBoolean("ground blending", groundBlending);
            putBoolean("ground blending adaptive", adaptiveGroundBlending);
            UnitsSetting unitsSetting = units;
            putString("units", unitsSetting != null ? unitsSetting.name() : "auto");
            putBoolean("low_power", notifyLowPower);
            putBoolean("low_water", notifyLowWater);
            putBoolean("no_power", notifyNoPower);
            putBoolean("no_water", notifyNoWater);
            putBoolean("no_road", notifyNoRoad);
            putBoolean("no_park", notifyNoPark);
            putBoolean("no_sport", notifyNoSport);
            putBoolean("pollution", notifyPollution);
            putBoolean("noise", notifyNoise);
            putBoolean("water_waste", notifyWaterWaste);
            putBoolean("unhappy", notifyUnhappy);
            putBoolean("unlocked", notifyUnlocked);
            putBoolean("low_budget", notifyLowBudget);
            putBoolean("zone_needed", notifyZoneNeeded);
            putBoolean("polluted_pump", notifyPollutedPump);
            putBoolean("school_overloaded", notifySchoolOverloaded);
            putBoolean("medic_overloaded", notifyMedicOverloaded);
            putBoolean("destroyed_tile", notifyDestroyedTile);
            putBoolean("need_low_education", notifyNeedLowEducation);
            putBoolean("need_high_education", notifyNeedHighEducation);
            putBoolean("bad_traffic", notifyBadTraffic);
            putBoolean("waste", notifyWaste);
            putBoolean("body_disposal", notifyBodyDisposal);
            putBoolean("bad_attribute", notifyBadAttribute);
            putBoolean("debug_hotkeys", debugHotkeys);
            putBoolean("highlight hovered building", highlightHoveredBuilding);
            putBoolean("high resolution city preview", highResolutionCityPreview);
            putBoolean("road snow overlay", roadSnowOverlay);
            putBoolean("ground snow overlay", groundSnowOverlay);
            putBoolean("legacy bus system", legacyBusSystem);
            putInt("depthFactor", Math.round(depthFactor * 10.0f));
            putInt("stretchFactor", stretchFactor);
            putBoolean("ts map dark mode", tsMapDarkMode);
            putBoolean("edge gradients", edgeGradients);
            putInt("failed starts", failedStartupCtr);
            putBoolean("draw neighboring cities", drawNeighbors);
            putInt("theme", theme);
            String str = themeId;
            if (str != null) {
                putString("theme id", str);
            }
            putString(C3670j8.x, id);
            prefs.putBoolean("json backed", saveJSON(jsonPrefs));
            try {
                prefs.flush();
            } catch (Exception e) {
                e.printStackTrace();
            }
            prefs = null;
            jsonPrefs = null;
            TheoTown.analytics.logSettings();
        } catch (Throwable th) {
            throw th;
        }
    }

    @NoLuaAccess
    public static synchronized void resetAll() {
        gameCounter = 0;
        mapSize = MapSize.MIDDLE.ordinal();
        regionMapSize = MapSize.BIG2.ordinal();
        regionGridSize = 2;
        gameMode = GameMode.EASY.ordinal();
        int i = TheoTown.VERSION_CODE;
        firstVersion = i;
        lastVersion = i;
        playTimeSeconds = 0L;
        screenTaps = 0;
        reset();
    }

    @NoLuaAccess
    public static synchronized void reset() {
        displayResolution = 0;
        transparencyInBuildMode = true;
        gridInBuildMode = true;
        drawPedestrians = true;
        doubleCarDrawing = true;
        drawWaterSparkle = true;
        drawSmoke = true;
        drawMapEdges = true;
        areaZoneTool = true;
        shader = 0;
        shaderConfig = ShaderConfig.DEFAULT;
        shaderId = null;
        reversedBuildTool = false;
        showMinimap = false;
        showRCI = false;
        energySaving = true;
        showInfluencePreview = true;
        screenOrientation = 0;
        debugMode = false;
        maxZoomOut = false;
        weather = true;
        catastrophes = true;
        disasterFire = true;
        disasterMeteorite = false;
        disasterEarthquake = false;
        disasterIllness = true;
        disasterFlooding = false;
        disasterGodzilla = false;
        disasterNuke = false;
        disasterTornado = false;
        disasterUfo = false;
        generalSoundLevel = 50;
        musicLevel = 100;
        soundUILevel = 100;
        soundGameLevel = 50;
        soundWeatherLevel = 100;
        soundAmbientLevel = 75;
        soundPluginLevel = 50;
        fancyBackground = true;
        autoRoadForZones = true;
        relaxedLineTool = true;
        lod = true;
        lowResMapScreenshot = false;
        showNoMemAccessDialog = true;
        rightSidebar = false;
        leftMinimap = false;
        useBlur = true;
        author = "";
        trees = true;
        decos = true;
        terrain = true;
        rivers = true;
        terrainRoughness = 0;
        disabledBiomes.clear();
        autoUntouchable = true;
        autoRestoreSampleMaps = true;
        crashedWhileLoadingTexture = false;
        useLowColorDepth = false;
        winter = 0;
        experimentalFeatures = false;
        leftSideTrafficOriginal = false;
        leftSideTrafficNewCities = false;
        hideRankFeature = false;
        hideMoneyFeature = false;
        saveMinimap = false;
        autoSave = true;
        missingChars = "";
        autoLoading = true;
        autoTrafficLights = true;
        hideUI = false;
        shortMoney = true;
        showTrafficMarkerInRoadTool = true;
        smoothScrolling = true;
        smoothZoom = 1;
        buildingToolOld = false;
        roadAutoJoin = true;
        energySavingPlus = false;
        ringBuildIndicator = true;
        locale = null;
        showRoadLength = true;
        showTouchPoints = false;
        carRatio = 100;
        screenRecording = false;
        screenRecordingMobile = false;
        screenRecordingQuality = 1;
        useZoneRadius = true;
        touchRotate = true;
        terrainShading = true;
        roadZoneHeight = 6;
        roadZoneWidth = 6;
        autoSaveMinutes = 5;
        downloadStaticFiles = true;
        cityTasks = true;
        saveForScreenshot = true;
        useToolbarBuildtool = true;
        pushNotifications = true;
        pushNotificationsOnline = true;
        smoothCarMovement = true;
        renderPollution = true;
        cloudShadows = true;
        newIndicator = true;
        drawZones = true;
        realMinimapResolution = true;
        showCloseButton = false;
        maxRank = 0;
        specialViewFollowCarTool = true;
        handInToolbar = true;
        useBigTextureIfPossible = true;
        storeSearchTerm = "";
        regionSearchTerm = "";
        fullscreen = false;
        fullscreenWidth = 0;
        fullscreenHeight = 0;
        scrollEdges = true;
        fontScaling = 0;
        hideLabels = false;
        vsync = true;
        targetFps = 0;
        biggerMinimap = false;
        supportDrawInTwoModeTools = true;
        verticalToolButtons = true;
        uiSize = 0;
        weatherLightning = true;
        nightMode = 0;
        rushHour = true;
        uiAnimations = true;
        mapRenderingNoBackground = false;
        verticalToolbar = true;
        darkToolbar = false;
        toolbarNames = true;
        toolbarPrices = true;
        toolHistory = true;
        screenshotPath = "";
        edgeRadius = -1;
        smoothWaterHeight = true;
        multiRoadDecorationSupport = false;
        diagonalRoadTool = true;
        regionOriginBackup = true;
        translatePlugins = true;
        darkBuildTool = true;
        pluginTextureCache = true;
        autoRoadDecorations = true;
        modifyCursor = true;
        cursorStyle = "";
        cursorScaling = 1;
        groundBlending = true;
        adaptiveGroundBlending = true;
        units = null;
        notifyLowPower = true;
        notifyLowWater = true;
        notifyNoPower = true;
        notifyNoWater = true;
        notifyNoRoad = true;
        notifyNoPark = true;
        notifyNoSport = true;
        notifyPollution = true;
        notifyNoise = true;
        notifyWaterWaste = true;
        notifyUnhappy = true;
        notifyUnlocked = true;
        notifyLowBudget = true;
        notifyZoneNeeded = true;
        notifyPollutedPump = true;
        notifySchoolOverloaded = true;
        notifyMedicOverloaded = true;
        notifyDestroyedTile = true;
        notifyNeedLowEducation = true;
        notifyNeedHighEducation = true;
        notifyBadTraffic = true;
        notifyWaste = true;
        notifyBodyDisposal = true;
        notifyBadAttribute = true;
        debugHotkeys = false;
        highlightHoveredBuilding = true;
        highResolutionCityPreview = false;
        roadSnowOverlay = true;
        groundSnowOverlay = true;
        legacyBusSystem = false;
        depthFactor = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        stretchFactor = 0;
        tsMapDarkMode = false;
        edgeGradients = true;
        failedStartupCtr = 0;
        drawNeighbors = true;
        theme = 2;
        themeId = null;
        TheoTown.gameSetup.applyDefaultSettings();
    }
}
