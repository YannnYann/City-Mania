package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class FeatureDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"feature"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        FeatureDraft featureDraft = (FeatureDraft) getDraft(this.src, FeatureDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.FeatureDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new FeatureDraft();
            }
        });
        featureDraft.setFinal();
        loadDefaults(featureDraft);
        String strOptString = this.src.optString("sku", null);
        featureDraft.sku = strOptString;
        if (strOptString != null && !strOptString.isEmpty() && !"playstore".equals(TheoTown.STORE_NAME)) {
            if (this.src.has("sku " + TheoTown.STORE_NAME)) {
                featureDraft.sku = this.src.optString("sku " + TheoTown.STORE_NAME, featureDraft.sku);
            }
        }
        featureDraft.event = this.src.optString("event", null);
        featureDraft.buyable = this.src.optBoolean("buyable", false);
        featureDraft.cityBound = this.src.optBoolean("city bound", false);
        featureDraft.consumable = this.src.optBoolean("consumable", false);
        if (this.src.has("unlocks")) {
            JSONArray jSONArray = this.src.getJSONArray("unlocks");
            featureDraft.unlocksIds = new String[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                featureDraft.unlocksIds[i] = jSONArray.getString(i);
            }
        }
        featureDraft.ingameMoney = this.src.optInt("money");
        featureDraft.diamonds.set(this.src.optInt("diamonds", 0));
        if (featureDraft.diamonds.get() < 0) {
            throw new IllegalArgumentException();
        }
        featureDraft.diamondPrice.set(this.src.optInt("price diamonds", 0));
        if (featureDraft.diamondPrice.get() < 0) {
            throw new IllegalArgumentException();
        }
        featureDraft.frames = loadFrames("frames", "frame", featureDraft, featureDraft.frames);
        featureDraft.time = this.src.optInt("time", 0);
        featureDraft.shortBuildTimeMin = this.src.optInt("short build time", 0);
        featureDraft.doubledIncomeTimeMin = this.src.optInt("doubled income time", 0);
        featureDraft.minUnixTime = this.src.optLong("min unix time", 0L);
        featureDraft.maxUnixTime = this.src.optLong("max unix time", 0L);
        featureDraft.lockDelayMinutes = this.src.optLong("lock delay minutes", 0L);
        featureDraft.freeTunnels = this.src.optInt("free tunnels", 0);
        featureDraft.index = false;
        Drafts.FEATURES.add(featureDraft);
        if (!featureDraft.hidden) {
            Drafts.SKU_TO_FEATURE.put(featureDraft.sku, featureDraft);
        }
        return featureDraft;
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public void afterLoading() {
        super.afterLoading();
        for (FeatureDraft featureDraft : Drafts.FEATURES) {
            if (featureDraft.unlocksIds != null) {
                ArrayList arrayList = new ArrayList(featureDraft.unlocksIds.length);
                for (String str : featureDraft.unlocksIds) {
                    FeatureDraft featureDraft2 = (FeatureDraft) Drafts.ALL.get(str);
                    if (featureDraft2 != null) {
                        arrayList.add(featureDraft2);
                    }
                }
                if (!arrayList.isEmpty()) {
                    featureDraft.unlocks = (FeatureDraft[]) arrayList.toArray(new FeatureDraft[0]);
                }
            }
        }
        for (FeatureDraft featureDraft3 : Drafts.FEATURES) {
            ArrayList arrayList2 = new ArrayList();
            for (FeatureDraft featureDraft4 : Drafts.FEATURES) {
                if (!featureDraft3.equals(featureDraft4) && featureDraft4.unlocks != null) {
                    int i = 0;
                    while (true) {
                        FeatureDraft[] featureDraftArr = featureDraft4.unlocks;
                        if (i >= featureDraftArr.length) {
                            break;
                        }
                        if (featureDraftArr[i].equals(featureDraft3)) {
                            arrayList2.add(featureDraft4);
                            break;
                        }
                        i++;
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                featureDraft3.unlockedBy = (FeatureDraft[]) arrayList2.toArray(new FeatureDraft[0]);
            }
        }
    }
}
