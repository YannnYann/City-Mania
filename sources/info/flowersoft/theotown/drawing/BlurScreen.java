package info.flowersoft.theotown.drawing;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.ShaderConfig;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.FrameBuffer;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;

/* JADX INFO: loaded from: classes4.dex */
public class BlurScreen {
    public int count;
    public final Engine engine;
    public final boolean filtering;
    public FrameBuffer framebuffer0;
    public FrameBuffer framebuffer1;
    public Image image;
    public final boolean instant;
    public Image oImage;
    public final int radius;

    public BlurScreen(Engine engine) {
        this(engine, Settings.useBlur ? 3 : 0, false, true);
    }

    public BlurScreen(Engine engine, int i, boolean z, boolean z2) {
        this.engine = engine;
        this.radius = i;
        this.instant = z;
        this.filtering = z2;
    }

    public void prepare() {
        int virtualWidth = this.engine.getVirtualWidth();
        int virtualHeight = this.engine.getVirtualHeight();
        this.framebuffer0 = FrameBuffer.createForScreen(virtualWidth, virtualHeight);
        this.framebuffer1 = FrameBuffer.createForScreen(virtualWidth, virtualHeight);
        Texture texture = this.framebuffer0.getTexture();
        Texture texture2 = this.framebuffer1.getTexture();
        if (this.filtering) {
            texture.setFiltering(9729, 9729);
            texture2.setFiltering(9729, 9729);
        } else {
            texture.setFiltering(9728, 9728);
            texture2.setFiltering(9728, 9728);
        }
        this.image = this.framebuffer0.getImage(virtualWidth, virtualHeight);
        this.oImage = this.framebuffer1.getImage(virtualWidth, virtualHeight);
    }

    public void release() {
        this.engine.releaseFramebuffer(this.framebuffer0);
        this.engine.releaseFramebuffer(this.framebuffer1);
    }

    public void iterate(int i) {
        for (int i2 = 0; i2 < Math.min(i, this.radius - this.count); i2++) {
            iterateSingleStep();
        }
    }

    public void iterate() {
        if (this.instant) {
            int i = this.count;
            int i2 = this.radius;
            if (i < i2) {
                iterate(i2);
                return;
            }
            return;
        }
        iterateSingleStep();
    }

    public boolean isValid() {
        return this.engine.isFrameBufferValid(this.framebuffer0) && this.image != null;
    }

    public boolean isFinished() {
        return this.count >= this.radius;
    }

    public final void iterateSingleStep() {
        if (this.count < this.radius) {
            ShaderConfig.UNCHANGED.apply(this.engine.getShader());
            int i = this.radius - this.count;
            this.engine.setFramebuffer(this.framebuffer1);
            this.engine.setAdditive(255);
            Engine engine = this.engine;
            Color color = Colors.BLACK;
            engine.clear(color);
            this.engine.setTransparency(101);
            this.engine.drawImage(this.image, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0);
            this.engine.setTransparency(77);
            float f = -i;
            this.engine.drawImage(this.image, f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0);
            float f2 = i;
            this.engine.drawImage(this.image, f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0);
            this.engine.setFramebuffer(this.framebuffer0);
            this.engine.clear(color);
            this.engine.setTransparency(101);
            this.engine.drawImage(this.oImage, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0);
            this.engine.setTransparency(77);
            this.engine.drawImage(this.oImage, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, 0);
            this.engine.drawImage(this.oImage, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f2, 0);
            this.engine.setTransparency(255);
            this.engine.removeFramebuffer();
            this.engine.setAdditive(0);
            this.count++;
            Settings.shaderConfig.apply(this.engine.getShader());
        }
    }

    public void beginFilling() {
        this.engine.setFramebuffer(this.framebuffer0);
    }

    public void endFilling() {
        if (this.engine.getFramebuffer() == this.framebuffer0) {
            this.engine.removeFramebuffer();
        }
    }

    public Image getImage() {
        return this.image;
    }
}
