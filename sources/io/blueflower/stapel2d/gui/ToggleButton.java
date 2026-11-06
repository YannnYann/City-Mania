package io.blueflower.stapel2d.gui;

/* JADX INFO: loaded from: classes5.dex */
public class ToggleButton extends Button {
    public boolean over;

    public ToggleButton(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.over = false;
    }

    @Override // io.blueflower.stapel2d.gui.Button
    public boolean isPressed() {
        return this.down;
    }

    public boolean isOver() {
        return this.over;
    }

    public void setPressed(boolean z) {
        this.down = z;
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        boolean z = this.down;
        this.down = isPressed() ^ this.over;
        super.draw(i, i2);
        this.down = z;
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onPress() {
        this.over = true;
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onRelease() {
        this.over = false;
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        super.onClick();
        setPressed(!isPressed());
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void reset() {
        setPressed(false);
        super.reset();
    }
}
