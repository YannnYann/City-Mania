package info.flowersoft.theotown.ui;

import com.badlogic.gdx.utils.TimeUtils;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;

/* JADX INFO: loaded from: classes4.dex */
public class GoldButton extends IconButton {
    public boolean golden;
    public boolean green;

    public GoldButton(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget) {
        super(i, str, i2, i3, Math.max(i4, i5), i5, gadget);
        this.golden = true;
        this.green = false;
    }

    public boolean isGolden() {
        return this.golden;
    }

    public GoldButton setGolden(boolean z) {
        this.golden = z;
        return this;
    }

    public GoldButton setGreen(boolean z) {
        this.green = z;
        return this;
    }

    public boolean isGreen() {
        return this.green;
    }

    @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        if (this.golden || this.green) {
            Color color = this.text.getColor();
            if (this.golden) {
                this.text.setColor(100, 70, 0);
            }
            if (this.green) {
                this.text.setColor(Colors.DARK_GREEN);
            }
            if (!isEnabled()) {
                this.text.setColor(this.skin.cTextSecondary);
            }
            Engine engine = this.skin.engine;
            int iMillis = (int) TimeUtils.millis();
            if (iMillis < 0) {
                iMillis -= Integer.MIN_VALUE;
            }
            int[] iArr = this.green ? this.skin.npButtonGreen : this.skin.npButtonGold;
            int i3 = iArr[(iMillis / 80) % iArr.length];
            if (!isEnabled()) {
                engine.setTransparency(100);
            } else if (isMouseHovered()) {
                engine.setColor(Colors.LIGHT_LIGHT_GRAY);
            }
            int i4 = this.width;
            int i5 = this.height;
            if (isPressed()) {
                i3 = this.skin.npButtonDown;
            }
            drawNinePatch(i, i2, i4, i5, i3);
            engine.setColor(Colors.WHITE);
            drawChildren(i, i2 + (isPressed() ? 2 : 0));
            this.text.setColor(color);
            return;
        }
        super.draw(i, i2);
    }
}
