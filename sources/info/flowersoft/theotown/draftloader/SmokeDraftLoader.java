package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.SmokeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class SmokeDraftLoader extends DraftLoader {
    public static final ImageHandleResolver SMOKE_HANDLE = new ImageHandleResolver() { // from class: info.flowersoft.theotown.draftloader.SmokeDraftLoader.1
        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleY(int i, int i2, int i3) {
            return i2;
        }

        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleX(int i, int i2, int i3) {
            return i / 2;
        }
    };

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"smoke"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public SmokeDraft load() throws JSONException {
        SmokeDraft smokeDraft = new SmokeDraft();
        loadDefaults(smokeDraft);
        smokeDraft.frames = loadFrames("frames", "frame", SMOKE_HANDLE, smokeDraft, smokeDraft.frames);
        smokeDraft.speed = (float) this.src.optDouble("speed", 1.0d);
        smokeDraft.scale = (float) this.src.optDouble("scale", 1.0d);
        Drafts.SMOKES.add(smokeDraft);
        return smokeDraft;
    }
}
