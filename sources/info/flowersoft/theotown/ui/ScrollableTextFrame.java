package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.gui.TextFrame;

/* JADX INFO: loaded from: classes4.dex */
public class ScrollableTextFrame extends Gadget {
    public ListBox listBox;
    public TextFrame textFrame;
    public ListItem textFrameItem;

    public ScrollableTextFrame(String str, int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        ListBox listBox = new ListBox(0, 0, i3, i4, this);
        this.listBox = listBox;
        listBox.fillParent();
        TextFrame textFrameAddStaticTextFrame = addStaticTextFrame(str, this.skin.fontDefault);
        this.textFrame = textFrameAddStaticTextFrame;
        textFrameAddStaticTextFrame.fillParent();
        this.textFrameItem = this.listBox.getItem(0);
    }

    public void setColor(int i, int i2, int i3) {
        this.textFrame.setColor(i, i2, i3);
    }

    public void setColor(Color color) {
        setColor(color.getRed(), color.getGreen(), color.getBlue());
    }

    public Color getColor() {
        return this.textFrame.getColor();
    }

    public TextFrame addStaticTextFrame(String str, Font font) {
        final TextFrame textFrame = new TextFrame(str, 0, 0, this.listBox.getClientWidth(), 0, this.listBox);
        textFrame.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        textFrame.setHeight(textFrame.calculateTextHeight());
        textFrame.setFont(font);
        this.listBox.addItem(new ListItem(null) { // from class: info.flowersoft.theotown.ui.ScrollableTextFrame.1
            @Override // io.blueflower.stapel2d.gui.ListItem
            public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
                textFrame.draw(i2, i3);
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public int getHeight(boolean z) {
                return Math.max(textFrame.calculateTextHeight() + textFrame.getPaddingTop() + textFrame.getPaddingBottom(), textFrame.getHeight());
            }
        });
        return textFrame;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        Engine engine = this.skin.engine;
        boolean zIsClippingActive = engine.isClippingActive();
        float clipRectX = engine.getClipRectX();
        float clipRectY = engine.getClipRectY();
        float clipRectW = engine.getClipRectW();
        float clipRectH = engine.getClipRectH();
        super.draw(i, i2);
        if (zIsClippingActive) {
            engine.setClipRect(clipRectX, clipRectY, clipRectW, clipRectH);
        }
    }

    public ListBox getListBox() {
        return this.listBox;
    }

    public TextFrame getTextFrame() {
        return this.textFrame;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setPadding(int i, int i2, int i3, int i4) {
        this.textFrame.setPadding(i, i2, i3, i4);
    }

    public void setAlignment(float f, float f2) {
        this.textFrame.setAlignment(f, f2);
    }

    public boolean isBold() {
        return this.textFrame.isBold();
    }

    public void setBold(boolean z) {
        this.textFrame.setBold(z);
    }

    public void setFont(Font font) {
        this.textFrame.setFont(font);
    }

    public Font getFont() {
        return this.textFrame.getFont();
    }

    public void setShowBorder(boolean z) {
        this.listBox.setShowBorder(z);
    }

    public boolean isShowBorder() {
        return this.listBox.isShowBorder();
    }

    public void setText(String str) {
        this.textFrame.setText(str);
    }

    public String getText() {
        return this.textFrame.getText();
    }

    public int getTextHeight() {
        int iCalculateTextHeight;
        int i = 0;
        for (int i2 = 0; i2 < this.listBox.countItems(); i2++) {
            ListItem item = this.listBox.getItem(i2);
            if (item != this.textFrameItem) {
                iCalculateTextHeight = item.getHeight(false);
            } else {
                iCalculateTextHeight = this.textFrame.calculateTextHeight();
            }
            i += iCalculateTextHeight;
        }
        return i;
    }
}
