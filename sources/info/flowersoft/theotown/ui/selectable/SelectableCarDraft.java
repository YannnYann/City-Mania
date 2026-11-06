package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableCarDraft extends SelectableDraft {
    public List<CarDraft> cars;
    public final CarDraft draft;
    public Color overlayColor;

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return 0L;
    }

    public SelectableCarDraft(City city, CarDraft carDraft, Color color) {
        super(city);
        this.cars = new ArrayList();
        this.draft = carDraft;
        this.overlayColor = color;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        float width = Resources.IMAGE_WORLD.getWidth(this.draft.frames[2]);
        if (this.draft.tail != null) {
            width += r1.length * 8.0f;
        }
        return Math.round(width);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        float height = Resources.IMAGE_WORLD.getHeight(this.draft.frames[2]);
        if (this.draft.tail != null) {
            height += r1.length * 4.0f;
        }
        return Math.round(height);
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        float scaleX = engine.getScaleX();
        float scaleY = engine.getScaleY();
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        boolean z = hasRequirement() && !isUnlocked();
        if (z) {
            engine.setTransparency(200);
        }
        getPreviewWidth();
        int previewHeight = getPreviewHeight();
        char c = 2;
        float handleX = Resources.IMAGE_WORLD.getHandleX(this.draft.frames[2]) * scaleX;
        Resources.IMAGE_WORLD.getHandleY(this.draft.frames[2]);
        this.cars.clear();
        this.cars.add(this.draft);
        CarDraft[] carDraftArr = this.draft.tail;
        if (carDraftArr != null) {
            for (CarDraft carDraft : carDraftArr) {
                this.cars.add(carDraft);
            }
        }
        int size = this.cars.size() - 1;
        while (size >= 0) {
            CarDraft carDraft2 = this.cars.get(size);
            int i3 = carDraft2.frames[c];
            int[] iArr = carDraft2.overlayFrames;
            int i4 = iArr != null ? iArr[c] : 0;
            float f = scaleX;
            float f2 = i + (((size * 8) + handleX) * f);
            float f3 = i2 + ((((size * (-4)) - 4.0f) + previewHeight) * scaleY);
            if (i3 != 0) {
                Color[] colorArr = carDraft2.colors;
                if (colorArr != null) {
                    Color color = this.overlayColor;
                    if (color != null) {
                        engine.setColor(color);
                    } else {
                        engine.setColor(colorArr[0]);
                    }
                } else {
                    engine.setColor(Colors.WHITE);
                }
                engine.drawImage(Resources.IMAGE_WORLD, f2, f3, i3);
            }
            if (i4 != 0) {
                engine.setColor(Colors.WHITE);
                engine.drawImage(Resources.IMAGE_WORLD, f2, f3, i4);
            }
            size--;
            scaleX = f;
            c = 2;
        }
        engine.setColor(Colors.WHITE);
        if (z) {
            engine.setTransparency(255);
            drawLock(engine, i, i2, getPreviewWidth(), getPreviewHeight());
        }
    }
}
