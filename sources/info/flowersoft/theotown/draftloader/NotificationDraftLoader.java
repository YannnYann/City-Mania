package info.flowersoft.theotown.draftloader;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.draft.NotificationDraft;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"notification"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public NotificationDraft load() throws JSONException {
        NotificationDraft notificationDraft = (NotificationDraft) getDraft(this.src, NotificationDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.NotificationDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new NotificationDraft();
            }
        });
        loadDefaults(notificationDraft);
        notificationDraft.frames = loadFrames("frames", "frame", notificationDraft, notificationDraft.frames);
        notificationDraft.question = this.src.optBoolean("question", false);
        notificationDraft.immersive = this.src.optBoolean(C3522b4.i.v, false);
        notificationDraft.closeable = this.src.optBoolean("closeable", !notificationDraft.question);
        notificationDraft.important = this.src.optBoolean("important", false);
        notificationDraft.showOnce = this.src.optBoolean("show once", false);
        notificationDraft.okFun = loadTransitions(this.src, "ok fun", notificationDraft.okFun);
        notificationDraft.cancelFun = loadTransitions(this.src, "cancel fun", notificationDraft.cancelFun);
        return notificationDraft;
    }
}
