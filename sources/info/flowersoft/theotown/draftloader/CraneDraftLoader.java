package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.CraneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class CraneDraftLoader extends DraftLoader {
    public static final ImageHandleResolver CRANE_HANDLE = new ImageHandleResolver() { // from class: info.flowersoft.theotown.draftloader.CraneDraftLoader.1
        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleX(int i, int i2, int i3) {
            return 14;
        }

        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleY(int i, int i2, int i3) {
            return 11;
        }
    };

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"crane"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public CraneDraft load() throws JSONException {
        CraneDraft craneDraft = (CraneDraft) getDraft(this.src, CraneDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.CraneDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new CraneDraft();
            }
        });
        loadDefaults(craneDraft);
        craneDraft.frames = loadFrames("frames", "frame", CRANE_HANDLE, craneDraft, craneDraft.frames);
        CraneDraft craneDraft2 = (CraneDraft) Drafts.get(craneDraft.id, CraneDraft.class);
        if (craneDraft2 != null) {
            Drafts.CRANES.remove(craneDraft2);
        }
        Drafts.CRANES.add(craneDraft);
        return craneDraft;
    }
}
