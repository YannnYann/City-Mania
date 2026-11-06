package info.flowersoft.theotown.ui;

import com.badlogic.gdx.math.MathUtils;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.util.Property;

/* JADX INFO: loaded from: classes4.dex */
public class DragButton extends Panel {
    public Button drag;
    public boolean dragging;
    public float max;
    public float min;
    public float rawValue;
    public float step;
    public Property<Float> valueProperty;

    public DragButton(int i, int i2, int i3, int i4, Gadget gadget, final Property<Float> property, float f, float f2, float f3) {
        super(i, i2, i3, i4, gadget);
        this.valueProperty = property;
        this.min = f;
        this.max = f2;
        this.step = f3;
        Button button = new Button(0, 0, 16, getClientHeight(), this) { // from class: info.flowersoft.theotown.ui.DragButton.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                if (this.tp != null) {
                    DragButton dragButton = DragButton.this;
                    if (!dragButton.dragging) {
                        dragButton.rawValue = ((Float) property.get()).floatValue();
                        DragButton.this.dragging = true;
                    }
                    float xSpeed = this.tp.getXSpeed() * this.master.getWidthRatio();
                    DragButton dragButton2 = DragButton.this;
                    DragButton dragButton3 = DragButton.this;
                    dragButton2.rawValue = dragButton2.rawValue + ((xSpeed / (this.parent.getClientWidth() - this.width)) * (dragButton3.max - dragButton3.min));
                    property.set(Float.valueOf(dragButton3.limit(dragButton3.rawValue)));
                } else {
                    DragButton.this.rawValue = ((Float) property.get()).floatValue();
                    DragButton.this.dragging = false;
                }
                Button button2 = DragButton.this.drag;
                float fFloatValue = ((Float) property.get()).floatValue();
                DragButton dragButton4 = DragButton.this;
                float f4 = dragButton4.min;
                button2.setX(Math.round(((fFloatValue - f4) / (dragButton4.max - f4)) * (this.parent.getClientWidth() - getWidth())));
                layout();
            }
        };
        this.drag = button;
        button.setLooseTPOnFocusLoss(false);
    }

    public final float limit(float f) {
        if (this.step > 1.0E-6f) {
            float fRound = Math.round((f - this.min) / r0) * this.step;
            float f2 = this.min;
            return MathUtils.clamp(fRound + f2, f2, this.max);
        }
        return MathUtils.clamp(f, this.min, this.max);
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        TouchPoint touchPoint = this.tp;
        if (touchPoint == null) {
            return;
        }
        float x = (((touchPoint.getX() * this.master.getWidthRatio()) - getAbsoluteX()) - (this.drag.getWidth() / 2.0f)) / (getClientWidth() - this.drag.getWidth());
        float f = this.max;
        float f2 = this.min;
        float fClamp = MathUtils.clamp(x * (f - f2), f2, f);
        this.rawValue = fClamp;
        this.valueProperty.set(Float.valueOf(limit(fClamp)));
    }

    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        drawBackground(this.skin.engine, this.x + i, this.y + i2, this.width, this.height);
        drawChildren(i, i2);
    }

    public void drawBackground(Engine engine, int i, int i2, int i3, int i4) {
        Skin skin = this.skin;
        engine.drawNinePatch(skin.img, i, i2, i3, i4, skin.npListBox);
    }
}
