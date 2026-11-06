package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RailDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"rail"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        DraftLoader draftLoader;
        RailDraft railDraft = new RailDraft();
        loadDefaults(railDraft);
        if (!this.src.has("hidden")) {
            railDraft.hidden = true;
        }
        railDraft.frames = loadFrames("frames", "frame", railDraft, railDraft.frames);
        boolean zOptBoolean = this.src.optBoolean("on ground", true);
        railDraft.onGround = zOptBoolean;
        if (!zOptBoolean) {
            railDraft.pileFrames = loadFrames("pile frames", "pile frame", railDraft, railDraft.pileFrames);
            railDraft.pileHeight = this.src.getInt("pile height");
            railDraft.pileDistance = this.src.getInt("pile distance");
            railDraft.groundLevel = 1;
            railDraft.price = this.src.getInt("price");
            railDraft.monthlyPrice = this.src.getInt("monthly price");
            railDraft.speed = (float) this.src.optDouble("speed", 1.0d);
            railDraft.supportsSlope = this.src.optBoolean("supports slope", railDraft.supportsSlope);
            if (this.src.has("animation")) {
                List<AnimationSpot> listLoadAnimations = loadAnimations(railDraft.hashCode(), "animation");
                railDraft.animationSpots = listLoadAnimations;
                DraftLoader draftLoader2 = this;
                railDraft.animationSpotIndices = draftLoader2.loadFrameAnimationIndices(railDraft.id, "frame animation indices", 16, listLoadAnimations.size(), this.src);
                draftLoader = draftLoader2;
            } else {
                draftLoader = this;
            }
            if (draftLoader.src.has("animation fg")) {
                List<AnimationSpot> listLoadAnimations2 = loadAnimations(railDraft.hashCode(), "animation fg");
                railDraft.animationFGSpots = listLoadAnimations2;
                railDraft.animationFGSpotIndices = draftLoader.loadFrameAnimationIndices(railDraft.id, "frame animation fg indices", 16, listLoadAnimations2.size(), draftLoader.src);
            }
            railDraft.addPriceDrafts = loadDraftList(draftLoader.src, "add price", railDraft.id, railDraft.addPriceDrafts);
            if (railDraft.category == null) {
                railDraft.category = (CategoryDraft) Drafts.ALL.get("$cat_road00");
            }
            Drafts.RAILS.add(railDraft);
            return railDraft;
        }
        throw new IllegalArgumentException("Legacy on ground rails are not supported anymore");
    }
}
