package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.UnifiedCommentControl;
import info.flowersoft.theotown.cityfile.OnlineMapDirectory;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.AbstractCommentsStage;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class RegionCommentStage extends AbstractCommentsStage {
    public AbstractCommentsStage.ImageProvider imageProvider;
    public final OnlineMapDirectory mapDirectory;
    public final UnifiedCommentControl ucc;

    public RegionCommentStage(Stapel2DGameContext stapel2DGameContext, String str, OnlineMapDirectory onlineMapDirectory, AbstractCommentsStage.ImageProvider imageProvider) {
        super(stapel2DGameContext, str, Resources.ICON_REGION);
        this.mapDirectory = onlineMapDirectory;
        this.ucc = new UnifiedCommentControl(stapel2DGameContext);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public String getTargetIdentifier() {
        return "region:" + this.mapDirectory.getRegionId();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void fetch(Setter<JSONObject> setter, Setter<Exception> setter2) {
        this.mapDirectory.fetchComments(setter, setter2);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendCommentRequest(String str, Service.Handler handler) {
        this.mapDirectory.comment(str, handler);
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
        this.mapDirectory.setRegionAllowComments(!z, handler);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public int getOwnerId() {
        return this.mapDirectory.getOwnerId();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public boolean isLocked() {
        return !this.mapDirectory.allowsComments();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage, info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        AbstractCommentsStage.ImageProvider imageProvider = this.imageProvider;
        if (imageProvider != null) {
            imageProvider.prepare();
        }
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage, info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        super.leave();
        AbstractCommentsStage.ImageProvider imageProvider = this.imageProvider;
        if (imageProvider != null) {
            imageProvider.release();
        }
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void beforeAddingComments(ListBox listBox) {
        listBox.addItem(new AbstractCommentsStage.CommentHeaderItem(listBox.getClientWidth(), this.title, this.mapDirectory.getAuthorName(), this.mapDirectory.getAuthorColor(), false, this.imageProvider));
    }

    public String toString() {
        return "GalleryCommentStage";
    }
}
