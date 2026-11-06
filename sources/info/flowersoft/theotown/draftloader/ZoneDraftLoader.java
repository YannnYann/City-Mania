package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class ZoneDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"zone"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public ZoneDraft load() throws JSONException {
        ZoneDraft zoneDraft = (ZoneDraft) getDraft(this.src, ZoneDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.ZoneDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new ZoneDraft();
            }
        });
        loadDefaults(zoneDraft);
        zoneDraft.frames = loadFrames("frames", "frame", zoneDraft, zoneDraft.frames);
        zoneDraft.previewFrames = loadFrames("preview frames", "preview frame", zoneDraft, zoneDraft.previewFrames);
        zoneDraft.borderFrames = loadFrames("border frames", "border frame", zoneDraft, zoneDraft.borderFrames);
        zoneDraft.roadBorderFrames = loadFrames("road border frames", "road border frame", zoneDraft, zoneDraft.roadBorderFrames);
        zoneDraft.persistent = this.src.optBoolean("persistent", false);
        String strOptString = this.src.optString("base", null);
        if (strOptString != null) {
            zoneDraft.base = (ZoneDraft) Drafts.get(strOptString, ZoneDraft.class);
        } else {
            zoneDraft.base = zoneDraft;
        }
        zoneDraft.superiorToBase = this.src.optBoolean("superior to base", false);
        zoneDraft.superiorToAll = this.src.optBoolean("superior to all", false);
        zoneDraft.rci = this.src.optBoolean("rci", false);
        zoneDraft.oldId = this.src.optInt("old id", -1);
        zoneDraft.price = positivePrice(this.src.optInt("price", 0));
        zoneDraft.placeable = this.src.optBoolean("placeable", false);
        zoneDraft.radius = this.src.optInt("radius", 0);
        zoneDraft.priceFactor = (float) this.src.optDouble("price factor", -1.0d);
        zoneDraft.mapColor = loadColor("map color");
        zoneDraft.rebuild = this.src.optBoolean("rebuild", true);
        zoneDraft.needsRoad = this.src.optBoolean("needs road", zoneDraft.needsRoad);
        zoneDraft.autoRoad = this.src.optBoolean("auto road", zoneDraft.autoRoad);
        zoneDraft.addPriceDrafts = loadDraftList(this.src, "add price", zoneDraft.id, zoneDraft.addPriceDrafts);
        ZoneDraft zoneDraft2 = (ZoneDraft) Drafts.get(zoneDraft.id, ZoneDraft.class);
        if (zoneDraft2 != null) {
            Drafts.ZONES.remove(zoneDraft2);
        }
        if (zoneDraft.category == null) {
            zoneDraft.category = (CategoryDraft) Drafts.ALL.get("$cat_zone00");
        }
        zoneDraft.tempId = Drafts.ZONES.size();
        Drafts.ZONES.add(zoneDraft);
        Zones.getInstance().register(zoneDraft);
        return zoneDraft;
    }
}
