package info.flowersoft.theotown.draftloader;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.SoundDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class SoundDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"sound"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        SoundDraft soundDraft = new SoundDraft();
        loadDefaults(soundDraft);
        soundDraft.sound = PluginHelper.loadSound(this.src.getString(C3522b4.i.b));
        soundDraft.volume = (float) this.src.optDouble("volume", 1.0d);
        Drafts.SOUNDS.add(soundDraft);
        return soundDraft;
    }
}
