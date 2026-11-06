package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableRailDraft extends SelectableDraft {
    public RailDraft draft;

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        return 22;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        return 32;
    }

    public SelectableRailDraft(City city, RailDraft railDraft) {
        super(city);
        this.draft = railDraft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return this.draft.price;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getMonthlyPrice() {
        return this.draft.monthlyPrice;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        Image image = Resources.IMAGE_WORLD;
        int i3 = this.draft.frames[5];
        float scaleX = engine.getScaleX();
        float scaleY = engine.getScaleY();
        boolean z = hasRequirement() && !isUnlocked();
        if (z) {
            engine.setTransparency(50);
            engine.setColor(Colors.DARK_GRAY);
        }
        if (!this.draft.onGround) {
            engine.drawImage(image, i + image.getHandleX(i3), i2 + 24, this.draft.pileFrames[0]);
        }
        float f = i;
        float f2 = i2 + 24;
        engine.drawImage(image, image.getHandleX(i3) + f, f2 - (this.draft.pileHeight * scaleY), i3);
        engine.drawImage(image, f + image.getHandleX(i3), f2 - (this.draft.pileHeight * scaleX), i3 + 16);
        if (z) {
            drawLock(engine, i, i2, getPreviewWidth(), getPreviewHeight());
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        this.city.applyComponent(new ToolResolver(this.city).resolve(this.draft));
    }
}
