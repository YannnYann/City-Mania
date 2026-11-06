package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.ContentCollector;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import info.flowersoft.theotown.util.vfs.RealFile;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultHandler implements CommandHandler {
    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public boolean canHandle(String str) {
        return TheoTown.isPickleMode() && Hashing.md5(str).equals("8bcaa19b51ed9c413661c0543bde4c39");
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public void handle(JSONObject jSONObject, String str, Setter<String> setter) throws JSONException {
        String string = jSONObject.getString(str);
        File theoTownDir = Resources.getTheoTownDir();
        File file = new File(theoTownDir, string);
        File file2 = new File(theoTownDir, string.substring(0, string.lastIndexOf(".")));
        if (file.exists()) {
            if (file2.mkdirs() || file2.exists()) {
                new ContentCollector().defaultFileHandler(RealFile.createFile(file, null), RealFile.createDirectory(file2, null));
            }
        }
    }
}
