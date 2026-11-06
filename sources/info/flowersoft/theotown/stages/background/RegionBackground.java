package info.flowersoft.theotown.stages.background;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.PixmapUtil;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.StaticBitmapTextureSource;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.MathUtil;
import io.blueflower.stapel2d.util.OpenSimplexNoise;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RegionBackground.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RegionBackground implements Disposable {
    public final Lazy bgImage$delegate;
    public final Stapel2DGameContext context;
    public final OpenSimplexNoise noise;
    public final List<Pixmap> pixmaps;
    public final Lazy starsImage$delegate;
    public final List<Texture> textures;

    public RegionBackground(Stapel2DGameContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.textures = new ArrayList();
        this.pixmaps = new ArrayList();
        this.bgImage$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: info.flowersoft.theotown.stages.background.RegionBackground$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RegionBackground.bgImage_delegate$lambda$0(this.f$0);
            }
        });
        this.starsImage$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: info.flowersoft.theotown.stages.background.RegionBackground$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RegionBackground.starsImage_delegate$lambda$0(this.f$0);
            }
        });
        this.noise = new OpenSimplexNoise(124L);
    }

    public static final Image bgImage_delegate$lambda$0(RegionBackground regionBackground) {
        return regionBackground.loadImage("bg_region00.jpg", 9729);
    }

    public final Image getBgImage() {
        return (Image) this.bgImage$delegate.getValue();
    }

    public static final Image starsImage_delegate$lambda$0(RegionBackground regionBackground) {
        return regionBackground.loadImage("bg_region01.jpg", 9729);
    }

    public final Image getStarsImage() {
        return (Image) this.starsImage$delegate.getValue();
    }

    public final void drawTiled(Image image, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12) {
        RegionBackground regionBackground = this;
        int i3 = i;
        int i4 = i2;
        float f13 = f2;
        float f14 = f3;
        Engine engine = regionBackground.context.getEngine();
        float virtualWidth = engine.getVirtualWidth();
        float virtualHeight = engine.getVirtualHeight();
        float f15 = virtualWidth / virtualHeight;
        Texture texture = image.getTexture(0);
        float fAbs = (Math.abs((TimeUtils.millis() % ((long) 2000000)) - ((long) 1000000)) / 1000.0f) * f5;
        float f16 = f15 * 0.5f;
        float fClamp01 = ((MathUtil.clamp01(0.5f - f16) - 0.5f) / f6) + 0.5f;
        float f17 = 0.5f / f15;
        float fClamp012 = ((MathUtil.clamp01(0.5f - f17) - 0.5f) / f6) + 0.5f;
        float fClamp013 = ((MathUtil.clamp01(f16 + 0.5f) - 0.5f) / f6) + 0.5f;
        float f18 = f6 - 1.0f;
        float f19 = f7 * 0.5f * f18;
        float f20 = 0.5f * f8 * f18;
        float f21 = fClamp012 + f20;
        float fClamp014 = ((MathUtil.clamp01(f17 + 0.5f) - 0.5f) / f6) + 0.5f + f20;
        float f22 = (fClamp01 + f19) * f9;
        float f23 = f21 * f10;
        float f24 = (fClamp013 + f19) * f9;
        float f25 = fClamp014 * f10;
        int i5 = 0;
        while (i5 < i4) {
            float f26 = i5;
            Engine engine2 = engine;
            float f27 = 0.0f;
            float f28 = i4;
            float f29 = (f26 + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) / f28;
            float f30 = (f26 + 1.0f) / f28;
            int i6 = 0;
            while (i6 < i3) {
                Texture texture2 = texture;
                float f31 = i6;
                int i7 = i6;
                float f32 = i3;
                float f33 = (f31 + f27) / f32;
                float f34 = (f31 + 1.0f) / f32;
                float f35 = f27;
                float fLerp = MathUtil.lerp(f35, virtualWidth, f33);
                float fLerp2 = MathUtil.lerp(f35, virtualHeight, f29);
                float fLerp3 = MathUtil.lerp(f35, virtualWidth, f34);
                float fLerp4 = MathUtil.lerp(f35, virtualHeight, f30);
                float fLerp5 = MathUtil.lerp(f22, f24, f33);
                Engine engine3 = engine2;
                float fLerp6 = MathUtil.lerp(f23, f25, f29);
                float fLerp7 = MathUtil.lerp(f22, f24, f34);
                float fLerp8 = MathUtil.lerp(f23, f25, f30);
                float f36 = f33 * f;
                float f37 = 7;
                float f38 = f36 + f37;
                float f39 = f * f29;
                float f40 = f29;
                float f41 = 31;
                float f42 = f39 + f41;
                float fLerp9 = MathUtil.lerp(f13, f14, regionBackground.noise.eval(f38, f42, fAbs));
                float f43 = virtualWidth;
                float f44 = f * f30;
                float f45 = f30;
                float f46 = f44 + f41;
                float fLerp10 = MathUtil.lerp(f13, f14, regionBackground.noise.eval(f38, f46, fAbs));
                float f47 = f34 * f;
                float f48 = f47 + f37;
                float fLerp11 = MathUtil.lerp(f13, f14, regionBackground.noise.eval(f48, f46, fAbs));
                float fLerp12 = MathUtil.lerp(f13, f14, regionBackground.noise.eval(f48, f42, fAbs));
                float f49 = 37;
                float f50 = f36 + f49;
                float f51 = 73;
                float f52 = f39 + f51;
                float fEval = (regionBackground.noise.eval(f50, f52, fAbs) * f11) + f12;
                float f53 = f44 + f51;
                float fEval2 = (regionBackground.noise.eval(f50, f53, fAbs) * f11) + f12;
                float f54 = f47 + f49;
                float fEval3 = (regionBackground.noise.eval(f54, f53, fAbs) * f11) + f12;
                float fEval4 = (regionBackground.noise.eval(f54, f52, fAbs) * f11) + f12;
                engine3.drawTextureRect(texture2, fLerp, fLerp2, fLerp, fLerp4, fLerp3, fLerp4, fLerp3, fLerp2, fLerp5, fLerp6, fLerp5, fLerp8, fLerp7, fLerp8, fLerp7, fLerp6, regionBackground.getColor(1.0f - fEval, 1.0f, fEval + 1.0f, fLerp9, f4), getColor(1.0f - fEval2, 1.0f, fEval2 + 1.0f, fLerp10, f4), getColor(1.0f - fEval3, 1.0f, fEval3 + 1.0f, fLerp11, f4), getColor(1.0f - fEval4, 1.0f, fEval4 + 1.0f, fLerp12, f4), 1);
                engine2 = engine3;
                i6 = i7 + 1;
                i3 = i;
                f25 = f25;
                f27 = 0.0f;
                f24 = f24;
                f23 = f23;
                texture = texture2;
                i5 = i5;
                f29 = f40;
                virtualWidth = f43;
                f22 = f22;
                f30 = f45;
                fAbs = fAbs;
                f13 = f2;
                f14 = f3;
                virtualHeight = virtualHeight;
                regionBackground = this;
            }
            i5++;
            f13 = f2;
            engine = engine2;
            virtualWidth = virtualWidth;
            i3 = i;
            i4 = i2;
            f14 = f3;
            virtualHeight = virtualHeight;
            regionBackground = this;
        }
    }

    public final float getColor(float f, float f2, float f3, float f4, float f5) {
        int iClamp = MathUtils.clamp((int) (f * 255.0f * f4), 0, 255);
        int iClamp2 = MathUtils.clamp((int) (f2 * 255.0f * f4), 0, 255);
        int iClamp3 = MathUtils.clamp((int) (f3 * 255.0f * f4), 0, 255);
        int iClamp4 = MathUtils.clamp((int) ((1.0f - f5) * f4 * 255), 0, 255);
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat(iClamp | (iClamp2 << 8) | (iClamp3 << 16) | (iClamp4 << 24));
    }

    public final void draw(float f, float f2, float f3) {
        Engine engine = this.context.getEngine();
        engine.reset();
        float f4 = -f;
        float f5 = -f2;
        drawTiled(getBgImage(), 8, 8, 8.0f, 0.5f, 1.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f, 1.01f, f4, f5, 1.0f, 1.0f, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        if (f3 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float f6 = f3 * 0.5f;
            drawTiled(getStarsImage(), 8, 8, 8.0f, f6, f3 * 1.0f, 1.0f, 0.4f, 1.02f, f4, f5, 1.0f, 1.0f, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            drawTiled(getStarsImage(), 8, 8, 8.0f, f6, f3 * 1.2f, 1.0f, 0.8f, 1.03f, f4, f5, -1.0f, -1.0f, 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        engine.flush();
        engine.reset();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Iterator<T> it = this.textures.iterator();
        while (it.hasNext()) {
            this.context.getEngine().releaseTexture((Texture) it.next());
        }
        this.textures.clear();
        Iterator<T> it2 = this.pixmaps.iterator();
        while (it2.hasNext()) {
            ((Pixmap) it2.next()).dispose();
        }
        this.pixmaps.clear();
    }

    public final Image loadImage(String str, int i) {
        String strBin2hex;
        byte[] bArrDigest;
        Files files = Gdx.files;
        String str2 = str + ":ae6bb9dcccb3ee65a2a5e1964c8ca37b";
        try {
            Charset charsetForName = Charset.forName("UTF-8");
            Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
            byte[] bytes = str2.getBytes(charsetForName);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            try {
                bArrDigest = MessageDigest.getInstance("md5").digest(bytes);
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                bArrDigest = new byte[0];
            }
            strBin2hex = Hex.bin2hex(bArrDigest);
            Intrinsics.checkNotNullExpressionValue(strBin2hex, "bin2hex(...)");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            strBin2hex = "";
        }
        Pixmap pixmapLoadPAPixmap = PixmapUtil.loadPAPixmap(files.internal(strBin2hex), 4);
        Texture texture = new Texture(new StaticBitmapTextureSource(pixmapLoadPAPixmap, false));
        texture.setFiltering(i, i);
        this.textures.add(texture);
        List<Pixmap> list = this.pixmaps;
        Intrinsics.checkNotNull(pixmapLoadPAPixmap);
        list.add(pixmapLoadPAPixmap);
        Image imageCreateSingleFrame = Image.createSingleFrame(texture);
        Intrinsics.checkNotNullExpressionValue(imageCreateSingleFrame, "createSingleFrame(...)");
        return imageCreateSingleFrame;
    }
}
