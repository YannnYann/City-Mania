package info.flowersoft.theotown.draftloader;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.draft.ColorDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class ColorDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{C3522b4.i.S};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        ColorDraft colorDraft = new ColorDraft();
        loadDefaults(colorDraft);
        colorDraft.color = loadColorFromObject(this.src);
        return colorDraft;
    }
}
