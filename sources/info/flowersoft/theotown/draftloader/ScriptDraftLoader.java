package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.ScriptDraft;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class ScriptDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"script"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public ScriptDraft load() throws JSONException {
        ScriptDraft scriptDraft = new ScriptDraft();
        loadDefaults(scriptDraft);
        return scriptDraft;
    }
}
