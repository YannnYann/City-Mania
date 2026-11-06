package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.UnifiedCommentControl;
import info.flowersoft.theotown.cityfile.MapPreviewRenderer;
import info.flowersoft.theotown.cityfile.OnlineMapDirectory;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.AbstractCommentsStage;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.util.Setter;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class CityCommentStage extends AbstractCommentsStage {
    public final CityKeeper cityKeeper;
    public final AbstractCommentsStage.ImageProvider imageProvider;
    public final OnlineMapDirectory mapDirectory;
    public final UnifiedCommentControl ucc;

    public CityCommentStage(Stapel2DGameContext stapel2DGameContext, OnlineMapDirectory onlineMapDirectory, final CityKeeper cityKeeper) {
        super(stapel2DGameContext, cityKeeper.getInfo().getName(), Resources.ICON_CITY);
        this.mapDirectory = onlineMapDirectory;
        this.cityKeeper = cityKeeper;
        this.ucc = new UnifiedCommentControl(stapel2DGameContext);
        this.imageProvider = new AbstractCommentsStage.ImageProvider() { // from class: info.flowersoft.theotown.stages.CityCommentStage.1
            public MapPreviewRenderer renderer;

            @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
            public int getFrame() {
                return 0;
            }

            @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
            public void prepare() {
                release();
                this.renderer = new MapPreviewRenderer(cityKeeper, Resources.skin.engine, Executors.newSingleThreadExecutor());
            }

            @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
            public Image get() {
                MapPreviewRenderer mapPreviewRenderer = this.renderer;
                if (mapPreviewRenderer != null) {
                    return mapPreviewRenderer.getImage();
                }
                return null;
            }

            @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
            public void release() {
                MapPreviewRenderer mapPreviewRenderer = this.renderer;
                if (mapPreviewRenderer != null) {
                    mapPreviewRenderer.release();
                    this.renderer = null;
                }
            }
        };
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public String getTargetIdentifier() {
        return "city";
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void fetch(Setter<JSONObject> setter, Setter<Exception> setter2) {
        this.mapDirectory.fetchCityComments(this.cityKeeper, setter, setter2);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public void sendCommentRequest(String str, Service.Handler handler) {
        this.mapDirectory.commentCity(this.cityKeeper, str, handler);
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
        this.mapDirectory.setCityAllowComments(this.cityKeeper, !z, handler);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public int getOwnerId() {
        return this.mapDirectory.getCityOwnerId(this.cityKeeper);
    }

    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage
    public boolean isLocked() {
        return !this.mapDirectory.isCityCommentsAllowed(this.cityKeeper);
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
        listBox.addItem(new AbstractCommentsStage.CommentHeaderItem(listBox.getClientWidth(), this.title, this.mapDirectory.getCityAuthor(this.cityKeeper), this.mapDirectory.getCityAuthorColor(this.cityKeeper), false, this.imageProvider));
    }

    public String toString() {
        return "CityCommentStage";
    }
}
