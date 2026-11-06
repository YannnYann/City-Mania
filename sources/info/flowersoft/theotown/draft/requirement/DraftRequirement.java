package info.flowersoft.theotown.draft.requirement;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DraftRequirement {
    public final List<SingleRequirement> singleRequirements = new ArrayList();

    public DraftRequirement(JSONObject jSONObject, String str, boolean z) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("requirements");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            this.singleRequirements.add(RequirementFactory.valueOf(jSONObject2.getString("type")).getRequirement(jSONObject2.getJSONObject("data"), str, z));
        }
    }

    public DraftRequirement(JSONArray jSONArray, String str, boolean z) throws JSONException {
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            RequirementFactory requirementFactoryValueOf = RequirementFactory.valueOf(jSONObject.getString("type"));
            if (jSONObject.has("data")) {
                this.singleRequirements.add(requirementFactoryValueOf.getRequirement(jSONObject.getJSONObject("data"), str, z));
            } else {
                this.singleRequirements.add(requirementFactoryValueOf.getRequirement(jSONObject, str, z));
            }
        }
    }

    public boolean isFulfilled(City city, Object obj) {
        if (Constants.NO_REQUIREMENTS) {
            return true;
        }
        for (SingleRequirement singleRequirement : this.singleRequirements) {
            singleRequirement.setContext(obj);
            if (!singleRequirement.isFulfilled(city) && (city.getGameMode().hasRequirements() || !singleRequirement.autoFulfilledInSandboxMode())) {
                return false;
            }
        }
        return true;
    }

    public boolean isFulfilledBecauseOfSandMode(City city) {
        Iterator<SingleRequirement> it = this.singleRequirements.iterator();
        while (it.hasNext()) {
            if (!it.next().isFulfilled(city)) {
                return true;
            }
        }
        return false;
    }

    public List<SingleRequirement> getSingleRequirements() {
        return this.singleRequirements;
    }

    public void mergeFrom(DraftRequirement draftRequirement) {
        setStrongest(draftRequirement);
        removeDuplicates();
    }

    public final void setStrongest(DraftRequirement draftRequirement) {
        for (int i = 0; i < this.singleRequirements.size(); i++) {
            SingleRequirement singleRequirement = this.singleRequirements.get(i);
            for (int i2 = 0; i2 < draftRequirement.singleRequirements.size(); i2++) {
                SingleRequirement singleRequirement2 = draftRequirement.singleRequirements.get(i2);
                if (singleRequirement2.strongerOrEqualThan(singleRequirement) && !singleRequirement.strongerOrEqualThan(singleRequirement2)) {
                    singleRequirement = singleRequirement2;
                }
            }
            this.singleRequirements.set(i, singleRequirement);
        }
        for (int i3 = 0; i3 < draftRequirement.singleRequirements.size(); i3++) {
            SingleRequirement singleRequirement3 = draftRequirement.singleRequirements.get(i3);
            int i4 = 0;
            while (true) {
                if (i4 < this.singleRequirements.size()) {
                    SingleRequirement singleRequirement4 = this.singleRequirements.get(i3);
                    if (singleRequirement3.strongerOrEqualThan(singleRequirement4) || singleRequirement4.strongerOrEqualThan(singleRequirement3)) {
                        break;
                    } else {
                        i4++;
                    }
                } else {
                    this.singleRequirements.add(singleRequirement3);
                    break;
                }
            }
        }
    }

    public final void removeDuplicates() {
        int i = 0;
        while (i < this.singleRequirements.size()) {
            SingleRequirement singleRequirement = this.singleRequirements.get(i);
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                }
                if (singleRequirement.equals(this.singleRequirements.get(i2))) {
                    this.singleRequirements.remove(i);
                    i--;
                    break;
                }
                i2++;
            }
            i++;
        }
    }
}
