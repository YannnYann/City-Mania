package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SpecialInt;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class RankDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"rank"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        RankDraft rankDraft = new RankDraft();
        loadDefaults(rankDraft);
        rankDraft.frames = loadFrames("frames", "frame", rankDraft, rankDraft.frames);
        int size = Drafts.RANKS.size();
        rankDraft.ordinal = size;
        rankDraft.xp.set((size * 70 * size * (size + 2)) + 350);
        rankDraft.award.set(rankDraft.ordinal * 1000);
        if (rankDraft.isPrivileged()) {
            rankDraft.awardDiamonds.set(this.src.optInt("award diamonds", 2));
            SpecialInt specialInt = rankDraft.xp;
            specialInt.set(this.src.optInt("xp", specialInt.get()));
        }
        rankDraft.achievementId = this.src.optString("achievement", null);
        Drafts.RANKS.add(rankDraft);
        return rankDraft;
    }
}
