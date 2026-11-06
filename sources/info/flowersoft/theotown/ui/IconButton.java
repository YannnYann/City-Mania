package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;

/* JADX INFO: loaded from: classes4.dex */
public class IconButton extends Button {
    public boolean borderless;
    public int iconWidth;
    public int maxWidth;
    public boolean rightIcon;

    public IconButton(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget) {
        this(i, str, i2, i3, i4, i5, gadget, false);
    }

    public IconButton(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, boolean z) {
        super(i2, i3, i4, i5, gadget);
        this.maxWidth = 1000;
        this.iconWidth = 0;
        this.icon.setFrame(i);
        this.icon.setFillParent(false);
        this.text.setText(str);
        this.text.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        this.text.setFillParent(false);
        this.text.setColor(this.skin.cText);
        this.rightIcon = z;
        calculateMinWidth();
        getParent().layout();
    }

    public void setBorderless(boolean z) {
        this.borderless = z;
    }

    public void setMaxWidth(int i) {
        this.maxWidth = i;
        this.parent.layout();
    }

    public void setIconWidth(int i) {
        this.iconWidth = i;
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        if (!this.borderless) {
            drawButton(i, i2);
        }
        if (isEnabled()) {
            if (isPressed()) {
                i2 += 2;
            }
            drawChildren(i, i2);
            return;
        }
        int alpha = this.text.getColor().getAlpha();
        int alpha2 = this.icon.getColor().getAlpha();
        this.text.getColor().setAlpha(alpha / 2);
        this.icon.getColor().setAlpha(alpha2 / 2);
        drawChildren(i, i2);
        this.text.getColor().setAlpha(alpha);
        this.icon.getColor().setAlpha(alpha2);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void layout() {
        super.layout();
        ShadowedLabel shadowedLabel = this.text;
        if (shadowedLabel == null || this.icon == null) {
            return;
        }
        if (shadowedLabel.getText() == null || this.text.getText().isEmpty()) {
            this.icon.setShape(0, -1, getClientWidth(), getClientHeight());
            return;
        }
        if (this.icon.getFrame() != 0) {
            int clientHeight = this.iconWidth;
            if (clientHeight <= 0) {
                clientHeight = getClientHeight();
            }
            if (this.rightIcon) {
                this.icon.setShape(getClientWidth() - clientHeight, -1, clientHeight, getClientHeight());
                this.text.setShape(10, 0, getClientWidth() - clientHeight, getClientHeight());
                return;
            } else {
                this.icon.setShape(0, -1, clientHeight, getClientHeight());
                this.text.setShape(clientHeight, 0, getClientWidth() - getClientHeight(), getClientHeight());
                return;
            }
        }
        this.text.setShape(0, 0, getClientWidth(), getClientHeight());
        ShadowedLabel shadowedLabel2 = this.text;
        shadowedLabel2.setAlignment(0.5f, shadowedLabel2.getAlignmentY());
    }

    public boolean isRightIcon() {
        return this.rightIcon;
    }

    public void setRightIcon(boolean z) {
        this.rightIcon = z;
        layout();
    }

    @Override // io.blueflower.stapel2d.gui.Button
    public void setText(String str) {
        super.setText(str);
        calculateMinWidth();
        layout();
    }

    @Override // io.blueflower.stapel2d.gui.Button
    public void setIcon(int i) {
        Icon icon = this.icon;
        if (icon != null) {
            icon.setFrame(i);
            layout();
        }
    }

    @Override // io.blueflower.stapel2d.gui.Button
    public int getIcon() {
        return this.icon.getFrame();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setShape(int i, int i2, int i3, int i4) {
        super.setShape(i, i2, i3, i4);
        calculateMinWidth();
    }

    public void calculateMinWidth() {
        Icon icon = this.icon;
        int clientHeight = (icon == null || icon.getFrame() == 0) ? 0 : getClientHeight();
        ShadowedLabel shadowedLabel = this.text;
        int iMax = Math.max(this.width, ((shadowedLabel == null || shadowedLabel.getText().isEmpty()) ? 0 : ((int) this.text.getFont().getWidth(this.text.getText())) + 10) + clientHeight);
        this.width = iMax;
        ShadowedLabel shadowedLabel2 = this.text;
        if (shadowedLabel2 != null) {
            if (iMax > this.maxWidth) {
                this.text.setScale(Math.max(0, r4 - clientHeight) / Math.max(1, this.width - clientHeight), 1.0f);
                this.width = this.maxWidth;
            } else {
                shadowedLabel2.setScale(1.0f, 1.0f);
            }
        }
    }
}
