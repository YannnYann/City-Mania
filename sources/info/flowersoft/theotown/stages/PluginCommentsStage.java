package info.flowersoft.theotown.stages;

import com.ironsource.R6;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.ResponseHandler;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.AbstractCommentsStage;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.store.StorePlugin;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class PluginCommentsStage extends AbstractCommentsStage {
    public final AbstractCommentsStage.ImageProvider imageProvider;
    public final ManagedPluginsController mpc;
    public final StorePlugin plugin;
    public final Service service;

    public PluginCommentsStage(Stapel2DGameContext stapel2DGameContext, StorePlugin storePlugin, AbstractCommentsStage.ImageProvider imageProvider) {
        super(stapel2DGameContext, new DraftLocalizer(stapel2DGameContext, "").localizePacked(storePlugin.getTitle()), Resources.ICON_PLUGIN);
        this.service = new Service("store/manage_store");
        this.mpc = ManagedPluginsController.getInstance();
        this.plugin = storePlugin;
        this.imageProvider = imageProvider;
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public String getTargetIdentifier() {
        return "plugin:" + this.plugin.getPluginId();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void fetch(final Setter<JSONObject> setter, final Setter<Exception> setter2) throws Throwable {
        ManagedPluginsController.getInstance().fetchComments(new ResponseHandler<JSONObject>() { // from class: info.flowersoft.theotown.stages.PluginCommentsStage.1
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(JSONObject jSONObject) {
                setter.set(jSONObject);
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                setter2.set(exc);
            }
        }, this.plugin.getPluginId(), "ingame");
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendCommentRequest(String str, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("comment").put(R6.L, this.plugin.getPluginId()).put("revision", this.plugin.getRevisionId()).put(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT, str).build(), handler));
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendDeleteRequest(int i, Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("delete comment").put("comment", i).build(), handler));
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendLockRequest(final boolean z, final Service.Handler handler) {
        Backend.getInstance().addTask(this.service.buildTask(this.service.buildRequest("set allow comments").put(R6.L, this.plugin.getPluginId()).put("state", Boolean.valueOf(!z)).build(), new Service.Handler() { // from class: info.flowersoft.theotown.stages.PluginCommentsStage.2
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                PluginCommentsStage.this.plugin.setAllowComments(!z);
                handler.onSuccess(jSONObject);
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                handler.onFailure(jSONObject);
            }
        }));
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public boolean hasReportedComment(int i) {
        return this.mpc.isCommentReported(i);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendReportRequest(int i, String str, final Runnable runnable, final Setter<String> setter) throws Throwable {
        this.mpc.reportComment(this.plugin.getPluginId(), i, str, new ResponseHandler<JSONObject>() { // from class: info.flowersoft.theotown.stages.PluginCommentsStage.3
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(JSONObject jSONObject) {
                runnable.run();
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                setter.set(exc.toString());
                exc.printStackTrace();
            }
        });
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public int getOwnerId() {
        return this.plugin.getAuthorId();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public boolean isLocked() {
        return !this.plugin.allowsComments();
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public String getCannotCommentReason(User user) {
        String cannotCommentReason = super.getCannotCommentReason(user);
        if (cannotCommentReason != null) {
            return cannotCommentReason;
        }
        boolean z = (user == null || user.getForumId() == 0 || user.getForumId() != ((long) this.plugin.getAuthorId())) ? false : true;
        if (ManagedPluginsController.getInstance().isAcquired(this.plugin.getPluginId()) || z) {
            return null;
        }
        return this.translator.translate(1888);
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
        listBox.addItem(new AbstractCommentsStage.CommentHeaderItem(listBox.getClientWidth(), new DraftLocalizer(this.context, "").localizePacked(this.plugin.getDescription()), this.plugin.getAuthor(), this.plugin.getAuthorColor(), this.plugin.isFeatured(), this.imageProvider));
    }

    public String toString() {
        return "GalleryCommentStage";
    }
}
