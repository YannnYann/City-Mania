package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.TemplateDraft;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TemplateDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"template"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        TemplateDraft templateDraft = new TemplateDraft();
        loadDefaults(templateDraft);
        templateDraft.additive = this.src.optBoolean("additive", templateDraft.additive);
        JSONObject jSONObjectCopy = this.src.copy();
        jSONObjectCopy.remove("type");
        jSONObjectCopy.remove("additive");
        templateDraft.content = jSONObjectCopy;
        return templateDraft;
    }
}
