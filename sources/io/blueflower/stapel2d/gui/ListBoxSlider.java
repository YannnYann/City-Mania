package io.blueflower.stapel2d.gui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Interpolation;
import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;

/* JADX INFO: loaded from: classes5.dex */
class ListBoxSlider extends Button {
    public Button button;
    public float visibility;
    public float visibilityTransformed;
    public float visibleWidth;

    public ListBoxSlider(Gadget gadget) {
        super(0, 0, 10, 0, gadget);
        this.visibleWidth = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.button = new Button(0, 0, 0, 0, this) { // from class: io.blueflower.stapel2d.gui.ListBoxSlider.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                float f = ((this.x + i) + this.width) - ListBoxSlider.this.visibleWidth;
                float f2 = this.y + i2;
                float f3 = ListBoxSlider.this.visibleWidth;
                engine.setColor(this.skin.cTextSecondary);
                engine.setTransparency(((int) (ListBoxSlider.this.visibilityTransformed * 80.0f)) + 175);
                Skin skin = this.skin;
                engine.drawNinePatch(skin.img, f, f2, f3, this.height, skin.npWhiteRectBordered);
                engine.setColor(this.skin.cBg);
                Skin skin2 = this.skin;
                engine.drawNinePatch(skin2.img, f + 1.0f, f2 + 1.0f, f3 - 2.0f, this.height - 2, skin2.npWhiteRect);
                engine.setTransparency(255);
            }
        };
        setLooseTPOnFocusLoss(false);
        this.button.setLooseTPOnFocusLoss(false);
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        Engine engine = this.skin.engine;
        float f = this.x + i + this.width;
        float f2 = this.visibleWidth;
        float f3 = f - f2;
        float f4 = this.y + i2;
        engine.setTransparency((int) (this.visibilityTransformed * 40.0f));
        engine.setColor(Colors.BLACK);
        Skin skin = this.skin;
        engine.drawNinePatch(skin.img, f3, f4, f2, this.height, skin.npWhiteRect);
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        drawChildren(i, i2);
    }

    public void update(ListBox listBox, int i, float f) {
        setShape((this.parent.getWidth() - 10) - this.parent.getPaddingLeft(), 0, 10, this.parent.getClientHeight());
        float deltaTime = Gdx.graphics.getDeltaTime();
        if (isMouseHovered() || this.button.isMouseHovered() || this.down || this.button.down) {
            this.visibility = Math.min(this.visibility + (deltaTime * 10.0f), 1.0f);
        } else {
            this.visibility = Math.max(this.visibility - (deltaTime * 2.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        float fApply = Interpolation.smooth.apply(this.visibility);
        this.visibilityTransformed = fApply;
        this.visibleWidth = (10.0f * fApply) + ((1.0f - fApply) * 4.0f);
        if (i <= this.parent.getClientHeight() || i <= 0) {
            setVisible(false);
            return;
        }
        setVisible(true);
        int clientHeight = (getClientHeight() * getClientHeight()) / i;
        this.button.setShape(0, ((-(getClientHeight() - clientHeight)) * Math.round(f)) / (i - getClientHeight()), this.width, clientHeight);
        Button button = this.button;
        if (button.down) {
            listBox.setShiftY(listBox.getShiftY() - (((button.tp.getYSpeed() * this.skin.engine.getHeightRatio()) / this.height) * i));
        } else if (this.down) {
            listBox.setShiftY(-(((((this.tp.getY() * this.skin.engine.getHeightRatio()) - getAbsoluteY()) - (clientHeight * 0.5f)) / (this.height - clientHeight)) * (i - this.parent.getClientHeight())));
        }
    }
}
