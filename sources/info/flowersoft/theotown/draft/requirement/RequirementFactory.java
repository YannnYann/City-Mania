package info.flowersoft.theotown.draft.requirement;

import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public enum RequirementFactory {
    HABITANT_COUNT { // from class: info.flowersoft.theotown.draft.requirement.RequirementFactory.1
        @Override // info.flowersoft.theotown.draft.requirement.RequirementFactory
        public SingleRequirement getRequirement(JSONObject jSONObject, String str, boolean z) throws JSONException {
            return new HabitantCountSingleRequirement(jSONObject);
        }
    },
    BUILDING { // from class: info.flowersoft.theotown.draft.requirement.RequirementFactory.2
        @Override // info.flowersoft.theotown.draft.requirement.RequirementFactory
        public SingleRequirement getRequirement(JSONObject jSONObject, String str, boolean z) throws JSONException {
            return new BuildingRequirement(jSONObject);
        }
    },
    RANK { // from class: info.flowersoft.theotown.draft.requirement.RequirementFactory.3
        @Override // info.flowersoft.theotown.draft.requirement.RequirementFactory
        public SingleRequirement getRequirement(JSONObject jSONObject, String str, boolean z) throws JSONException {
            return new RankRequirement(jSONObject, str);
        }
    },
    FEATURE { // from class: info.flowersoft.theotown.draft.requirement.RequirementFactory.4
        @Override // info.flowersoft.theotown.draft.requirement.RequirementFactory
        public SingleRequirement getRequirement(JSONObject jSONObject, String str, boolean z) throws JSONException {
            return new FeatureRequirement(jSONObject);
        }
    },
    CONDITION { // from class: info.flowersoft.theotown.draft.requirement.RequirementFactory.5
        @Override // info.flowersoft.theotown.draft.requirement.RequirementFactory
        public SingleRequirement getRequirement(JSONObject jSONObject, String str, boolean z) throws JSONException {
            return new ConditionRequirement(jSONObject, z);
        }
    },
    UPGRADE { // from class: info.flowersoft.theotown.draft.requirement.RequirementFactory.6
        @Override // info.flowersoft.theotown.draft.requirement.RequirementFactory
        public SingleRequirement getRequirement(JSONObject jSONObject, String str, boolean z) throws JSONException {
            return new UpgradeRequirement(jSONObject);
        }
    };

    public abstract SingleRequirement getRequirement(JSONObject jSONObject, String str, boolean z) throws JSONException;
}
