package info.flowersoft.theotown.util;

import com.badlogic.gdx.utils.ObjectLongMap;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.ProbabilitySelector;

/* JADX INFO: compiled from: SpecialOfferManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class SpecialOfferManager {
    public static final SpecialOfferManager INSTANCE = new SpecialOfferManager();
    public static final ObjectLongMap<String> specialOfferHistory = new ObjectLongMap<>();

    public final JSONObject getConfig() {
        return Resources.CONFIG.optJSONObject("special offer");
    }

    public final int getSpecialOfferDurationMinutes() {
        JSONObject config = getConfig();
        if (config != null) {
            return config.optInt("offer duration minutes", 5);
        }
        return 5;
    }

    public final long getTime() {
        return TimeUtils.millis();
    }

    public final boolean canBeOffered(FeatureDraft featureDraft) {
        return (featureDraft == null || featureDraft.isUnlocked() || !featureDraft.availableForPurchase()) ? false : true;
    }

    public final FeatureDraft selectFromAutoList(JSONArray jSONArray) {
        String strOptString;
        FeatureDraft featureDraft;
        if (jSONArray == null) {
            return null;
        }
        ProbabilitySelector probabilitySelector = new ProbabilitySelector();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null && (strOptString = jSONObjectOptJSONObject.optString(C3670j8.x)) != null && (featureDraft = (FeatureDraft) Drafts.get(strOptString, FeatureDraft.class)) != null && canBeOffered(featureDraft)) {
                float fOptDouble = (float) jSONObjectOptJSONObject.optDouble("prob", 1.0d);
                if (DateUtil.INSTANCE.checkDate(jSONObjectOptJSONObject.optInt("start day", -1), jSONObjectOptJSONObject.optInt("start month", -1), jSONObjectOptJSONObject.optInt("day length", -1))) {
                    if (specialOfferHistory.get(strOptString, 0L) > 0) {
                        fOptDouble *= 1.0f - (1.0f / (1 + ((Math.max(getTime() - r4, 0L) / 1000.0f) / 600)));
                    }
                    probabilitySelector.insert(featureDraft, fOptDouble);
                }
            }
        }
        if (!probabilitySelector.hasResult()) {
            return null;
        }
        specialOfferHistory.put(((FeatureDraft) probabilitySelector.getResult()).id, getTime());
        return (FeatureDraft) probabilitySelector.getResult();
    }

    public final FeatureDraft getCurrentSpecialOffer() {
        FeatureDraft featureDraft;
        FeatureDraft featureDraftSelectFromAutoList;
        JSONObject config = getConfig();
        if (config == null) {
            return null;
        }
        JSONArray jSONArrayOptJSONArray = config.optJSONArray("auto offers");
        if (jSONArrayOptJSONArray != null && (featureDraftSelectFromAutoList = INSTANCE.selectFromAutoList(jSONArrayOptJSONArray)) != null) {
            return featureDraftSelectFromAutoList;
        }
        JSONArray jSONArrayOptJSONArray2 = config.optJSONArray("offers");
        if (jSONArrayOptJSONArray2 != null) {
            int length = jSONArrayOptJSONArray2.length();
            for (int i = 0; i < length; i++) {
                String strOptString = jSONArrayOptJSONArray2.optString(i);
                if (strOptString != null && (featureDraft = (FeatureDraft) Drafts.get(strOptString, FeatureDraft.class)) != null && canBeOffered(featureDraft)) {
                    return featureDraft;
                }
            }
        }
        return null;
    }

    public final FeatureDraft getStarterPack() {
        FeatureDraft featureDraft;
        FeatureDraft featureDraftSelectFromAutoList;
        JSONObject config = getConfig();
        if (config == null) {
            return null;
        }
        JSONArray jSONArrayOptJSONArray = config.optJSONArray("auto starter packs");
        if (jSONArrayOptJSONArray != null && (featureDraftSelectFromAutoList = INSTANCE.selectFromAutoList(jSONArrayOptJSONArray)) != null) {
            return featureDraftSelectFromAutoList;
        }
        JSONArray jSONArrayOptJSONArray2 = config.optJSONArray("starter packs");
        if (jSONArrayOptJSONArray2 == null) {
            return null;
        }
        int length = jSONArrayOptJSONArray2.length();
        for (int i = 0; i < length; i++) {
            String strOptString = jSONArrayOptJSONArray2.optString(i);
            if (strOptString != null && (featureDraft = (FeatureDraft) Drafts.get(strOptString, FeatureDraft.class)) != null && canBeOffered(featureDraft)) {
                return featureDraft;
            }
        }
        return null;
    }
}
