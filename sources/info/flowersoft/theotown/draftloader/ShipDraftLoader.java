package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ShipDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class ShipDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"ship"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        ShipDraft shipDraft = new ShipDraft();
        loadDefaults(shipDraft);
        shipDraft.frames = loadFrames("frames", "frame", shipDraft, shipDraft.frames);
        shipDraft.length = this.src.optInt("length", 1);
        Drafts.SHIPS.add(shipDraft);
        return shipDraft;
    }
}
