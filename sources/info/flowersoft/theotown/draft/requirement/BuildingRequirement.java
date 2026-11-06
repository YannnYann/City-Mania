package info.flowersoft.theotown.draft.requirement;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Translator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingRequirement extends SingleRequirement {
    public final int count;
    public BuildingDraft draft;
    public final String draftId;
    public boolean hideIfFulfilled;
    public boolean hideIfNotFulfilled;

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean autoFulfilledInSandboxMode() {
        return false;
    }

    public BuildingRequirement(JSONObject jSONObject) throws JSONException {
        this.hideIfFulfilled = jSONObject.optBoolean("hide if fulfilled", this.hideIfFulfilled);
        this.hideIfNotFulfilled = jSONObject.optBoolean("hide if not fulfilled", this.hideIfNotFulfilled);
        this.draftId = jSONObject.getString(C3670j8.x);
        this.count = jSONObject.optInt("count", 1);
        resolveDraft();
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
        resolveDraft();
        if (this.draft == null) {
            return false;
        }
        Iterator it = new SafeListAccessor(city.getBuildings().getBuildingsOfDraft(this.draft)).iterator();
        int i = 0;
        while (it.hasNext()) {
            if (((Building) it.next()).isWorking()) {
                i++;
            }
        }
        return i >= this.count;
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public String localize(Translator translator, City city) {
        resolveDraft();
        if (this.draft == null) {
            return "" + this.draftId + " could not be found!";
        }
        return StringFormatter.format(translator.translate(76), resolveDraftTitle(this.draft, city));
    }

    public final void resolveDraft() {
        if (this.draft == null && Drafts.ALL.containsKey(this.draftId)) {
            this.draft = (BuildingDraft) Drafts.get(this.draftId, BuildingDraft.class);
        }
    }

    @Override // info.flowersoft.theotown.draft.requirement.SingleRequirement
    public boolean strongerOrEqualThan(SingleRequirement singleRequirement) {
        if (singleRequirement instanceof BuildingRequirement) {
            BuildingRequirement buildingRequirement = (BuildingRequirement) singleRequirement;
            if (buildingRequirement.draftId.equals(this.draftId) && this.count >= buildingRequirement.count) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj instanceof BuildingRequirement) {
            BuildingRequirement buildingRequirement = (BuildingRequirement) obj;
            if (buildingRequirement.draftId.equals(this.draftId) && this.count == buildingRequirement.count) {
                return true;
            }
        }
        return false;
    }
}
