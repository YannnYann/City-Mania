package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;

/* JADX INFO: loaded from: classes4.dex */
public class ProgressBar extends Gadget {
    public Color color;
    public float progress;

    public ProgressBar(int i, int i2, int i3, Gadget gadget) {
        this(i, i2, i3, 10, gadget);
    }

    public ProgressBar(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        setColor(this.skin.cTextAccent);
    }

    public float getProgress() {
        return this.progress;
    }

    public void setProgress(float f) {
        this.progress = Math.max(Math.min(f, 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public Color getColor() {
        return this.color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        ProgressBar progressBar;
        int i3;
        int i4;
        Engine engine = this.skin.engine;
        engine.setColor(this.color);
        float f = this.progress;
        if (f > 0.001f) {
            progressBar = this;
            i3 = i;
            i4 = i2;
            progressBar.drawNinePatch(i3, i4, Math.round(((this.width - 10) * f) + 10.0f), this.height, this.skin.npProgressBarFilled);
        } else {
            progressBar = this;
            i3 = i;
            i4 = i2;
        }
        drawNinePatch(i3, i4, progressBar.skin.npProgressBar);
        engine.setColor(Colors.WHITE);
    }
}
