package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.MinimapRenderer;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.WinterManager;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.drawing.DynamicTextureSource;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.SensitiveGadget;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class Minimap extends SensitiveGadget {
    public final City city;
    public boolean done;
    public int drawCounter;
    public final ExecutorService executor;
    public final Image img;
    public final MinimapRenderer minimapRenderer;
    public final float[] rect;
    public final float[] tempUvs;
    public final Texture texture;
    public final DynamicTextureSource textureSource;
    public boolean winter;
    public boolean workerWorking;

    public Minimap(City city, int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.rect = new float[8];
        this.tempUvs = new float[4];
        this.city = city;
        int i5 = Settings.realMinimapResolution ? EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE : Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        int iMin = Math.min(city.getWidth(), i5);
        int iMin2 = Math.min(city.getHeight(), i5);
        int iMax = Math.max(iMin, iMin2);
        DynamicTextureSource dynamicTextureSource = new DynamicTextureSource(iMax, iMax);
        this.textureSource = dynamicTextureSource;
        Texture texture = new Texture(dynamicTextureSource);
        this.texture = texture;
        this.minimapRenderer = new MinimapRenderer(city, iMin, iMin2);
        this.executor = Executors.newSingleThreadExecutor();
        Image image = new Image(texture);
        this.img = image;
        image.setType(1);
        float f = iMax;
        image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, f, -iMax);
    }

    public final void prepareDrawing() {
        Engine engine = this.skin.engine;
        if (!this.workerWorking && this.done) {
            this.textureSource.setData(this.minimapRenderer.getBufferData(), this.minimapRenderer.getWidth(), this.minimapRenderer.getHeight());
            int uVStreamPos = this.img.getUVStreamPos(0);
            float[] uVStream = this.img.getUVStream();
            uVStream[uVStreamPos] = 0.0f;
            uVStream[uVStreamPos + 1] = this.minimapRenderer.getHeight() / this.texture.getHeight();
            uVStream[uVStreamPos + 2] = this.minimapRenderer.getWidth() / this.texture.getWidth();
            uVStream[uVStreamPos + 3] = 0.0f;
            engine.loadTexture(this.texture);
            this.done = false;
        }
        if (this.drawCounter <= 0 && !this.workerWorking) {
            this.workerWorking = true;
            this.winter = WinterManager.getInstance().isWinter();
            this.executor.submit(new Runnable() { // from class: info.flowersoft.theotown.ui.Minimap$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.render();
                }
            });
            this.drawCounter = 64;
        }
        this.drawCounter--;
    }

    public final void render() {
        this.minimapRenderer.render(this.winter);
        this.workerWorking = false;
        this.done = true;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public CursorType getCursor() {
        return CursorType.Hand;
    }

    public Image getImage() {
        prepareDrawing();
        return this.img;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        draw(this.x + i, this.y + i2, this.width, this.height);
        drawChildren(i, i2);
    }

    public void draw(int i, int i2, int i3, int i4) {
        Engine engine = this.skin.engine;
        prepareDrawing();
        float f = i3;
        float f2 = i4;
        Drawing.getInstance().drawRounded(engine, this.img, this.x + i, this.y + i2, f, f2, 0, 4.0f);
        float[] uVCoords = Resources.IMAGE_WORLD.getUVCoords(Resources.FRAME_RECT, this.tempUvs);
        IsoConverter isoConverter = this.city.getIsoConverter();
        float width = isoConverter.getView().getWidth();
        float height = isoConverter.getView().getHeight();
        float rotatedWidth = f / this.city.getRotatedWidth();
        float rotatedHeight = f2 / this.city.getRotatedHeight();
        this.rect[0] = isoConverter.absToIsoX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) * rotatedWidth;
        this.rect[1] = f2 - (isoConverter.absToIsoY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) * rotatedHeight);
        this.rect[2] = isoConverter.absToIsoX(width, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) * rotatedWidth;
        this.rect[3] = f2 - (isoConverter.absToIsoY(width, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) * rotatedHeight);
        this.rect[4] = isoConverter.absToIsoX(width, height) * rotatedWidth;
        this.rect[5] = f2 - (isoConverter.absToIsoY(width, height) * rotatedHeight);
        this.rect[6] = rotatedWidth * isoConverter.absToIsoX(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, height);
        this.rect[7] = f2 - (rotatedHeight * isoConverter.absToIsoY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, height));
        float f3 = i;
        float f4 = i2;
        engine.setClipRect(f3, f4, f, f2);
        engine.setTransparency(50);
        Texture texture = Resources.TEXTURE_WORLD;
        float[] fArr = this.rect;
        float f5 = f3 + fArr[0];
        float f6 = f4 + fArr[1];
        float f7 = f3 + fArr[4];
        float f8 = f4 + fArr[5];
        float f9 = fArr[2] + f3;
        float f10 = f4 + fArr[3];
        float f11 = uVCoords[0];
        float f12 = uVCoords[1];
        float f13 = uVCoords[2];
        engine.drawTextureTriangle(texture, f5, f6, f7, f8, f9, f10, f11, f12, f13, uVCoords[3], f13, f12, 1);
        Texture texture2 = Resources.TEXTURE_WORLD;
        float[] fArr2 = this.rect;
        float f14 = f3 + fArr2[0];
        float f15 = f4 + fArr2[1];
        float f16 = f3 + fArr2[6];
        float f17 = f4 + fArr2[7];
        float f18 = fArr2[4] + f3;
        float f19 = f4 + fArr2[5];
        float f20 = uVCoords[0];
        float f21 = uVCoords[1];
        float f22 = uVCoords[3];
        engine.drawTextureTriangle(texture2, f14, f15, f16, f17, f18, f19, f20, f21, f20, f22, uVCoords[2], f22, 1);
        Drawing drawing = Drawing.getInstance();
        float[] fArr3 = this.rect;
        drawing.drawLine(fArr3[0] + f3, fArr3[1] + f4, fArr3[2] + f3, f4 + fArr3[3], 1.0f, engine);
        Drawing drawing2 = Drawing.getInstance();
        float[] fArr4 = this.rect;
        drawing2.drawLine(fArr4[2] + f3, fArr4[3] + f4, fArr4[4] + f3, f4 + fArr4[5], 1.0f, engine);
        Drawing drawing3 = Drawing.getInstance();
        float[] fArr5 = this.rect;
        drawing3.drawLine(fArr5[6] + f3, fArr5[7] + f4, fArr5[0] + f3, f4 + fArr5[1], 1.0f, engine);
        engine.setTransparency(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        Drawing drawing4 = Drawing.getInstance();
        float[] fArr6 = this.rect;
        drawing4.drawLine(fArr6[4] + f3, fArr6[5] + f4, fArr6[6] + f3, f4 + fArr6[7], 1.0f, engine);
        engine.setTransparency(255);
        engine.resetClipping();
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
        if (this.tp == null) {
            return;
        }
        int iRound = Math.round((this.city.getRotatedWidth() * (this.tp.getX() - super.rect.getX())) / super.rect.getWidth());
        int iRound2 = Math.round((this.city.getRotatedHeight() * (((-this.tp.getY()) + super.rect.getY()) + super.rect.getHeight())) / super.rect.getHeight());
        int iRotatedToOriginalX = this.city.rotatedToOriginalX(iRound, iRound2);
        int iRotatedToOriginalY = this.city.rotatedToOriginalY(iRound, iRound2);
        City city = this.city;
        city.focus(iRotatedToOriginalX, iRotatedToOriginalY, city.getScale());
        flush();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setVisible(boolean z) {
        super.setVisible(z);
        if (z) {
            flush();
        }
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void flush() {
        this.drawCounter = 0;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void free() {
        this.skin.engine.releaseTexture(this.texture);
        this.executor.shutdown();
        super.free();
    }
}
