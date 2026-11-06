package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class PipeDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"pipe"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public PipeDraft load() throws JSONException {
        PipeDraft pipeDraft = new PipeDraft();
        loadDefaults(pipeDraft);
        pipeDraft.frames = loadFrames("frames", "frame", pipeDraft, pipeDraft.frames);
        pipeDraft.width = this.src.optInt("width", 1);
        pipeDraft.height = this.src.optInt("height", 1);
        pipeDraft.price = positivePrice(this.src.optInt("price", 0));
        pipeDraft.monthlyPrice = positivePrice(this.src.optInt("monthly price", 0));
        int iOptInt = this.src.optInt("water radius", 4);
        pipeDraft.waterRadius = iOptInt;
        if (iOptInt > 10 && !pipeDraft.isPrivileged()) {
            pipeDraft.waterRadius = 10;
        }
        pipeDraft.addPriceDrafts = loadDraftList(this.src, "add price", pipeDraft.id, pipeDraft.addPriceDrafts);
        if (pipeDraft.category == null) {
            pipeDraft.category = (CategoryDraft) Drafts.ALL.get("$cat_water00");
        }
        Drafts.PIPES.add(pipeDraft);
        return pipeDraft;
    }
}
