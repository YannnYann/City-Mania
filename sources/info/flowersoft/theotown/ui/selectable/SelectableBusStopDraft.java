package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.BusStopTool;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableBusStopDraft extends SelectableDraft {
    public final BusStopDraft draft;
    public RoadDraft roadDraft;

    public SelectableBusStopDraft(City city, BusStopDraft busStopDraft) {
        super(city);
        this.draft = busStopDraft;
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
    public void drawPreview(Engine engine, int i, int i2) {
        if (this.draft.previewFrames != null) {
            super.drawPreview(engine, i, i2);
            return;
        }
        if (this.roadDraft == null) {
            this.roadDraft = (RoadDraft) Drafts.get("$road01", RoadDraft.class);
        }
        Image image = Resources.IMAGE_WORLD;
        float scaleX = engine.getScaleX();
        boolean z = hasRequirement() && !isUnlocked();
        if (z) {
            engine.setTransparency(50);
            engine.setColor(Colors.DARK_GRAY);
        }
        int i3 = this.roadDraft.frames[5];
        float f = i;
        float f2 = i2 + (((3.0f * scaleX) * 16.0f) / 2.0f);
        engine.drawImage(image, (image.getHandleX(i3) * scaleX) + f, f2, i3);
        int[] iArr = this.draft.frames;
        int length = (iArr.length / 4) * 4;
        int i4 = iArr[length - 3];
        engine.drawImage(image, (image.getHandleX(i4) * scaleX) + f, f2, i4);
        int i5 = this.draft.frames[length - 1];
        engine.drawImage(image, f + (scaleX * image.getHandleX(i5)), f2, i5);
        if (z) {
            drawLock(engine, i, i2, getPreviewWidth(), getPreviewHeight());
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new BusStopTool(this.draft));
    }
}
