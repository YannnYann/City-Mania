package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Selectable;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;

/* JADX INFO: loaded from: classes4.dex */
public class Separator implements Selectable {
    @Override // info.flowersoft.theotown.ui.Selectable
    public boolean allowEasySelect() {
        return false;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void build(Panel panel) {
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public int countFrames() {
        return 1;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public int getFrame() {
        return 0;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public String getId() {
        return null;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public Master getMaster() {
        return null;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        return 1;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        return 1000;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return null;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public boolean isActive() {
        return true;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public boolean isMarkable() {
        return false;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public boolean isSelectable() {
        return false;
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void select() {
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void setFrame(int i) {
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void setOnSelect(Runnable runnable) {
    }

    @Override // info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        engine.setColor(Colors.GRAY);
        engine.drawImage(Resources.IMAGE_WORLD, i, i2, 1000.0f, 1.0f, Resources.FRAME_RECT);
        engine.setColor(Colors.WHITE);
    }
}
