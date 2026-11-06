package info.flowersoft.theotown.ui;

import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;

/* JADX INFO: loaded from: classes4.dex */
public interface Selectable {
    boolean allowEasySelect();

    void build(Panel panel);

    int countFrames();

    void drawPreview(Engine engine, int i, int i2);

    int getFrame();

    String getId();

    Master getMaster();

    int getPreviewHeight();

    int getPreviewWidth();

    String getTitle();

    boolean isActive();

    boolean isMarkable();

    boolean isSelectable();

    void select();

    void setFrame(int i);

    void setOnSelect(Runnable runnable);

    default void nextFrame() {
        setFrame((getFrame() + 1) % countFrames());
    }

    default void prevFrame() {
        setFrame(((getFrame() + countFrames()) - 1) % countFrames());
    }
}
