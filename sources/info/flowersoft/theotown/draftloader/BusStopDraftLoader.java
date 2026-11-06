package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Getter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BusStopDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"bus stop"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        BusStopDraftLoader busStopDraftLoader;
        BusStopDraft busStopDraft = (BusStopDraft) getDraft(this.src, BusStopDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.BusStopDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new BusStopDraft();
            }
        });
        loadDefaults(busStopDraft);
        int[] iArrLoadFrames = loadFrames("frames", "frame", busStopDraft, busStopDraft.frames);
        busStopDraft.frames = iArrLoadFrames;
        if (iArrLoadFrames == null) {
            throw new PluginLoadingException(busStopDraft.id, "BusStop has no frames provided");
        }
        if (iArrLoadFrames.length == 0 || iArrLoadFrames.length % 4 != 0) {
            throw new PluginLoadingException(busStopDraft.id, "BusStop needs multiple of 4 frames and at least 4 but got " + busStopDraft.frames.length);
        }
        if (this.src.has("animation")) {
            List<AnimationSpot> listLoadAnimations = loadAnimations(busStopDraft.hashCode(), "animation");
            busStopDraft.animationSpots = listLoadAnimations;
            BusStopDraftLoader busStopDraftLoader2 = this;
            busStopDraft.animationSpotIndices = busStopDraftLoader2.loadFrameAnimationIndices(busStopDraft.id, "frame animation indices", 16, listLoadAnimations.size(), this.src);
            busStopDraftLoader = busStopDraftLoader2;
        } else {
            busStopDraftLoader = this;
        }
        if (busStopDraftLoader.src.has("animation fg")) {
            List<AnimationSpot> listLoadAnimations2 = loadAnimations(busStopDraft.hashCode(), "animation fg");
            busStopDraft.animationFGSpots = listLoadAnimations2;
            busStopDraft.animationFGSpotIndices = busStopDraftLoader.loadFrameAnimationIndices(busStopDraft.id, "frame animation fg indices", 16, listLoadAnimations2.size(), busStopDraftLoader.src);
        }
        busStopDraft.width = busStopDraftLoader.src.optInt("width", 1);
        busStopDraft.height = busStopDraftLoader.src.optInt("height", 1);
        busStopDraft.price = positivePrice(busStopDraftLoader.src.optInt("price", 0));
        busStopDraft.monthlyPrice = positivePrice(busStopDraftLoader.src.optInt("monthly price", 0));
        busStopDraft.capacity = busStopDraftLoader.src.getInt("capacity");
        busStopDraft.influenceInduceVector = loadInfluences();
        busStopDraft.addPriceDrafts = loadDraftList(busStopDraftLoader.src, "add price", busStopDraft.id, busStopDraft.addPriceDrafts);
        busStopDraft.speed = (float) busStopDraftLoader.src.optDouble("speed", busStopDraft.speed);
        busStopDraft.enterSpeed = (float) busStopDraftLoader.src.optDouble("enter speed", busStopDraft.enterSpeed);
        busStopDraft.exitSpeed = (float) busStopDraftLoader.src.optDouble("exit speed", busStopDraft.exitSpeed);
        JSONArray jSONArrayOptJSONArray = busStopDraftLoader.src.optJSONArray("parcel speeds");
        if (jSONArrayOptJSONArray != null) {
            busStopDraft.parcelSpeeds = new float[jSONArrayOptJSONArray.length()];
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                busStopDraft.parcelSpeeds[i] = (float) jSONArrayOptJSONArray.optDouble(i);
            }
            if (busStopDraft.parcelSpeeds.length == 0) {
                throw new IllegalArgumentException("parcel speeds array may not be empty");
            }
        }
        if (busStopDraft.meta == null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("default_busstop", "");
            JSONObject jSONObject2 = new JSONObject();
            busStopDraft.meta = jSONObject2;
            jSONObject2.put("tags", jSONObject);
        }
        busStopDraft.flags = busStopDraftLoader.roadFlags.load(busStopDraftLoader.src, "flag", 0L);
        if (busStopDraftLoader.src.has("x flags")) {
            busStopDraft.xFlags = busStopDraftLoader.roadFlags.load(busStopDraftLoader.src.getJSONObject("x flags"), "flag", 0L);
        } else {
            busStopDraft.xFlags = busStopDraft.flags;
        }
        busStopDraft.requiredFlags = busStopDraftLoader.roadFlags.load(busStopDraftLoader.src, "required flag", 25166070L);
        busStopDraft.minDirs = busStopDraftLoader.src.optInt("min dirs", busStopDraft.minDirs);
        busStopDraft.maxDirs = busStopDraftLoader.src.optInt("max dirs", busStopDraft.maxDirs);
        busStopDraft.symmetricDirs = busStopDraftLoader.src.optBoolean("symmetric dirs", busStopDraft.symmetricDirs);
        busStopDraft.minLevel = busStopDraftLoader.src.optInt("min level", busStopDraft.minLevel);
        busStopDraft.maxLevel = busStopDraftLoader.src.optInt("max level", busStopDraft.maxLevel);
        if (busStopDraft.category == null) {
            busStopDraft.category = (CategoryDraft) Drafts.ALL.get("$cat_bus00");
        }
        BusStopDraft busStopDraft2 = (BusStopDraft) Drafts.get(busStopDraft.id, BusStopDraft.class);
        if (busStopDraft2 != null) {
            Drafts.BUSSTOPS.remove(busStopDraft2);
        }
        Drafts.BUSSTOPS.add(busStopDraft);
        return busStopDraft;
    }
}
