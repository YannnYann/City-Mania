package io.blueflower.stapel2d.gui;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.ShadowedLabel;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;

/* JADX INFO: loaded from: classes5.dex */
public class Button extends SensitiveGadget {
    public float alpha;
    public boolean down;
    public int frameDefault;
    public int frameDown;
    public int frameMarked;
    public Icon icon;
    public boolean marked;
    public ShadowedLabel text;

    public Button(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.alpha = 1.0f;
        setLooseTPOnFocusLoss(true);
        this.down = false;
        ShadowedLabel shadowedLabel = new ShadowedLabel(null, 0, 0, 0, 0, this);
        this.text = shadowedLabel;
        shadowedLabel.fillParent = true;
        shadowedLabel.setShadow(false);
        this.text.setAlignment(0.5f, 0.5f);
        Icon icon = new Icon(-1, 0, 0, 0, 0, this);
        this.icon = icon;
        icon.fillParent = true;
        icon.setAlignment(0.5f, 0.5f);
        Skin skin = this.skin;
        this.frameDefault = skin.npButton;
        this.frameDown = skin.npButtonDown;
        this.frameMarked = skin.npButtonMarked;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public CursorType getCursor() {
        return CursorType.Normal;
    }

    public void setFrameDefault(int i) {
        this.frameDefault = i;
    }

    public void setFont(Font font) {
        getTextLabel().setFont(font);
    }

    public Font getFont() {
        return getTextLabel().font;
    }

    public void setFrameDown(int i) {
        this.frameDown = i;
    }

    public void setFrameMarked(int i) {
        this.frameMarked = i;
    }

    public String getText() {
        return this.text.getText();
    }

    public void setText(String str) {
        this.text.setText(str);
    }

    public Label getTextLabel() {
        return this.text;
    }

    public int getIcon() {
        return this.icon.getFrame();
    }

    public void setIcon(int i) {
        this.icon.setFrame(i);
    }

    public Icon getIconGadget() {
        return this.icon;
    }

    public boolean isMarked() {
        return this.marked;
    }

    public void setMarked(boolean z) {
        this.marked = z;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void onPress() {
        super.onPress();
        if (isEnabled()) {
            this.down = true;
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void onRelease() {
        super.onRelease();
        this.down = false;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        super.onClick();
        this.master.informAboutClickOn(this);
    }

    public boolean isPressed() {
        return this.down;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        drawButton(i, i2);
        drawChildren(i, i2);
    }

    public void setAlpha(float f) {
        this.alpha = f;
    }

    public void drawButton(int i, int i2) {
        Engine engine = this.skin.engine;
        if (!isEnabled()) {
            engine.setTransparency(Math.round(this.alpha * 100.0f));
        } else {
            engine.setTransparency(Math.round(this.alpha * 255.0f));
            if (isMouseHovered()) {
                engine.setColor(Colors.LIGHT_LIGHT_GRAY);
            }
        }
        if (isMarked() && isEnabled()) {
            if (isPressed()) {
                drawNinePatch(i, i2, this.frameDown);
            } else {
                drawNinePatch(i, i2, this.frameDefault);
                engine.setTransparency(Math.round(this.alpha * 255.0f * ((((float) Math.sin(((TimeUtils.millis() % 1440) / 720.0f) * 3.1415927f)) * 0.5f) + 0.5f)));
                engine.setColor(this.skin.cTextAccent);
                drawNinePatch(i, i2, this.frameMarked);
                engine.reset();
            }
        } else {
            drawNinePatch(i, i2, isPressed() ? this.frameDown : this.frameDefault);
        }
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
    }

    public void click() {
        performOnClick();
    }
}
