package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ToolDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class ToolDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"tool"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        ToolDraft toolDraft = new ToolDraft();
        loadDefaults(toolDraft);
        toolDraft.frames = loadFrames("frames", "frame", toolDraft, toolDraft.frames);
        toolDraft.cmdId = this.src.optString("cmd id", null);
        toolDraft.cmdText = this.src.optString("cmd", null);
        toolDraft.onClickTransitions = loadTransitions(this.src, "on click fun", toolDraft.onClickTransitions);
        toolDraft.price = this.src.optInt("price");
        if (toolDraft.category == null) {
            toolDraft.category = (CategoryDraft) Drafts.get("$cat_root00", CategoryDraft.class);
        }
        Draft draft = this.oldDraft;
        if (draft instanceof ToolDraft) {
            Drafts.TOOLS.remove(draft);
        }
        Drafts.TOOLS.add(toolDraft);
        return toolDraft;
    }
}
