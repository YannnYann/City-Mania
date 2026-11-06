package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ToolGroupDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class ToolGroupDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"tool group"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws MissingDraftException, JSONException {
        ToolGroupDraft toolGroupDraft = (ToolGroupDraft) getDraft(this.src, ToolGroupDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.ToolGroupDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new ToolGroupDraft();
            }
        });
        loadDefaults(toolGroupDraft);
        JSONArray jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(this.src, "drafts");
        if (jSONArrayOptArrayOrSingle == null) {
            throw new JSONException("Tool group must define drafts");
        }
        for (int i = 0; i < jSONArrayOptArrayOrSingle.length(); i++) {
            toolGroupDraft.drafts.add(Drafts.getOrThrow(jSONArrayOptArrayOrSingle.getString(i), Draft.class));
        }
        if (toolGroupDraft.category == null) {
            toolGroupDraft.category = (CategoryDraft) Drafts.get("$cat_root00", CategoryDraft.class);
        }
        return toolGroupDraft;
    }
}
