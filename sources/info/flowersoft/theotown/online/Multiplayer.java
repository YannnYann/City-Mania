package info.flowersoft.theotown.online;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class Multiplayer {
    public static JSONObject CONFIG = Resources.getSpecificConfig("multiplayer");

    public static boolean isAvailable() {
        if (CONFIG.optBoolean("available")) {
            return true;
        }
        if (CONFIG.optBoolean("available for android") && Gdx.app.getType() == Application.ApplicationType.Android) {
            return true;
        }
        if (CONFIG.optBoolean("available for desktop") && Gdx.app.getType() == Application.ApplicationType.Desktop) {
            return true;
        }
        if (CONFIG.optBoolean("available for ios") && Gdx.app.getType() == Application.ApplicationType.iOS) {
            return true;
        }
        if (Backend.getInstance().getUser().getForumId() != 0) {
            JSONArray jSONArrayOptArray = JSONUtil.optArray(CONFIG, "available for forum ids");
            for (int i = 0; i < jSONArrayOptArray.length(); i++) {
                if (jSONArrayOptArray.optInt(i) == Backend.getInstance().getUser().getForumId()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isSupported() {
        return TheoTown.VERSION_CODE >= CONFIG.optInt("min version");
    }

    public static int getRegionCoinsPerDay() {
        return CONFIG.optInt("region coins per day", 10);
    }

    public static int getRegionCoinsDayDelay() {
        return CONFIG.optInt("region coins day delay", 12);
    }

    public static int getRegionUnlockCooldownMinutes() {
        return CONFIG.optInt("region unlock cooldown minutes", 30);
    }

    public static int getRegionCoinsInit() {
        return CONFIG.optInt("region coins init", 1000);
    }

    public static int getRegionCoinsLimit() {
        return CONFIG.optInt("region coins limit", 100000);
    }

    public static String getRulesUrl() {
        return CONFIG.optString("rules url", "https://forum.theotown.com/");
    }

    public static boolean giftsAreAvailable() {
        return (CONFIG.optBoolean("gifts available", false) && CONFIG.optInt("gifts min version", 9999) <= TheoTown.VERSION_CODE) || Backend.getInstance().getUser().getAdmin() != 0;
    }

    public static boolean allowToUploadUsedRegions() {
        return CONFIG.optBoolean("allow to upload used regions", false);
    }

    public static int minUploadPrice() {
        return CONFIG.optInt("min region upload price", 100);
    }

    public static int uploadMapFactor() {
        return CONFIG.optInt("region upload map factor", 2);
    }

    public static int uploadSizeFactor() {
        return CONFIG.optInt("region upload size factor", 4);
    }
}
