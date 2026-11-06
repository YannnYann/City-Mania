package info.flowersoft.theotown.draft.requirement;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Translator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class FeatureRequirement extends SingleRequirement {
    public FeatureDraft feature;
    public final String featureId;
    public boolean hideIfFulfilled;
    public boolean hideIfNotFulfilled;

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean autoFulfilledInSandboxMode() {
        return false;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean isImportant() {
        return true;
    }

    public FeatureRequirement(JSONObject jSONObject) throws JSONException {
        this.hideIfFulfilled = jSONObject.optBoolean("hide if fulfilled", this.hideIfFulfilled);
        this.hideIfNotFulfilled = jSONObject.optBoolean("hide if not fulfilled", this.hideIfNotFulfilled);
        this.featureId = jSONObject.getString(C3670j8.x);
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean hideIfFulfilled() {
        return this.hideIfFulfilled;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean hideIfNotFulfilled() {
        return this.hideIfNotFulfilled;
    }

    public FeatureDraft getFeature() {
        if (this.feature == null) {
            this.feature = (FeatureDraft) Drafts.ALL.get(this.featureId);
        }
        return this.feature;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean isFulfilled(City city) {
        if (Constants.NO_REQUIREMENTS) {
            return true;
        }
        if (this.feature == null) {
            this.feature = (FeatureDraft) Drafts.ALL.get(this.featureId);
        }
        FeatureDraft featureDraft = this.feature;
        return featureDraft != null && featureDraft.isUnlocked();
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public String localize(Translator translator, City city) {
        if (this.feature == null) {
            this.feature = (FeatureDraft) Drafts.ALL.get(this.featureId);
        }
        return StringFormatter.format(translator.translate(2644), new DraftLocalizer(city).getTitle(this.feature));
    }

    public boolean equals(Object obj) {
        if (obj instanceof FeatureRequirement) {
            return Objects.equals(this.featureId, ((FeatureRequirement) obj).featureId);
        }
        return false;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean strongerOrEqualThan(SingleRequirement singleRequirement) {
        return equals(singleRequirement);
    }
}
