package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Getter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RoadDecorationDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"road decoration"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        DraftLoader draftLoader;
        RoadDecorationDraft roadDecorationDraft = (RoadDecorationDraft) getDraft(this.src, RoadDecorationDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.RoadDecorationDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new RoadDecorationDraft();
            }
        });
        loadDefaults(roadDecorationDraft);
        roadDecorationDraft.price = positivePrice(this.src.optInt("price", 0));
        if (this.src.has("animation")) {
            List<AnimationSpot> listLoadAnimations = loadAnimations(roadDecorationDraft.hashCode(), "animation");
            roadDecorationDraft.animationSpots = listLoadAnimations;
            DraftLoader draftLoader2 = this;
            roadDecorationDraft.animationSpotIndices = draftLoader2.loadFrameAnimationIndices(roadDecorationDraft.id, "frame animation indices", 16, listLoadAnimations.size(), this.src);
            draftLoader = draftLoader2;
        } else {
            draftLoader = this;
        }
        if (draftLoader.src.has("animation fg")) {
            List<AnimationSpot> listLoadAnimations2 = loadAnimations(roadDecorationDraft.hashCode(), "animation fg");
            roadDecorationDraft.animationFGSpots = listLoadAnimations2;
            roadDecorationDraft.animationFGSpotIndices = draftLoader.loadFrameAnimationIndices(roadDecorationDraft.id, "frame animation fg indices", 16, listLoadAnimations2.size(), draftLoader.src);
        }
        if (roadDecorationDraft.category == null) {
            roadDecorationDraft.category = (CategoryDraft) Drafts.ALL.get("$cat_roaddeco00");
        }
        loadFun(roadDecorationDraft);
        roadDecorationDraft.speed = (float) draftLoader.src.optDouble("speed", roadDecorationDraft.speed);
        roadDecorationDraft.enterSpeed = (float) draftLoader.src.optDouble("enter speed", roadDecorationDraft.enterSpeed);
        roadDecorationDraft.exitSpeed = (float) draftLoader.src.optDouble("exit speed", roadDecorationDraft.exitSpeed);
        JSONArray jSONArrayOptJSONArray = draftLoader.src.optJSONArray("parcel speeds");
        if (jSONArrayOptJSONArray != null) {
            roadDecorationDraft.parcelSpeeds = new float[jSONArrayOptJSONArray.length()];
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                roadDecorationDraft.parcelSpeeds[i] = (float) jSONArrayOptJSONArray.optDouble(i);
            }
            if (roadDecorationDraft.parcelSpeeds.length == 0) {
                throw new IllegalArgumentException("parcel speeds array may not be empty");
            }
        }
        roadDecorationDraft.flags = draftLoader.roadFlags.load(draftLoader.src, "flag", 0L);
        if (draftLoader.src.has("x flags")) {
            roadDecorationDraft.xFlags = draftLoader.roadFlags.load(draftLoader.src.getJSONObject("x flags"), "flag", 0L);
        } else {
            roadDecorationDraft.xFlags = roadDecorationDraft.flags;
        }
        roadDecorationDraft.removeFlags = draftLoader.roadFlags.load(draftLoader.src, "remove flag", 0L);
        if (draftLoader.src.has("remove x flags")) {
            roadDecorationDraft.removeXFlags = draftLoader.roadFlags.load(draftLoader.src.getJSONObject("remove x flags"), "flag", 0L);
        } else {
            roadDecorationDraft.removeXFlags = roadDecorationDraft.removeFlags;
        }
        roadDecorationDraft.requiredFlags = draftLoader.roadFlags.load(draftLoader.src, "required flag", 25166070L);
        roadDecorationDraft.minDirs = draftLoader.src.optInt("min dirs", roadDecorationDraft.minDirs);
        roadDecorationDraft.maxDirs = draftLoader.src.optInt("max dirs", roadDecorationDraft.maxDirs);
        roadDecorationDraft.symmetricDirs = draftLoader.src.optBoolean("symmetric dirs", roadDecorationDraft.symmetricDirs);
        roadDecorationDraft.minLevel = draftLoader.src.optInt("min level", roadDecorationDraft.minLevel);
        roadDecorationDraft.maxLevel = draftLoader.src.optInt("max level", roadDecorationDraft.maxLevel);
        if (draftLoader.src.has("preview road")) {
            roadDecorationDraft.previewRoad = (RoadDraft) Drafts.get(draftLoader.src.optString("preview road"), RoadDraft.class);
        }
        roadDecorationDraft.lineTool = draftLoader.src.optBoolean("line tool", roadDecorationDraft.lineTool);
        roadDecorationDraft.lineStepping = Math.max(draftLoader.src.optInt("line stepping", 1), 1);
        if (roadDecorationDraft.maxLevel < roadDecorationDraft.minLevel) {
            throw new IllegalArgumentException("Max level may not be smaller than min level");
        }
        JSONObject jSONObject = draftLoader.src;
        String str = roadDecorationDraft.occupationGroup;
        if (str == null) {
            str = roadDecorationDraft.id;
        }
        roadDecorationDraft.occupationGroup = jSONObject.optString("occupation group", str);
        roadDecorationDraft.exclusive = draftLoader.src.optBoolean("exclusive", roadDecorationDraft.exclusive);
        roadDecorationDraft.allowRoadCrossing = draftLoader.src.optBoolean("allow road crossing", roadDecorationDraft.allowRoadCrossing);
        roadDecorationDraft.sidewalkOffset = (float) draftLoader.src.optDouble("sidewalk offset", roadDecorationDraft.sidewalkOffset);
        roadDecorationDraft.sidewalkSize = (float) draftLoader.src.optDouble("sidewalk size", roadDecorationDraft.sidewalkSize);
        JSONArray jSONArrayOptJSONArray2 = draftLoader.src.optJSONArray("dirs");
        if (jSONArrayOptJSONArray2 != null) {
            roadDecorationDraft.dirs = loadRoadDirs(jSONArrayOptJSONArray2, jSONArrayOptJSONArray2.length() == 64);
        }
        RoadDecorationDraft roadDecorationDraft2 = (RoadDecorationDraft) Drafts.ALL.get(roadDecorationDraft.id);
        if (roadDecorationDraft2 != null) {
            Drafts.ROAD_DECORATIONS.remove(roadDecorationDraft2);
        }
        Drafts.ROAD_DECORATIONS.add(roadDecorationDraft);
        return roadDecorationDraft;
    }

    public final void loadFun(RoadDecorationDraft roadDecorationDraft) throws JSONException {
        roadDecorationDraft.transitions = loadTransitions(this.src, "fun", roadDecorationDraft.transitions);
        roadDecorationDraft.onClickTransitions = loadTransitions(this.src, "on click fun", roadDecorationDraft.onClickTransitions);
        roadDecorationDraft.randomTransitions = loadTransitions(this.src, "random fun", roadDecorationDraft.randomTransitions);
        roadDecorationDraft.onEventTransitions = loadTransitions(this.src, "on event fun", roadDecorationDraft.onEventTransitions);
        roadDecorationDraft.onBuiltTransitions = loadTransitions(this.src, "on built fun", roadDecorationDraft.onBuiltTransitions);
    }
}
