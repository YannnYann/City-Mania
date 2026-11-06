package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.UnifiedCommentControl;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.ScreenshotStore;
import info.flowersoft.theotown.stages.AbstractCommentsStage;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class GalleryCommentStage extends AbstractCommentsStage {
    public final AbstractCommentsStage.ImageProvider imageProvider;
    public final ScreenshotStore.Screenshot screenshot;
    public final ScreenshotStore store;
    public final UnifiedCommentControl ucc;

    public GalleryCommentStage(Stapel2DGameContext stapel2DGameContext, String str, ScreenshotStore screenshotStore, ScreenshotStore.Screenshot screenshot, AbstractCommentsStage.ImageProvider imageProvider) {
        super(stapel2DGameContext, str, Resources.ICON_CAMERA);
        this.store = screenshotStore;
        this.screenshot = screenshot;
        this.ucc = new UnifiedCommentControl(stapel2DGameContext);
        this.imageProvider = imageProvider;
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public String getTargetIdentifier() {
        return "gallery:" + this.screenshot.getId();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void fetch(Setter<JSONObject> setter, Setter<Exception> setter2) {
        this.store.fetchComments(this.screenshot.getId(), setter, setter2);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendCommentRequest(String str, Service.Handler handler) {
        this.screenshot.comment(str, handler);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendDeleteRequest(int i, Service.Handler handler) {
        this.ucc.sendDeleteRequest(i, handler);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public boolean hasReportedComment(int i) {
        return this.ucc.hasReportedComment(i);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendReportRequest(int i, String str, Runnable runnable, Setter<String> setter) {
        this.ucc.sendReportRequest(i, str, runnable, setter);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendLockRequest(boolean z, Service.Handler handler) {
        this.screenshot.setAllowComments(!z, handler);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public int getOwnerId() {
        return this.screenshot.getOwnerId();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public boolean isLocked() {
        return !this.screenshot.allowsComments();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage, info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        this.imageProvider.prepare();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage, info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        super.leave();
        this.imageProvider.release();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void beforeAddingComments(ListBox listBox) {
        listBox.addItem(new AbstractCommentsStage.CommentHeaderItem(listBox.getClientWidth(), this.title, "", Colors.BLACK, false, this.imageProvider));
    }

    public String toString() {
        return "GalleryCommentStage";
    }
}
