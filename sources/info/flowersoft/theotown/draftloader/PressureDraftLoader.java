package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.PressureDraft;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class PressureDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"pressure"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        PressureDraft pressureDraft = new PressureDraft();
        loadDefaults(pressureDraft);
        try {
            pressureDraft.weights = loadPressureArray("weights");
            pressureDraft.tolerances = loadPressureArray("tolerances");
            pressureDraft.neutrals = loadPressureArray("neutrals");
            return pressureDraft;
        } catch (JSONException e) {
            throw new JSONException("In PressureDraft " + pressureDraft.id + ": " + e.toString());
        }
    }

    public final float[] loadPressureArray(String str) throws JSONException {
        JSONArray jSONArray = this.src.getJSONArray(str);
        float[] fArr = new float[18];
        if (18 != jSONArray.length()) {
            throw new JSONException("Wrong vector size in draft");
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            fArr[i] = (float) jSONArray.getDouble(i);
        }
        return fArr;
    }
}
