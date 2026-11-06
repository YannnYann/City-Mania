package info.flowersoft.theotown.util;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.ScrollableTextFrame;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class LineLayoutFiller {
    public int lineHeight;
    public int lineWidth;
    public Gadget parent;
    public int spacing;
    public int startX;
    public int startY;
    public List<Gadget> gadgets = new ArrayList();
    public IntList targetSizes = new IntList();

    public interface ClickHandler {
        void handle(Gadget gadget);
    }

    public interface VisibilityFunction {
        boolean isVisible(Gadget gadget);
    }

    public LineLayoutFiller(int i, int i2, Gadget gadget) {
        this.parent = gadget;
        this.lineHeight = i;
        this.lineWidth = gadget.getClientWidth();
        this.spacing = i2;
    }

    public void setStart(int i, int i2) {
        this.startX = i;
        this.startY = i2;
    }

    public void setLineWidth(int i) {
        this.lineWidth = i;
    }

    public void setLineHeight(int i) {
        this.lineHeight = i;
    }

    public int getStartX() {
        return this.startX;
    }

    public int getStartY() {
        return this.startY;
    }

    public int getVerticalSpace() {
        return this.parent.getClientHeight() - this.startY;
    }

    public int getLineHeight() {
        return this.lineHeight;
    }

    public int getLineWidth() {
        return this.lineWidth;
    }

    public Gadget getParent() {
        return this.parent;
    }

    public void addGadget(Gadget gadget) {
        this.gadgets.add(gadget);
    }

    public void addEmpty() {
        addGadget(new Gadget(0, 0, 0, 0, this.parent) { // from class: info.flowersoft.theotown.util.LineLayoutFiller.1
        });
    }

    public Label addLabel(String str) {
        Label label = new Label(str, 0, 0, 0, 0, this.parent);
        label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        label.setPadding(2);
        addGadget(label);
        return label;
    }

    public ScrollableTextFrame addText(String str) {
        ScrollableTextFrame scrollableTextFrame = new ScrollableTextFrame(str, 0, 0, this.lineWidth, this.lineHeight, this.parent);
        scrollableTextFrame.setShowBorder(false);
        addGadget(scrollableTextFrame);
        return scrollableTextFrame;
    }

    public IconButton addButton(int i, String str, Runnable runnable) {
        return addButton(i, str, runnable, (Getter<Boolean>) null);
    }

    public IconButton addButton(int i, String str, final Runnable runnable, final Getter<Boolean> getter) {
        IconButton iconButton = new IconButton(i, str, 0, 0, 0, 0, this.parent) { // from class: info.flowersoft.theotown.util.LineLayoutFiller.2
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                runnable.run();
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                Getter getter2 = getter;
                return (getter2 == null || ((Boolean) getter2.get()).booleanValue()) && super.isVisible();
            }
        };
        addGadget(iconButton);
        return iconButton;
    }

    public GoldButton addGoldButton(int i, String str, final Runnable runnable, final Getter<Boolean> getter) {
        GoldButton goldButton = new GoldButton(i, str, 0, 0, 0, 0, this.parent) { // from class: info.flowersoft.theotown.util.LineLayoutFiller.3
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                runnable.run();
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                Getter getter2 = getter;
                return (getter2 == null || ((Boolean) getter2.get()).booleanValue()) && super.isVisible();
            }
        };
        addGadget(goldButton);
        return goldButton;
    }

    public IconButton addButton(int i, String str, ClickHandler clickHandler) {
        return addButton(i, str, clickHandler, (VisibilityFunction) null);
    }

    public IconButton addButton(int i, String str, final ClickHandler clickHandler, final VisibilityFunction visibilityFunction) {
        IconButton iconButton = new IconButton(i, str, 0, 0, 0, 0, this.parent) { // from class: info.flowersoft.theotown.util.LineLayoutFiller.4
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                clickHandler.handle(this);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                VisibilityFunction visibilityFunction2 = visibilityFunction;
                return (visibilityFunction2 == null || visibilityFunction2.isVisible(this)) && super.isVisible();
            }
        };
        addGadget(iconButton);
        return iconButton;
    }

    public void setTargetSize(int i, int i2) {
        while (this.targetSizes.size() < i + 1) {
            this.targetSizes.add(0);
        }
        this.targetSizes.set(i, i2);
    }

    public void finalizeLine() {
        finalizeLine(2);
    }

    public void finalizeLine(int i) {
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < this.gadgets.size()) {
            int i5 = this.targetSizes.size() > i2 ? this.targetSizes.get(i2) : 0;
            if (i5 > 0) {
                i3 += i5;
            } else {
                i4++;
            }
            if (i2 > 0) {
                i3 += this.spacing;
            }
            i2++;
        }
        int i6 = this.lineWidth - i3;
        int i7 = this.startX;
        int i8 = 0;
        int i9 = i4;
        while (i8 < this.gadgets.size()) {
            Gadget gadget = this.gadgets.get(i8);
            int i10 = this.targetSizes.size() > i8 ? this.targetSizes.get(i8) : 0;
            if (i10 <= 0) {
                if (i9 > 1) {
                    i10 = ((i6 + i4) - 1) / i4;
                } else {
                    i10 = i6 - (((i4 - 1) * ((i6 + i4) - 1)) / i4);
                }
                i9--;
            }
            gadget.setShape(i7, this.startY, i10, this.lineHeight);
            i7 += i10 + this.spacing;
            i8++;
        }
        this.gadgets.clear();
        this.startY += this.lineHeight + i;
    }
}
