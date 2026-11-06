package info.flowersoft.theotown.city;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Disposable;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.ShaderConfig;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.FrameBuffer;
import io.blueflower.stapel2d.drawing.Shader;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.ScreenRect;

/* JADX INFO: loaded from: classes4.dex */
public class SmoothCityZoomDrawer implements Disposable {
    public static final double LOG2 = Math.log(2.0d);
    public final Engine engine;
    public FrameBuffer frameBuffer;
    public int smoothness;
    public TransformedCityDrawer transformedCityDrawer;

    public SmoothCityZoomDrawer(Stapel2DGameContext stapel2DGameContext) {
        this.engine = stapel2DGameContext.getEngine();
    }

    public final void clipMovement(IsoConverter isoConverter) {
        PreviewCreator.clipMovement(this.engine, isoConverter);
    }

    public void draw(City city, boolean z) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        Texture texture;
        TransformedCityDrawer transformedCityDrawer;
        float scale = city.getScale();
        double d = scale;
        double dLog = Math.log(d) / LOG2;
        double dRound = (int) Math.round(dLog);
        Math.abs(dLog - dRound);
        IsoConverter isoConverter = city.getIsoConverter();
        float absShiftX = isoConverter.getAbsShiftX();
        float absShiftY = isoConverter.getAbsShiftY();
        int i = Settings.smoothZoom;
        if (i == 0) {
            city.setScale((float) Math.pow(2.0d, dRound));
            clipMovement(isoConverter);
            this.engine.clear(80, 80, 80, 255);
            city.draw(this.engine, z);
        } else if (i == 3) {
            clipMovement(isoConverter);
            this.engine.clear(80, 80, 80, 255);
            city.draw(this.engine, z);
        } else {
            ScreenRect view = city.getView();
            float x = view.getX();
            float y = view.getY();
            float width = view.getWidth();
            float height = view.getHeight();
            double dPow = (float) Math.pow(2.0d, (int) Math.floor(dLog));
            double d2 = dPow / d;
            f = absShiftX;
            city.setScale((float) dPow);
            city.setTargetScale(scale);
            clipMovement(isoConverter);
            view.setX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            view.setY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            view.setWidth((float) (((double) width) * d2));
            view.setHeight((float) (((double) height) * d2));
            FrameBuffer framebuffer = this.engine.getFramebuffer();
            Shader shader = this.engine.getShader();
            try {
                ensureInitiated();
                this.engine.setFramebuffer(this.frameBuffer);
                this.engine.clear(80, 80, 80, 255);
                city.draw(this.engine, z);
                this.engine.setFramebuffer(framebuffer);
                Engine engine = this.engine;
                engine.setShader(engine.getDefaultShader());
                ShaderConfig.UNCHANGED.apply(this.engine.getShader());
                this.engine.reset();
                this.engine.setBlending(1);
                texture = this.frameBuffer.getTexture();
                prepareTransformedCityDrawer();
                transformedCityDrawer = this.transformedCityDrawer;
            } catch (Throwable th) {
                th = th;
                f2 = height;
            }
            if (transformedCityDrawer != null) {
                float f6 = (float) d2;
                try {
                    transformedCityDrawer.draw(this.engine, texture, x, y, width, height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, r11.getHeight() / texture.getHeight(), ((f6 * width) / this.engine.getWidthRatio()) / texture.getWidth(), (this.engine.getHeight() - ((f6 * height) / this.engine.getHeightRatio())) / texture.getHeight());
                    f2 = height;
                    f3 = x;
                    f4 = y;
                    try {
                        this.engine.setBlending(0);
                    } catch (Throwable th2) {
                        th = th2;
                        th.printStackTrace();
                        Settings.smoothZoom = 0;
                        releaseFrameBuffer();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    x = x;
                    y = y;
                    width = width;
                    f2 = height;
                    f3 = x;
                    f4 = y;
                    th.printStackTrace();
                    Settings.smoothZoom = 0;
                    releaseFrameBuffer();
                    this.engine.setFramebuffer(framebuffer);
                    this.engine.setShader(shader);
                    Settings.shaderConfig.apply(this.engine.getShader());
                    view.setX(f3);
                    view.setY(f4);
                    view.setWidth(width);
                    view.setHeight(f2);
                    city.setScale(scale);
                    city.resetTargetScale();
                    f5 = absShiftY;
                    isoConverter.setAbsShift(f, f5);
                }
                this.engine.setFramebuffer(framebuffer);
                this.engine.setShader(shader);
                Settings.shaderConfig.apply(this.engine.getShader());
                view.setX(f3);
                view.setY(f4);
                view.setWidth(width);
                view.setHeight(f2);
                city.setScale(scale);
                city.resetTargetScale();
                f5 = absShiftY;
            } else {
                f2 = height;
                try {
                    float f7 = (float) d2;
                    this.engine.drawTextureRect(texture, x, y, x + width, y + f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, r0.getHeight() / texture.getHeight(), ((f7 * width) / this.engine.getWidthRatio()) / texture.getWidth(), (this.engine.getHeight() - ((f7 * f2) / this.engine.getHeightRatio())) / texture.getHeight(), 0);
                    f3 = x;
                    f4 = y;
                    this.engine.setBlending(0);
                } catch (Throwable th4) {
                    th = th4;
                    f3 = x;
                    f4 = y;
                    th.printStackTrace();
                    Settings.smoothZoom = 0;
                    releaseFrameBuffer();
                    this.engine.setFramebuffer(framebuffer);
                    this.engine.setShader(shader);
                    Settings.shaderConfig.apply(this.engine.getShader());
                    view.setX(f3);
                    view.setY(f4);
                    view.setWidth(width);
                    view.setHeight(f2);
                    city.setScale(scale);
                    city.resetTargetScale();
                    f5 = absShiftY;
                    isoConverter.setAbsShift(f, f5);
                }
                this.engine.setFramebuffer(framebuffer);
                this.engine.setShader(shader);
                Settings.shaderConfig.apply(this.engine.getShader());
                view.setX(f3);
                view.setY(f4);
                view.setWidth(width);
                view.setHeight(f2);
                city.setScale(scale);
                city.resetTargetScale();
                f5 = absShiftY;
            }
            isoConverter.setAbsShift(f, f5);
        }
        f = absShiftX;
        f5 = absShiftY;
        isoConverter.setAbsShift(f, f5);
    }

