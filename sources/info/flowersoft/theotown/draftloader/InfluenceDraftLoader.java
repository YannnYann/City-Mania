package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.InfluenceDraft;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class InfluenceDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"influence"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        InfluenceDraft influenceDraft = (InfluenceDraft) getDraft(this.src, InfluenceDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.InfluenceDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new InfluenceDraft();
            }
        });
        loadDefaults(influenceDraft);
        influenceDraft.induceVector = loadInfluences();
        return influenceDraft;
    }
}
