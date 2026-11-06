package info.flowersoft.theotown.util;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class OSUtil {
    public static void openEULA() {
        String strOptString;
        JSONObject jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject("eula");
        if (jSONObjectOptJSONObject == null || (strOptString = jSONObjectOptJSONObject.optString("url")) == null || strOptString.isEmpty()) {
            return;
        }
        TheoTown.runtimeFeatures.openURLInApp(strOptString);
    }

    public static void openPolicy() {
        String strOptString;
        JSONObject jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject("privacy");
        if (jSONObjectOptJSONObject == null || (strOptString = jSONObjectOptJSONObject.optString("url")) == null || strOptString.isEmpty()) {
            return;
        }
        TheoTown.runtimeFeatures.openURLInApp(strOptString);
    }

    public static void openHelp() {
        TheoTown.runtimeFeatures.openURLInApp("https://theotown.com/forum/viewtopic.php?f=48&t=9540");
    }

    public static void pasteIntoClipboard(String str) {
        Gdx.app.getClipboard().setContents(str);
    }
}
