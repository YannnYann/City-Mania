package info.flowersoft.theotown.draftloader;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.PedestrianDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class PedestrianDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"pedestrian"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        PedestrianDraft pedestrianDraft = (PedestrianDraft) getDraft(this.src, PedestrianDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.PedestrianDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new PedestrianDraft();
            }
        });
        loadDefaults(pedestrianDraft);
        int[] iArrLoadFrames = loadFrames("frames", "frame", pedestrianDraft, pedestrianDraft.frames);
        pedestrianDraft.frames = iArrLoadFrames;
        if (iArrLoadFrames == null) {
            throw new IllegalArgumentException("Got no frames");
        }
        pedestrianDraft.flags = this.roadFlags.load(this.src, "flag", pedestrianDraft.flags);
        if (this.src.optBoolean("auto spawn", pedestrianDraft.autoSpawn)) {
            pedestrianDraft.res = 1.0f;
            pedestrianDraft.f3929com = 1.0f;
            pedestrianDraft.ind = 1.0f;
            pedestrianDraft.lvl1 = 1.0f;
            pedestrianDraft.lvl2 = 1.0f;
            pedestrianDraft.lvl3 = 1.0f;
        }
        float fOptDouble = (float) this.src.optDouble("spawn factor", 1.0d);
        pedestrianDraft.res = ((float) this.src.optDouble("residential", pedestrianDraft.res)) * fOptDouble;
        pedestrianDraft.f3929com = ((float) this.src.optDouble("commercial", pedestrianDraft.f3929com)) * fOptDouble;
        pedestrianDraft.ind = ((float) this.src.optDouble("industrial", pedestrianDraft.ind)) * fOptDouble;
        pedestrianDraft.lvl1 = ((float) this.src.optDouble("level 1", pedestrianDraft.lvl1)) * fOptDouble;
        pedestrianDraft.lvl2 = ((float) this.src.optDouble("level 2", pedestrianDraft.lvl2)) * fOptDouble;
        pedestrianDraft.lvl3 = ((float) this.src.optDouble("level 3", pedestrianDraft.lvl3)) * fOptDouble;
        pedestrianDraft.autoSpawn = Math.max(Math.max(Math.max(Math.max(Math.max(pedestrianDraft.res, pedestrianDraft.f3929com), pedestrianDraft.ind), pedestrianDraft.lvl1), pedestrianDraft.lvl2), pedestrianDraft.lvl3) > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        PedestrianDraft pedestrianDraft2 = (PedestrianDraft) Drafts.ALL.get(pedestrianDraft.id);
        if (pedestrianDraft2 != null) {
            Drafts.PEDESTRIANS.remove(pedestrianDraft2);
        }
        Drafts.PEDESTRIANS.add(pedestrianDraft);
        return pedestrianDraft;
    }
}
