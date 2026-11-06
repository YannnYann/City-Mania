package info.flowersoft.theotown.draftloader;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.HeightMapDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: compiled from: HeightMapDraftLoader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class HeightMapDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"heightmap"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        HeightMapDraft heightMapDraft = new HeightMapDraft();
        loadDefaults(heightMapDraft);
        heightMapDraft.setFile(PluginHelper.resolveFile(this.src.getString(C3522b4.i.b)));
        if (heightMapDraft.getFile() == null) {
            throw new IllegalStateException(this.src.getString(C3522b4.i.b) + " not found");
        }
        if (((HeightMapDraft) Drafts.get(heightMapDraft.id, HeightMapDraft.class)) != null) {
            throw new IllegalArgumentException(("Duplicate definition of heightmap " + heightMapDraft.id).toString());
        }
        if (heightMapDraft.ordinal == Integer.MIN_VALUE) {
            heightMapDraft.ordinal = Drafts.HEIGHTMAPS.size();
        }
        Drafts.HEIGHTMAPS.add(heightMapDraft);
        return heightMapDraft;
    }
}
