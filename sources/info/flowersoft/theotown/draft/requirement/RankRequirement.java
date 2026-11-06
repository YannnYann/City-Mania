package info.flowersoft.theotown.draft.requirement;

import com.badlogic.gdx.Gdx;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public class RankRequirement extends SingleRequirement {
    public boolean hideIfFulfilled;
    public boolean hideIfNotFulfilled;
    public RankDraft rank;
    public String rankId;
    public int rankLvl;

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean autoFulfilledInSandboxMode() {
        return true;
    }

    public RankRequirement(JSONObject jSONObject, String str) throws JSONException {
        this.hideIfFulfilled = jSONObject.optBoolean("hide if fulfilled", this.hideIfFulfilled);
        this.hideIfNotFulfilled = jSONObject.optBoolean("hide if not fulfilled", this.hideIfNotFulfilled);
        if (jSONObject.has(C3670j8.x)) {
            String string = jSONObject.getString(C3670j8.x);
            this.rankId = string;
            RankDraft rankDraft = (RankDraft) Drafts.get(string, RankDraft.class);
            if (rankDraft != null) {
                int iIndexOf = Drafts.RANKS.indexOf(rankDraft);
                Gdx.app.debug("RankRequirement", "In " + str + ": Usage of id is deprecated! " + this.rankId + " matches \"lvl\": " + iIndexOf);
                return;
            }
            Gdx.app.debug("RankRequirement", "In " + str + ": Usage of id is deprecated!");
            return;
        }
        this.rankLvl = jSONObject.getInt("lvl");
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean hideIfFulfilled() {
        return this.hideIfFulfilled;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean hideIfNotFulfilled() {
        return this.hideIfNotFulfilled;
    }

    public RankDraft getRank() {
        resolveDraft();
        return this.rank;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean isFulfilled(City city) {
        if (Constants.NO_REQUIREMENTS) {
            return true;
        }
        resolveDraft();
        if (this.rank != null) {
            return city.getRank().ordinal >= this.rank.ordinal;
        }
        throw new IllegalStateException("Rank " + this.rankId + " could not be resolved");
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public String localize(Translator translator, City city) {
        resolveDraft();
        return StringFormatter.format(translator.translate(1756), new DraftLocalizer(city).getTitle(this.rank), Integer.valueOf(this.rank.ordinal));
    }

    private void resolveDraft() {
        if (this.rank == null) {
            String str = this.rankId;
            if (str != null) {
                this.rank = (RankDraft) Drafts.get(str, RankDraft.class);
            }
            if (this.rank == null) {
                this.rank = Drafts.RANKS.get(Math.min(Math.max(this.rankLvl, 0), Drafts.RANKS.size() - 1));
            }
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof RankRequirement) && getRank() == ((RankRequirement) obj).getRank();
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean strongerOrEqualThan(SingleRequirement singleRequirement) {
        if (!(singleRequirement instanceof RankRequirement)) {
            return false;
        }
        RankDraft rank = getRank();
        RankDraft rank2 = ((RankRequirement) singleRequirement).getRank();
        if (rank != rank2) {
            return (rank == null || rank2 == null || rank.ordinal < rank2.ordinal) ? false : true;
        }
        return true;
    }
}
