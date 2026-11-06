package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import com.google.android.gms.ads.AdSize;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.FontFactory;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.RandomUtil;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Shader;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gui.Skin;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import vm2.LuaValue;
import vm2.NoLuaAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class Resources {
    public static final Color COLOR_COM1;
    public static final Color COLOR_COM2;
    public static final Color COLOR_COM3;
    public static final Color COLOR_IND1;
    public static final Color COLOR_IND2;
    public static final Color COLOR_IND3;
    public static final Color COLOR_RES1;
    public static final Color COLOR_RES2;
    public static final Color COLOR_RES3;

    @NoLuaAccess
    public static JSONObject CONFIG;
    public static int FRAMES_DESTRUCTION;
    public static int FRAMES_DESTRUCTION_COUNT;
    public static int FRAME_AIRPORT_ZONE;
    public static int FRAME_BLANK_TILE;
    public static int FRAME_CAUSTICS1;
    public static int FRAME_CIRCLE;
    public static int FRAME_COMMERCIAL_LVL2_ZONE;
    public static int FRAME_COMMERCIAL_ZONE;
    public static int FRAME_CONSTRUCTION_TILE;
    public static int FRAME_DESTROYED_ZONE;
    public static int FRAME_FARM_ZONE;
    public static int FRAME_GRADIENT_MX;
    public static int FRAME_GRADIENT_X;
    public static int FRAME_GRADIENT_Y;
    public static int FRAME_HALO;
    public static int FRAME_HARBOR_ZONE;
    public static int FRAME_INDUSTRIAL_LVL2_ZONE;
    public static int FRAME_INDUSTRIAL_ZONE;
    public static int FRAME_LOCATE_FIRE_ALERT;
    public static int FRAME_LOCATE_GARBAGE_ALERT;
    public static int FRAME_LOCATE_MEDIC_ALERT;
    public static int FRAME_LOCATE_POLICE_ALERT;
    public static int FRAME_LOCATE_SWAT_ALERT;
    public static int FRAME_LOGO_FLOWERSOFT_SMALL;
    public static int FRAME_LOGO_THEOTOWN;
    public static int FRAME_MILITARY_ZONE;
    public static int FRAME_OTHER_ZONE;
    public static int FRAME_PEOPLE;
    public static int FRAME_RAIN;
    public static int FRAME_RECT;
    public static int FRAME_REGION_BORDER;
    public static int FRAME_REMOVE_TILE;
    public static int FRAME_RESIDENTIAL_LVL2_ZONE;
    public static int FRAME_RESIDENTIAL_ZONE;
    public static int FRAME_SEARCH_BUTTON;
    public static int FRAME_SHOPITEM_BACKGROUND;
    public static int FRAME_SIDEMARK;
    public static int FRAME_TILEMARK;
    public static int FRAME_TOOLMARK;
    public static int FRAME_TOOLMARK_ARROWS;
    public static int FRAME_TOOLMARK_BLOB;
    public static int FRAME_TOOLMARK_BLUE;
    public static int FRAME_TOOLMARK_BLUE_DOTTED;
    public static int FRAME_TOOLMARK_CHECKER;
    public static int FRAME_TOOLMARK_GREEN;
    public static int FRAME_TOOLMARK_GREEN_DOTTED;
    public static int FRAME_TOOLMARK_MARKER;
    public static int FRAME_TOOLMARK_RED;
    public static int FRAME_TOOLMARK_RED_DOTTED;
    public static int FRAME_TOOLMARK_TILE;
    public static int FRAME_TOOLMARK_WHITE;
    public static int FRAME_TOOLMARK_YELLOW_DOTTED;
    public static int FRAME_TOUCH_POINT;
    public static int FRAME_WHITE_TILE;
    public static int FRAME_ZONE_CRIME_BURGLARY;
    public static int FRAME_ZONE_CRIME_GRAFFITI;
    public static int FRAME_ZONE_CRIME_MURDER;
    public static int FRAME_ZONE_CRIME_RIOT;
    public static int FRAME_ZONE_DEATH;
    public static int FRAME_ZONE_EMPTY;
    public static int FRAME_ZONE_GARBAGE;
    public static int FRAME_ZONE_ILLNESS;
    public static int FRAME_ZONE_NO_COAL;
    public static int FRAME_ZONE_NO_ENERGY;
    public static int FRAME_ZONE_NO_ROAD;
    public static int FRAME_ZONE_NO_WATER;
    public static int FRAME_ZONE_OVERLOADED;
    public static int FRAME_ZONE_UNHAPPY;
    public static int FRAME_ZONE_WARNING_SIGN;

    @NoLuaAccess
    public static boolean HUGE_TEXTURE_MODE;
    public static int ICON_ABOUT;
    public static int ICON_ACCOUNT;
    public static int ICON_ACHIEVEMENTS;
    public static int ICON_ADMIN_NUKE_TOOL;
    public static int ICON_AIRPORT;
    public static int ICON_ALERT;
    public static int ICON_AUTOROAD;
    public static int ICON_AWARD;
    public static int ICON_BACKWARD;
    public static int ICON_BACK_UPWARDS;
    public static int ICON_BIGBIGBIG_MAP;
    public static int ICON_BIGBIGEXTRA_MAP;
    public static int ICON_BIGBIG_MAP;
    public static int ICON_BIG_MAP;
    public static int ICON_BODY_DISPOSAL;
    public static int ICON_BUILD;
    public static int ICON_BUS_STOP;
    public static int ICON_BUS_TRANSPORT;
    public static int ICON_CALL_FIREDEPARTMENT;
    public static int ICON_CALL_MEDIC;
    public static int ICON_CALL_POLICE;
    public static int ICON_CAMERA;
    public static int ICON_CANCEL;
    public static int ICON_CATASTROPHES;
    public static int ICON_CATEGORY;
    public static int ICON_CENTER;
    public static int ICON_CHRISTMAS;
    public static int ICON_CITY;
    public static int ICON_CLEAR_TEXT;
    public static int ICON_CLOCK;
    public static int ICON_CLOCK_EMPTY;
    public static int ICON_CLOSE;
    public static int ICON_COLOR;
    public static int ICON_COMMERCIAL;
    public static int ICON_COMMERCIAL_LVL2;
    public static int ICON_CONSOLE;
    public static int ICON_COPY;
    public static int ICON_CULTURE;
    public static int ICON_DAILY_AWARD;
    public static int ICON_DEBUGINFO;
    public static int ICON_DECORATION;
    public static int ICON_DENSITY;
    public static int ICON_DESERT;
    public static int ICON_DIAMOND;
    public static int ICON_DIAMOND_SMALL;
    public static int ICON_DISASTER_EARTHQUAKE;
    public static int ICON_DISASTER_FIRE;
    public static int ICON_DISASTER_FLOODING;
    public static int ICON_DISASTER_GODZILLA;
    public static int ICON_DISASTER_ILLNESS;
    public static int ICON_DISASTER_METEOR;
    public static int ICON_DISASTER_NUKE;
    public static int ICON_DISASTER_RIOT;
    public static int ICON_DISASTER_TORNADO;
    public static int ICON_DISASTER_UFO;
    public static int ICON_DOWN;
    public static int ICON_DOWNLOAD;
    public static int ICON_EDIT;
    public static int ICON_EDUCATION;
    public static int ICON_EDUCATION_HIGH;
    public static int ICON_EDUCATION_LOW;
    public static int ICON_ENERGY;
    public static int ICON_EYE;
    public static int ICON_EYE_DROPPER;
    public static int ICON_FARM;
    public static int ICON_FEATURES;
    public static int ICON_FENCE;
    public static int ICON_FIREDEPARTMENT;
    public static int ICON_FOLDER;
    public static int ICON_FOLLOW_CAR_TOOL;
    public static int ICON_FORWARD;
    public static int ICON_GAMEMODE_EASY;
    public static int ICON_GAMEMODE_HARD;
    public static int ICON_GAMEMODE_MIDDLE;
    public static int ICON_GAMEMODE_SANDBOX;
    public static int ICON_GOLDEN_PRESENT;
    public static int ICON_HALF_TUNNEL_PRICE;
    public static int ICON_HAMBURGER;
    public static int ICON_HAPPINESS;
    public static int ICON_HARBOR;
    public static int ICON_HEART;
    public static int ICON_HELP;
    public static int ICON_HILLS;
    public static int ICON_INDUSTRIAL;
    public static int ICON_INDUSTRIAL_LVL2;
    public static int ICON_INFINITY;
    public static int ICON_INFO;
    public static int ICON_INHABITANTS;
    public static int ICON_LAND;
    public static int ICON_LANDMARK;
    public static int ICON_LEADERBOARDS;
    public static int ICON_LEVEL;
    public static int ICON_LEVEL_DOWN;
    public static int ICON_LEVEL_I;
    public static int ICON_LEVEL_II;
    public static int ICON_LEVEL_III;
    public static int ICON_LEVEL_UP;
    public static int ICON_LOAD;
    public static int ICON_LOAD_PAYBACK;
    public static int ICON_LOAN;
    public static int ICON_LOAN_TAKE;
    public static int ICON_LOCATE;
    public static int ICON_LOCKED;
    public static int ICON_MAP;
    public static int ICON_MAP_SCREENSHOT;
    public static int ICON_MEDIC;
    public static int ICON_MEDIUM_MAP;
    public static int ICON_MENU;
    public static int ICON_MILITARY;
    public static int ICON_MINUS;
    public static int ICON_MONEY;
    public static int ICON_MOVE_BUILDING;
    public static int ICON_MUSIC;
    public static int ICON_NATURE;
    public static int ICON_NEIGHBORHOOD_COMMERCIAL;
    public static int ICON_NEXT;
    public static int ICON_NOISE;
    public static int ICON_NOTIFICATION;
    public static int ICON_NOTIFICATION_NO;
    public static int ICON_OK;
    public static int ICON_ONLINE_REGIONS;
    public static int ICON_ONLINE_REGION_COIN;
    public static int ICON_OTHER;
    public static int ICON_PARK;
    public static int ICON_PAUSE;
    public static int ICON_PERFORMANCE;
    public static int ICON_PICKLE_COIN;
    public static int ICON_PIPE;
    public static int ICON_PLAY;
    public static int ICON_PLAYFAST;
    public static int ICON_PLAYFASTFAST;
    public static int ICON_PLAYSLOW;
    public static int ICON_PLAY_AD_VIDEO;
    public static int ICON_PLUGIN;
    public static int ICON_PLUS;
    public static int ICON_POLICE;
    public static int ICON_POLLUTION;
    public static int ICON_PREVIOUS;
    public static int ICON_PUBLIC;
    public static int ICON_PUBLICTRANSPORT;
    public static int ICON_RANDOM;
    public static int ICON_RANK;
    public static int ICON_RATING;
    public static int ICON_RED_BUTTON;
    public static int ICON_REGION;
    public static int ICON_REGION_CIRCLE;
    public static int ICON_REGION_COMMENTS;
    public static int ICON_REGION_HIDE;
    public static int ICON_REGION_MERGE;
    public static int ICON_REGION_SHOW;
    public static int ICON_REGION_SPLIT;
    public static int ICON_RELIGION;
    public static int ICON_REMOVE;
    public static int ICON_REMOVE_ANY;
    public static int ICON_REMOVE_FENCE;
    public static int ICON_REMOVE_METRO_TUNNEL;
    public static int ICON_REMOVE_PIPE;
    public static int ICON_REMOVE_ROAD_DECORATION;
    public static int ICON_REMOVE_TUNNEL;
    public static int ICON_REMOVE_TUNNEL_SMALL;
    public static int ICON_REMOVE_UNDER;
    public static int ICON_REMOVE_UNDERGROUND_WIRE;
    public static int ICON_REMOVE_UNDERGROUND_WIRE_SMALL;
    public static int ICON_REMOVE_ZONE;
    public static int ICON_REPORT;
    public static int ICON_RESET;
    public static int ICON_RESIDENTIAL;
    public static int ICON_RESIDENTIAL_LVL2;
    public static int ICON_RIVER;
    public static int ICON_ROAD;
    public static int ICON_ROADAUTOJOIN;
    public static int ICON_ROAD_AIR;
    public static int ICON_ROAD_BRIDGE;
    public static int ICON_ROAD_CONSTANT;
    public static int ICON_ROAD_DECORATION;
    public static int ICON_ROAD_DOWN;
    public static int ICON_ROAD_GROUND;
    public static int ICON_ROAD_SMALL;
    public static int ICON_ROAD_UP;
    public static int ICON_ROCKETAIMTOOL;
    public static int ICON_ROUTE;
    public static int ICON_SAVE;
    public static int ICON_SAVE_AND_CLOSE;
    public static int ICON_SCENARIO;
    public static int ICON_SERVICE;
    public static int ICON_SETTINGS;
    public static int ICON_SHORT_BUILD_TIME;
    public static int ICON_SIGN;
    public static int ICON_SINGLELANE;
    public static int ICON_SMALL_MAP;
    public static int ICON_SPORTS;
    public static int ICON_STAR;
    public static int ICON_STATISTICS;
    public static int ICON_SUPPLY;
    public static int ICON_TERRAIN;
    public static int ICON_THEMES;
    public static int ICON_TRAFFIC;
    public static int ICON_TRAFFIC_LIGHTS_OFF;
    public static int ICON_TRAFFIC_LIGHTS_ON;
    public static int ICON_TRASH;
    public static int ICON_TREE;
    public static int ICON_TURN_LEFT;
    public static int ICON_TURN_RIGHT;
    public static int ICON_UBER;
    public static int ICON_UNLOCK;
    public static int ICON_UNTOUCHABLE;
    public static int ICON_UP;
    public static int ICON_UPGRADE;
    public static int ICON_WASTE_DISPOSAL;
    public static int ICON_WATER;
    public static int ICON_WEATHER_FOG;
    public static int ICON_WEATHER_LIGHTING;
    public static int ICON_WEATHER_RAINY;
    public static int ICON_WEATHER_SUNNY;
    public static int ICON_WINTER;
    public static int ICON_WIRE;
    public static int ICON_WIZARD;
    public static int ICON_ZONES;

    @NoLuaAccess
    public static Image IMAGE_WORLD;

    @NoLuaAccess
    public static LuaValue INTRINSICS;

    @NoLuaAccess
    public static JSONObject KEYS;
    public static int LOGO_AB;
    public static int LOGO_AZULA;
    public static int LOGO_BLAZE;
    public static int LOGO_BUNNY;
    public static int LOGO_Bearbear65;
    public static int LOGO_CEPHUES;
    public static int LOGO_DANIIL;
    public static int LOGO_DISCORD;
    public static int LOGO_EVAN;
    public static int LOGO_FLOWERSOFT;
    public static int LOGO_HAKANUCKUS;
    public static int LOGO_HERNAN;
    public static int LOGO_JA;
    public static int LOGO_KHADAFI;
    public static int LOGO_LAKAN;
    public static int LOGO_LIBGDX;
    public static int LOGO_LOBBY;
    public static int LOGO_LUCAS;
    public static int LOGO_MAXIME;
    public static int LOGO_MDK;
    public static int LOGO_PHOENIX;
    public static int LOGO_REMAINSSTAY;
    public static int LOGO_RENO;
    public static int LOGO_RONNIE;
    public static int LOGO_SGG;
    public static int LOGO_THEO;
    public static int LOGO_WADERS;
    public static int NP_REGION_BORDER;
    public static int NP_TUTORIAL_MARK;
    public static int NP_TUTORIAL_UNMARK;
    public static int NP_UI_PAUSE;
    public static int PEOPLE_FIREFIGHTER0;
    public static int PEOPLE_FIREFIGHTER1;
    public static int PEOPLE_GARBAGE_COLLECTOR;
    public static int PEOPLE_GENERAL;
    public static int PEOPLE_GIRL;
    public static int PEOPLE_GRANDMA_DONT_USE;
    public static int PEOPLE_JUDGE;
    public static int PEOPLE_LAWYER;
    public static int PEOPLE_MANAGER;
    public static int PEOPLE_MAYOR;
    public static int PEOPLE_MECHANIC;
    public static int PEOPLE_MEDIC;
    public static int PEOPLE_MINER;
    public static int PEOPLE_MUSICIAN;
    public static int PEOPLE_NONE;
    public static int PEOPLE_OFFICER;
    public static int PEOPLE_OFFICEWORKER;
    public static int PEOPLE_PRIEST;
    public static int PEOPLE_PROSTITUTE;
    public static int PEOPLE_RANGER;
    public static int PEOPLE_ROADWORKER;
    public static int PEOPLE_SERVANT;
    public static int PEOPLE_SOLDIER;
    public static int PEOPLE_SWAT;
    public static int PEOPLE_TEACHER0;
    public static int PEOPLE_TEACHER1;
    public static int PEOPLE_WIZARD;
    public static int PEOPLE_WORKER;
    public static int PEOPLE_WORKMAN;

    @NoLuaAccess
    public static Shader SHADER_BLITTING_DEFAULT;

    @NoLuaAccess
    public static Shader SHADER_FONT;
    public static int SOUND_BUILD;
    public static int SOUND_BUILD_LAND;
    public static int SOUND_BUILD_WATER;
    public static int SOUND_CAR_FIRE;
    public static int SOUND_CAR_MEDIC;
    public static int SOUND_CAR_POLICE;
    public static int SOUND_CHRISTMAS;
    public static int SOUND_CHRISTMAS_HOHOO;
    public static int SOUND_CLICK;
    public static int SOUND_COMMERCIAL;
    public static int SOUND_DEMO;
    public static int SOUND_DESTROY;
    public static int SOUND_EARTHQUAKE;
    public static int SOUND_FIRE;
    public static int SOUND_FIREDEPARTMENT;
    public static int SOUND_HALLOWEEN;
    public static int SOUND_INDUSTRIAL;
    public static int SOUND_MEDIC;
    public static int SOUND_METEORITE_FLY;
    public static int SOUND_METEORITE_IMPACT;
    public static int SOUND_MONEY;
    public static int SOUND_NATURE;
    public static int SOUND_NEWRANK;
    public static int SOUND_NOTIFICATION;
    public static int SOUND_OCEAN;
    public static int SOUND_OPERA;
    public static int SOUND_PARK;
    public static int SOUND_POLICE;
    public static int SOUND_POWER;
    public static int SOUND_RAIN;
    public static int SOUND_RELIGION;
    public static int SOUND_RESIDENTIAL;
    public static int SOUND_RIOT;
    public static int SOUND_ROAD;
    public static int SOUND_SCHOOL;
    public static int SOUND_SNOW;
    public static int SOUND_SPORT;
    public static int SOUND_THUNDER;
    public static int SOUND_TRAFFIC;
    public static int SOUND_UFO_AMBIENT;
    public static int SOUND_UFO_LASER;
    public static int SOUND_WIND;

    @NoLuaAccess
    public static Texture TEXTURE_WORLD;

    @NoLuaAccess
    public static final Color VERSION_COLOR;

    @NoLuaAccess
    public static FontFactory fontFactory;
    public static Skin skin;
    public static Skin skinDark;
    public static Skin skinLight;
    public static final Random RND = new Random();

    @NoLuaAccess
    public static final List<JSONObject> runtimeLocalizationPatches = new ArrayList();

    static {
        int i = 824;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i > 0) {
            int i6 = 7 - i5;
            int i7 = i & 7;
            if ((i & 3) > 0) {
                i7 ^= 4;
            }
            i2 |= ((i7 >> 1) & 1) << i6;
            i3 |= ((i7 >> 2) & 1) << i6;
            i4 |= (i7 & 1) << i6;
            i /= 8;
            i5++;
        }
        VERSION_COLOR = new Color(i2, i3, i4);
        COLOR_RES1 = new Color(0, 255, 0);
        COLOR_RES2 = new Color(0, 200, 0);
        COLOR_RES3 = new Color(0, 150, 0);
        COLOR_COM1 = new Color(0, 100, 255);
        COLOR_COM2 = new Color(0, 80, 200);
        COLOR_COM3 = new Color(0, 60, 150);
        COLOR_IND1 = new Color(255, 255, 0);
        COLOR_IND2 = new Color(AdSize.WIDE_SKYSCRAPER_WIDTH, 200, 0);
        COLOR_IND3 = new Color(80, 150, 0);
    }

    @NoLuaAccess
    public static JSONObject getSpecificConfig(String str) {
        JSONObject jSONObject = CONFIG;
        JSONObject jSONObjectOptJSONObject = jSONObject != null ? jSONObject.optJSONObject(str) : new JSONObject();
        return jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
    }

    @NoLuaAccess
    public Resources() {
    }

    @NoLuaAccess
    public static void cleanupFiles() {
        File[] fileArrListFiles;
        Files.deleteFile(getOnlineRegionsDir());
        File cacheDir = getCacheDir();
        if (cacheDir.exists() && cacheDir.isDirectory() && (fileArrListFiles = cacheDir.listFiles()) != null) {
            long jMillis = TimeUtils.millis();
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    Files.deleteFile(file);
                } else if (jMillis - file.lastModified() > 604800000) {
                    file.delete();
                }
            }
        }
    }

    @NoLuaAccess
    public static File getScreenshotDir() {
        String str;
        if (Gdx.app.getType() == Application.ApplicationType.Desktop && (str = Settings.screenshotPath) != null && !str.isEmpty()) {
            File file = new File(str);
            if ((file.isDirectory() && file.canWrite()) || file.mkdir()) {
                return file;
            }
        }
        return TheoTown.APP_SCREENSHOTS_DIR;
    }

    @NoLuaAccess
    public static File getOldMapSaveDir() {
        return new File(getTheoTownDir(), "maps");
    }

    @NoLuaAccess
    public static File allocateNewMapFileInOldSaveDir(String str) {
        return Files.allocateNonExistentFile(getOldMapSaveDir(), str, ".city");
    }

    @NoLuaAccess
    public static File allocateNewRegionFolder(String str) {
        return Files.allocateNonExistentFile(getRegionsDir(), str, "");
    }

    @NoLuaAccess
    public static File getLocalMapSaveDir() {
        return new File(getPrivateTheoTownDir(), ".maps");
    }

    @NoLuaAccess
    public static File getCacheDir() {
        return new File(getPrivateTheoTownDir(), "cache");
    }

    @NoLuaAccess
    public static File getTempFile() {
        return getTempFile("");
    }

    @NoLuaAccess
    public static File getTempFile(String str) {
        File file = TheoTown.APP_CACHE_DIR;
        file.mkdirs();
        int i = 0;
        while (true) {
            if (i >= 100) {
                break;
            }
            File file2 = new File(file, RandomUtil.generateRandomLowercaseString(8) + str);
            if (!file2.exists() || i >= 99) {
                try {
                    file2.deleteOnExit();
                    return file2;
                } catch (IllegalStateException unused) {
                    return null;
                }
            }
            i++;
        }
    }

    @NoLuaAccess
    public static File getTheoTownDir() {
        File file = TheoTown.APP_DIR;
        return ((file.exists() || file.mkdirs()) && file.canRead()) ? file : TheoTown.APP_PRIVATE_DIR;
    }

    @NoLuaAccess
    public static File getManagedCacheDir() {
        return new File(TheoTown.APP_PRIVATE_DIR, "managed cache");
    }

    @NoLuaAccess
    public static File getOnlineRegionsDir() {
        return new File(TheoTown.APP_PRIVATE_DIR, "online regions");
    }

    @NoLuaAccess
    public static File getPrivateTheoTownDir() {
        return TheoTown.APP_PRIVATE_DIR;
    }

    @NoLuaAccess
    public static File getRegionsDir() {
        return new File(TheoTown.APP_DIR, "regions");
    }

    @NoLuaAccess
    public static File getPluginDir() {
        return new File(getTheoTownDir(), "plugins");
    }

    @NoLuaAccess
    public static File getScriptingDir() {
        return new File(getTheoTownDir(), "scripting");
    }

    @NoLuaAccess
    public static File getManagedPluginsDir() {
        return new File(getTheoTownDir(), "managed plugins");
    }

    @NoLuaAccess
    public static boolean createNoMediaFile(File file) {
        File file2 = new File(file.getAbsolutePath(), ".nomedia");
        if (file2.exists()) {
            return true;
        }
        try {
            return file2.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    @NoLuaAccess
    public static void addRuntimeLocalizationPatch(JSONObject jSONObject) {
        List<JSONObject> list = runtimeLocalizationPatches;
        list.remove(jSONObject);
        list.add(jSONObject);
    }

    @NoLuaAccess
    public static List<JSONObject> getEffectiveLocalizationPatches() {
        ArrayList arrayList = new ArrayList(Drafts.TRANSLATIONS.size() + 1 + runtimeLocalizationPatches.size());
        for (int i = 0; i < Drafts.TRANSLATIONS.size(); i++) {
            arrayList.add(Drafts.TRANSLATIONS.get(i).translation);
        }
        if (Settings.translatePlugins) {
            for (int i2 = 0; i2 < Drafts.LOADED_PLUGINS.size(); i2++) {
                JSONObject translations = Drafts.LOADED_PLUGINS.get(i2).getTranslations();
                if (translations != null) {
                    arrayList.add(translations);
                }
            }
        }
        arrayList.addAll(runtimeLocalizationPatches);
        arrayList.add(CONFIG.optJSONObject("translation patches"));
        return arrayList;
    }

    @NoLuaAccess
    public static boolean isInTheoTownDir(File file) {
        try {
            String canonicalPath = file.getCanonicalPath();
            if (canonicalPath.startsWith(getTheoTownDir().getCanonicalPath())) {
                return true;
            }
            return canonicalPath.startsWith(getPrivateTheoTownDir().getCanonicalPath());
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Font[] getFonts() {
        Skin skin2 = skin;
        return new Font[]{skin2.fontSmall, skin2.fontDefault, skin2.fontBig};
    }

    @NoLuaAccess
    public static void applyFontScaling(int i) {
        float fPow = (float) Math.pow(1.2000000476837158d, Math.min(Math.max(i, -1), 1));
        for (Font font : getFonts()) {
            ((FontFactory.FontRenderer) font.image.getTexture(0).getSource()).setFontSize(Math.round(r4.getOriginalSize() * fPow));
        }
    }

    @NoLuaAccess
    public static void applyFontLocale(Locale locale) {
        fontFactory.setLocale(locale);
        for (Font font : getFonts()) {
            ((FontFactory.FontRenderer) font.image.getTexture(0).getSource()).clear();
        }
    }

    @NoLuaAccess
    public static long getFileSize(File file) {
        File[] fileArrListFiles;
        if (file.isFile()) {
            return file.length();
        }
        long fileSize = 0;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (!file2.getName().equals(".") && !file2.getName().equals("..")) {
                    fileSize += getFileSize(file2);
                }
            }
        }
        return fileSize;
    }

    @NoLuaAccess
    public static int resolve(String str, int i) {
        if (str != null && !str.isEmpty()) {
            try {
                Object obj = Resources.class.getField(str).get(null);
                if (obj instanceof Integer) {
                    return ((Integer) obj).intValue();
                }
            } catch (IllegalAccessException | NoSuchFieldException e) {
                e.printStackTrace();
            }
        }
        return i;
    }
}
