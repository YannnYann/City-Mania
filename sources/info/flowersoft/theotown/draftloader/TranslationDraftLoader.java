package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.TranslationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TranslationDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"translation"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        TranslationDraft translationDraft = new TranslationDraft();
        loadDefaults(translationDraft);
        JSONObject jSONObjectOptJSONObject = this.src.optJSONObject("translation");
        translationDraft.translation = jSONObjectOptJSONObject;
        if (jSONObjectOptJSONObject == null) {
            translationDraft.translation = new JSONObject(this.src.toString());
        }
        if (this.src.optBoolean("immediately", true)) {
            Drafts.TRANSLATIONS.add(translationDraft);
        }
        return translationDraft;
    }
}
