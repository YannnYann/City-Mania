package info.flowersoft.theotown.draft.requirement;

import com.ironsource.C3670j8;
import com.ironsource.InterfaceC3681k1;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public class UpgradeRequirement extends SingleRequirement {
    public UpgradeDraft draft;
    public final String draftId;
    public boolean hideIfFulfilled;
    public boolean hideIfNotFulfilled;
    public final boolean invert;

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean autoFulfilledInSandboxMode() {
        return false;
    }

    public UpgradeRequirement(JSONObject jSONObject) throws JSONException {
        this.hideIfFulfilled = jSONObject.optBoolean("hide if fulfilled", this.hideIfFulfilled);
        this.hideIfNotFulfilled = jSONObject.optBoolean("hide if not fulfilled", this.hideIfNotFulfilled);
        this.draftId = jSONObject.getString(C3670j8.x);
        this.invert = jSONObject.optBoolean("invert", false);
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean hideIfFulfilled() {
        return this.hideIfFulfilled;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean hideIfNotFulfilled() {
        return this.hideIfNotFulfilled;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean isFulfilled(City city) {
        if (Constants.NO_REQUIREMENTS) {
            return true;
        }
        Object obj = this.context;
        if (obj instanceof Building) {
            Building building = (Building) obj;
            for (int i = 0; i < building.getUpgrades().size(); i++) {
                if (building.getUpgrades().get(i).id.equals(this.draftId)) {
                    return !this.invert;
                }
            }
        }
        return false;
    }

    private void resolveDraft() {
        if (this.draft == null && Drafts.ALL.containsKey(this.draftId)) {
            this.draft = (UpgradeDraft) Drafts.get(this.draftId, UpgradeDraft.class);
        }
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public String localize(Translator translator, City city) {
        resolveDraft();
        UpgradeDraft upgradeDraft = this.draft;
        if (upgradeDraft == null) {
            return "" + this.draftId + " could not be found!";
        }
        String strResolveDraftTitle = resolveDraftTitle(upgradeDraft, city);
        if (this.invert) {
            return StringFormatter.format(translator.translate(Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE), strResolveDraftTitle);
        }
        return StringFormatter.format(translator.translate(InterfaceC3681k1.a.b.f), strResolveDraftTitle);
    }

    public boolean equals(Object obj) {
        if (obj instanceof UpgradeRequirement) {
            UpgradeRequirement upgradeRequirement = (UpgradeRequirement) obj;
            if (this.draftId.equals(upgradeRequirement.draftId) && this.invert == upgradeRequirement.invert) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean strongerOrEqualThan(SingleRequirement singleRequirement) {
        return equals(singleRequirement);
    }
}
