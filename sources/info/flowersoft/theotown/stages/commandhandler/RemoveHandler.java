package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class RemoveHandler implements CommandHandler {
    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public boolean canHandle(String str) {
        return str.startsWith("rm -rf") || str.startsWith("rm rf") || str.startsWith("sudo rm -rf") || str.startsWith("sudo rm rf");
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public void handle(JSONObject jSONObject, String str, Setter<String> setter) throws JSONException {
        if (!str.startsWith("sudo")) {
            setter.set("Insufficient permissions, you have to use sudo rm -rf instead\nThis will delete all of your game files and data. This includes your cities, and regions.");
            return;
        }
        TheoTown.gamesService.unlockAchievement("rm_rf_console");
        deleteFolder(Resources.getCacheDir(), setter);
        deleteFolder(Resources.getLocalMapSaveDir(), setter);
        deleteFolder(Resources.getOldMapSaveDir(), setter);
        deleteFolder(Resources.getRegionsDir(), setter);
        setter.set("Resetting variables ...");
        GlobalTransitionVariables.getInstance().clear();
        setter.set("Resetting account ...");
        Backend.getInstance().logout();
        setter.set("Resetting settings ...");
        Settings.resetAll();
        setter.set("Restarting game ...");
        TheoTown.runtimeFeatures.restartAppSlowly();
    }

    public final void deleteFolder(File file, Setter<String> setter) {
        setter.set("Deleting files in " + file + " ...");
        Files.deleteFile(file);
    }
}
