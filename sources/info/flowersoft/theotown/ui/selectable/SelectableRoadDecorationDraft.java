package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.RoadDecorationTool;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableRoadDecorationDraft extends SelectableDraft {
    public final RoadDraft DEFAULT_PREVIEW_ROAD;
    public RoadDecorationDraft draft;
    public Drawer drawer;

    public SelectableRoadDecorationDraft(City city, RoadDecorationDraft roadDecorationDraft) {
        super(city);
        this.DEFAULT_PREVIEW_ROAD = (RoadDraft) Drafts.get("$road01", RoadDraft.class);
        this.draft = roadDecorationDraft;
        this.drawer = new Drawer(city);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return this.draft.price;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new RoadDecorationTool(this.draft));
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        if (this.draft.previewFrames != null) {
            return super.getPreviewWidth();
        }
        return 32;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        if (this.draft.previewFrames != null) {
            return super.getPreviewHeight();
        }
        return 16;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        if (this.draft.previewFrames != null) {
            super.drawPreview(engine, i, i2);
            return;
        }
        Image image = Resources.IMAGE_WORLD;
        float scaleX = engine.getScaleX();
        boolean z = hasRequirement() && !isUnlocked();
        if (z) {
            engine.setTransparency(50);
            engine.setColor(Colors.DARK_GRAY);
        }
        RoadDraft roadDraft = this.DEFAULT_PREVIEW_ROAD;
        RoadDraft roadDraft2 = this.draft.previewRoad;
        if (roadDraft2 != null) {
            roadDraft = roadDraft2;
        }
        int i3 = roadDraft.frames[5];
        int iMax = Math.max(((DefaultDate) this.city.getComponent(1)).getAnimationTime() / 200, 0);
        float f = i;
        float f2 = i2 + (16.0f * scaleX);
        engine.drawImage(image, (image.getHandleX(i3) * scaleX) + f, f2, i3);
        this.drawer.x = f + (scaleX * image.getHandleX(i3));
        Drawer drawer = this.drawer;
        drawer.y = f2;
        drawer.begin(engine);
        this.drawer.scaleX = engine.getScaleX();
        this.drawer.scaleY = engine.getScaleY();
        if (this.draft.animationSpots != null) {
            Drawing drawing = Drawing.getInstance();
            Drawer drawer2 = this.drawer;
            RoadDecorationDraft roadDecorationDraft = this.draft;
            drawing.drawAnimations(drawer2, roadDecorationDraft.animationSpots, roadDecorationDraft.animationSpotIndices, 0, 5, iMax, 0, false);
        }
        if (this.draft.animationFGSpots != null) {
            Drawing drawing2 = Drawing.getInstance();
            Drawer drawer3 = this.drawer;
            RoadDecorationDraft roadDecorationDraft2 = this.draft;
            drawing2.drawAnimations(drawer3, roadDecorationDraft2.animationFGSpots, roadDecorationDraft2.animationFGSpotIndices, 0, 5, iMax, 0, false);
        }
        this.drawer.end();
        if (z) {
            drawLock(engine, i, i2, getPreviewWidth(), getPreviewHeight());
        }
    }
}
