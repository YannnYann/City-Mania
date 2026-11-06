package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ScenarioDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScenarioDraftLoader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"scenario"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        ScenarioDraft scenarioDraft = new ScenarioDraft();
        loadDefaults(scenarioDraft);
        if (!scenarioDraft.isPrivileged()) {
            throw new IllegalArgumentException("Cannot define scenario without permission");
        }
        if (this.src.isNull("city file")) {
            scenarioDraft.setCityFile(null);
        } else {
            scenarioDraft.setCityFile(PluginHelper.resolveFile(this.src.getString("city file")));
            AbstractFile cityFile = scenarioDraft.getCityFile();
            Intrinsics.checkNotNull(cityFile);
            if (!cityFile.isFile()) {
                throw new IllegalArgumentException("Invalid city file");
            }
        }
        scenarioDraft.setDiscordUrl(this.src.optString("discord url", null));
        scenarioDraft.setCompletedVarName(this.src.optString("completed var", null));
        if (((ScenarioDraft) Drafts.get(scenarioDraft.id, ScenarioDraft.class)) != null) {
            throw new IllegalArgumentException(("Duplicate definition of scenario " + scenarioDraft.id).toString());
        }
        if (scenarioDraft.ordinal == Integer.MIN_VALUE) {
            scenarioDraft.ordinal = Drafts.SCENARIOS.size();
        }
        Drafts.SCENARIOS.add(scenarioDraft);
        return scenarioDraft;
    }
}
