package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class FenceDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"fence"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        FenceDraft fenceDraft = (FenceDraft) getDraft(this.src, FenceDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.FenceDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new FenceDraft();
            }
        });
        loadDefaults(fenceDraft);
        fenceDraft.frames = loadFrames("frames", "frame", fenceDraft, fenceDraft.frames);
        long jOptLong = this.src.optLong("price", 0L);
        fenceDraft.price = jOptLong;
        if (jOptLong < 0) {
            fenceDraft.price = 0L;
        }
        if (this.src.has("animation")) {
            List<AnimationSpot> listLoadAnimations = loadAnimations(fenceDraft.hashCode(), "animation");
            fenceDraft.animationSpots = listLoadAnimations;
            fenceDraft.animationSpotIndices = loadFrameAnimationIndices(fenceDraft.id, "frame animation indices", fenceDraft.frames.length, listLoadAnimations.size(), this.src);
        }
        if (fenceDraft.category == null) {
            fenceDraft.category = (CategoryDraft) Drafts.ALL.get("$cat_fence00");
        }
        return fenceDraft;
    }
}
