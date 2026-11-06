package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class WireDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"wire"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public WireDraft load() throws JSONException {
        WireDraft wireDraft = new WireDraft();
        loadDefaults(wireDraft);
        wireDraft.frames = loadFrames("frames", "frame", wireDraft, wireDraft.frames);
        wireDraft.width = this.src.optInt("width", 1);
        wireDraft.height = this.src.optInt("height", 1);
        wireDraft.spacing = this.src.optInt("spacing");
        wireDraft.maxSpacing = this.src.optInt("max spacing");
        wireDraft.price = positivePrice(this.src.optInt("price", 0));
        wireDraft.monthlyPrice = positivePrice(this.src.optInt("monthly price", 0));
        wireDraft.connectable = this.src.optBoolean("connectable", true);
        int iOptInt = this.src.optInt("level", 0);
        wireDraft.level = iOptInt;
        if (iOptInt < -1 || iOptInt > 1) {
            throw new IllegalArgumentException("Wire level must be in -1..1 but was " + wireDraft.level);
        }
        int iOptInt2 = this.src.optInt("energy radius", 5);
        wireDraft.energyRadius = iOptInt2;
        if (iOptInt2 > 10 && !wireDraft.isPrivileged()) {
            wireDraft.energyRadius = 10;
        }
        wireDraft.power = (float) this.src.optDouble("power", 0.0d);
        wireDraft.addPriceDrafts = loadDraftList(this.src, "add price", wireDraft.id, wireDraft.addPriceDrafts);
        if (wireDraft.category == null) {
            wireDraft.category = (CategoryDraft) Drafts.ALL.get("$cat_energy00");
        }
        Drafts.WIRES.add(wireDraft);
        return wireDraft;
    }
}