    public final void prepareTransformedCityDrawer() {
        if (this.transformedCityDrawer != null) {
            return;
        }
        this.transformedCityDrawer = new TransformedCityDrawer(this.engine);
    }

    public final void ensureInitiated() {
        if (this.frameBuffer != null && Settings.smoothZoom != this.smoothness) {
            releaseFrameBuffer();
        }
        if (this.frameBuffer == null) {
            FrameBuffer frameBufferCreateForScreen = FrameBuffer.createForScreen(this.engine.getWidth(), this.engine.getHeight());
            this.frameBuffer = frameBufferCreateForScreen;
            Texture texture = frameBufferCreateForScreen.getTexture();
            int i = Settings.smoothZoom;
            if (i == 1) {
                texture.setFiltering(9728, 9728);
            } else if (i == 2) {
                texture.setFiltering(9729, 9729);
            }
            this.smoothness = Settings.smoothZoom;
        }
    }

    public final void releaseFrameBuffer() {
        FrameBuffer frameBuffer = this.frameBuffer;
        if (frameBuffer != null) {
            this.engine.releaseFramebuffer(frameBuffer);
            this.frameBuffer = null;
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        releaseFrameBuffer();
        TransformedCityDrawer transformedCityDrawer = this.transformedCityDrawer;
        if (transformedCityDrawer != null) {
            transformedCityDrawer.dispose();
            this.transformedCityDrawer = null;
        }
    }

    public Vector2 transformToScreen(City city, Vector2 vector2) {
        if (!usesTransformedCityDrawer()) {
            return vector2;
        }
        return this.transformedCityDrawer.transformToScreen(city.getView(), vector2);
    }

    public Vector2 transformFromScreen(City city, Vector2 vector2) {
        if (!usesTransformedCityDrawer()) {
            return vector2;
        }
        return this.transformedCityDrawer.transformFromScreen(city.getView(), vector2);
    }

    public final boolean usesTransformedCityDrawer() {
        int i;
        return (this.transformedCityDrawer == null || (i = Settings.smoothZoom) == 0 || i == 3) ? false : true;
    }
}
