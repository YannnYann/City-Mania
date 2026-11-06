package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public interface CommandHandler {
    boolean canHandle(String str);

    void handle(JSONObject jSONObject, String str, Setter<String> setter) throws JSONException;
}
