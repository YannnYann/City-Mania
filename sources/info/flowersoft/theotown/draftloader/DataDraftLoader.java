package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.DataDraft;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class DataDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"data"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public DataDraft load() throws JSONException {
        DataDraft dataDraft = new DataDraft();
        loadDefaults(dataDraft);
        dataDraft.content = this.src.copy();
        return dataDraft;
    }
}
