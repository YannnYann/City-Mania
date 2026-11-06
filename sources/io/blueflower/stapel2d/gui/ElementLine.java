package io.blueflower.stapel2d.gui;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public class ElementLine extends Gadget {
    public LineLayout firstPart;
    public LineLayout secondPart;
    public LineLayout thirdPart;

    public ElementLine(int i, int i2, int i3, int i4, int i5, int i6, Gadget gadget) {
        super(i3, i4, i5, i6, gadget);
        this.firstPart = new LineLayout(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i, i2, this);
        this.secondPart = new LineLayout(0.5f, i, i2, this);
        this.thirdPart = new LineLayout(1.0f, i, i2, this);
    }

    public void setOmitInvisibleChildren(boolean z) {
        this.firstPart.setOmitInvisibleChildren(z);
        this.secondPart.setOmitInvisibleChildren(z);
        this.thirdPart.setOmitInvisibleChildren(z);
    }

    public LineLayout getFirstPart() {
        return this.firstPart;
    }

    public LineLayout getSecondPart() {
        return this.secondPart;
    }

    public LineLayout getThirdPart() {
        return this.thirdPart;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        drawChildren(i, i2);
    }

    public void setFloating(float f) {
        this.firstPart.setFloating(f);
        this.secondPart.setFloating(f);
        this.thirdPart.setFloating(f);
    }
}
