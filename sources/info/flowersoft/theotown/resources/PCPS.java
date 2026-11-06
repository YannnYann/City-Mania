package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class PCPS {
    public static JSONObject CONFIG = Resources.getSpecificConfig("pcps");

    public static boolean isAvailable() {
        return CONFIG.optBoolean("available", false) && Gdx.app.getType() == Application.ApplicationType.Desktop;
    }
}
