package info.flowersoft.theotown.input;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public final class KeyActionManager {
    public static File getTargetFile() {
        return new File(TheoTown.APP_DIR, "key_mapping.json");
    }

    public static void save(Stapel2DGameContext stapel2DGameContext) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("mapping version", 0);
            jSONObject.put("version code", TheoTown.VERSION_CODE);
            jSONObject.put("version name", TheoTown.VERSION_NAME);
            jSONObject.put("time", InternetTime.getInstance().getTime());
            JSONObject jSONObject2 = new JSONObject();
            KeyAction.save(jSONObject2);
            jSONObject.put("mapping", jSONObject2);
            Files.writeTextFile(getTargetFile(), jSONObject.toString(2));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void load(Stapel2DGameContext stapel2DGameContext) {
        File targetFile = getTargetFile();
        String textFile = targetFile.exists() ? Files.readTextFile(targetFile) : null;
        if (textFile != null) {
            try {
                KeyAction.load(new JSONObject(textFile).getJSONObject("mapping"));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
