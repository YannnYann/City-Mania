package info.flowersoft.theotown.draftloader;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.CarAnimationSpot;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.TrainDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class TrainDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"train"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        int[] iArr;
        TrainDraft trainDraft = new TrainDraft();
        loadDefaults(trainDraft);
        int[] iArrLoadFrames = loadFrames("frames", "frame", trainDraft, trainDraft.frames);
        trainDraft.frames = iArrLoadFrames;
        if (iArrLoadFrames == null || iArrLoadFrames.length < 8) {
            throw new IllegalArgumentException("Train may not have no or less than 8 frames");
        }
        trainDraft.capacity = this.src.getInt("capacity");
        if (this.src.has("animation")) {
            trainDraft.animationSpots = new ArrayList();
            JSONArray jSONArray = this.src.getJSONArray("animation");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(C3670j8.x);
                AnimationDraft animationDraft = (AnimationDraft) Drafts.ALL.get(string);
                if (animationDraft == null) {
                    throw new IllegalStateException("No animation " + string + " has been found (for use in car " + trainDraft.id + ")");
                }
                boolean zOptBoolean = jSONObject.optBoolean("important", false);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("frames");
                if (jSONArrayOptJSONArray == null && (jSONObject.has("frames") || jSONObject.has("frame"))) {
                    jSONArrayOptJSONArray = new JSONArray();
                    if (jSONObject.has("frames")) {
                        jSONArrayOptJSONArray.put(jSONObject.getInt("frames"));
                    } else {
                        jSONArrayOptJSONArray.put(jSONObject.getInt("frame"));
                    }
                }
                if (jSONArrayOptJSONArray != null) {
                    iArr = new int[jSONArrayOptJSONArray.length()];
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        iArr[i2] = jSONArrayOptJSONArray.getInt(i2);
                    }
                } else {
                    iArr = null;
                }
                trainDraft.animationSpots.add(new CarAnimationSpot(animationDraft, null, zOptBoolean, iArr, null));
            }
        }
        Drafts.TRAINS.add(trainDraft);
        return trainDraft;
    }
}
