package info.flowersoft.theotown.city;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.LODController;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.ShaderConfig;
import info.flowersoft.theotown.resources.ShaderRepository;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.util.StopWatch;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Shader;
import io.blueflower.stapel2d.util.ScreenRect;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class PreviewCreator {
    public static final JSONObject config = Resources.getSpecificConfig("preview creator");

    public interface Drawable {
        void begin(float f, int i, int i2);

        void draw(Engine engine, int i, int i2, int i3, int i4);

        void end();

        int getHeight();

        int getWidth();

        boolean hideBackground();
    }

    public interface SteppedTask<T> {
        T getResult();

        int remainingSteps();

        void run();
    }

    public static void clipMovement(Engine engine, IsoConverter isoConverter) {
        float width = 1.0f / (isoConverter.getView().getWidth() / engine.getWidth());
        float absScaleX = isoConverter.getAbsScaleX();
        isoConverter.setAbsShift((((((float) Math.floor(((isoConverter.getAbsShiftX() * absScaleX) + r1) * width)) / width) - isoConverter.halfWidth()) / absScaleX) + 0.1f, (((((float) Math.floor(((isoConverter.getAbsShiftY() * absScaleX) + r2) * width)) / width) - isoConverter.halfHeight()) / absScaleX) + 0.1f);
    }

    public static void generateMiniPreview(CityKeeper cityKeeper) {
        boolean zIsWinter = WinterManager.getInstance().isWinter();
        WinterManager.getInstance().setWinter(false);
        boolean z = Settings.hideUI;
        Settings.hideUI = true;
        Engine engine = Resources.skin.engine;
        Shader shader = engine.getShader();
        Shader shaderBuild = ShaderRepository.getInstance().getShader(0, null).build();
        engine.loadShader(shaderBuild);
        ShaderConfig.DEFAULT.apply(shaderBuild);
        engine.setShader(shaderBuild);
        City city = cityKeeper.getCity();
        IsoConverter isoConverter = city.getIsoConverter();
        int rotation = city.getRotation();
        float absShiftX = isoConverter.getAbsShiftX();
        float absShiftY = isoConverter.getAbsShiftY();
        city.setRotation(0);
        Tool tool = (Tool) city.getComponent(13);
        city.applyComponent(city.getDefaultTool());
        try {
            Pixmap pixmap = (Pixmap) evaluateSteppedTask(generate(city, Math.min(0.125f, (Settings.highResolutionCityPreview ? 4096 : 1024) / (((city.getWidth() + city.getHeight()) * 32) * 0.5f)), false, true, false));
            if (pixmap != null) {
                Pixmap pixmap2 = new Pixmap(pixmap.getWidth() / 2, pixmap.getHeight() / 2, Pixmap.Format.RGBA8888);
                pixmap2.setBlending(Pixmap.Blending.None);
                pixmap2.drawPixmap(pixmap, 0, 0, pixmap.getWidth(), pixmap.getHeight(), 0, 0, pixmap2.getWidth(), pixmap2.getHeight());
                pixmap.dispose();
                cityKeeper.setPreview(pixmap2);
            }
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        city.setRotation(rotation);
        isoConverter.setAbsShift(absShiftX, absShiftY);
        city.applyComponent(tool);
        engine.setShader(shader);
        engine.releaseShader(shaderBuild);
        WinterManager.getInstance().setWinter(zIsWinter);
        Settings.hideUI = z;
    }

    public static SteppedTask<Pixmap> generate(Drawable drawable, float f) {
        Engine engine = Resources.skin.engine;
        int width = engine.getWidth();
        int height = engine.getHeight();
        if (width > 0 && height > 0) {
            int iRound = 0;
            float f2 = f;
            int[] iArr = null;
            Pixmap pixmap = null;
            boolean z = true;
            int iRound2 = 0;
            int iMin = 0;
            int iMin2 = 0;
            while (z) {
                iRound = Math.round(drawable.getWidth() * f2);
                iRound2 = Math.round(drawable.getHeight() * f2);
                iMin = Math.min(iRound, width);
                iMin2 = Math.min(iRound2, height);
                System.gc();
                try {
                    iArr = new int[iMin * iMin2];
                    pixmap = new Pixmap(iRound, iRound2, Pixmap.Format.RGBA8888);
                    z = false;
                } catch (Exception | OutOfMemoryError unused) {
                    f2 *= 0.5f;
                    System.gc();
                    Gdx.app.debug("PreviewCreator", "Reduce scale because of OMM to " + f2 + " (" + iRound + "x" + iRound2 + ")");
                    iArr = null;
                    z = true;
                }
            }
            if (iArr != null && pixmap != null) {
                ByteBuffer pixels = pixmap.getPixels();
                pixels.order(ByteOrder.nativeOrder());
                int i = iMin;
                IntBuffer intBufferAsIntBuffer = pixels.asIntBuffer();
                int i2 = iMin2;
                int virtualWidth = engine.getVirtualWidth();
                int virtualHeight = engine.getVirtualHeight();
                Gdx.app.debug("Preview", "Create preview of size " + iRound + "x" + iRound2 + " out of " + width + "x" + height + " sized view frames");
                StopWatch.start("Preview");
                drawable.begin(f2, iRound, iRound2);
                return new SteppedTask<Pixmap>(iRound, width, iRound2, height, engine, drawable, i, i2, iArr, intBufferAsIntBuffer, virtualWidth, virtualHeight, pixels, pixmap) { // from class: info.flowersoft.theotown.city.PreviewCreator.1
                    public int processedSteps;
                    public int totalSteps;
                    public final /* synthetic */ Pixmap val$bmp;
                    public final /* synthetic */ int val$bufHeight;
                    public final /* synthetic */ int val$bufWidth;
                    public final /* synthetic */ ByteBuffer val$buffer;
                    public final /* synthetic */ Drawable val$drawable;
                    public final /* synthetic */ Engine val$engine;
                    public final /* synthetic */ int val$height;
                    public final /* synthetic */ IntBuffer val$pixelBuffer;
                    public final /* synthetic */ int[] val$pixels;
                    public final /* synthetic */ int val$viewHeight;
                    public final /* synthetic */ int val$viewWidth;
                    public final /* synthetic */ int val$virtualHeight;
                    public final /* synthetic */ int val$virtualWidth;
                    public final /* synthetic */ int val$width;
                    public int x = 0;
                    public int y = 0;
                    public int maskR = PreviewCreator.config.optInt("mask r2", 255);
                    public int maskG = PreviewCreator.config.optInt("mask g2", 0);
                    public int maskB = PreviewCreator.config.optInt("mask b2", 255);

                    {
                        this.val$width = iRound;
                        this.val$viewWidth = width;
                        this.val$height = iRound2;
                        this.val$viewHeight = height;
                        this.val$engine = engine;
                        this.val$drawable = drawable;
                        this.val$bufWidth = i;
                        this.val$bufHeight = i2;
                        this.val$pixels = iArr;
                        this.val$pixelBuffer = intBufferAsIntBuffer;
                        this.val$virtualWidth = virtualWidth;
                        this.val$virtualHeight = virtualHeight;
                        this.val$buffer = pixels;
                        this.val$bmp = pixmap;
                        this.totalSteps = ((((iRound + width) - 1) / width) * (((iRound2 + height) - 1) / height)) + 1;
                    }

                    @Override // info.flowersoft.theotown.city.PreviewCreator.SteppedTask
                    public int remainingSteps() {
                        return this.totalSteps - this.processedSteps;
                    }

                    @Override // info.flowersoft.theotown.city.PreviewCreator.SteppedTask
                    public void run() {
                        if (this.processedSteps < this.totalSteps - 1) {
                            this.val$engine.setVirtualSize(this.val$viewWidth, this.val$viewHeight);
                            if (this.val$drawable.hideBackground()) {
                                Gdx.gl20.glClearColor(this.maskR / 255.0f, this.maskG / 255.0f, this.maskB / 255.0f, 1.0f);
                                Gdx.gl20.glClear(16384);
                            }
                            StringBuilder sb = new StringBuilder();
                            sb.append("Draw (");
                            int i3 = this.x;
                            int i4 = this.val$viewWidth;
                            sb.append((i3 / i4) + 1 + ((this.y / this.val$viewHeight) * (((this.val$width + i4) - 1) / i4)));
                            sb.append(" of ");
                            int i5 = this.val$width;
                            int i6 = ((i5 + r3) - 1) / this.val$viewWidth;
                            int i7 = this.val$height;
                            sb.append(i6 * (((i7 + r4) - 1) / this.val$viewHeight));
                            sb.append(")");
                            StopWatch.step("Preview", sb.toString());
                            Drawable drawable2 = this.val$drawable;
                            Engine engine2 = this.val$engine;
                            int i8 = this.x;
                            drawable2.draw(engine2, -i8, -this.y, Math.min(this.val$viewWidth, this.val$width - i8), Math.min(this.val$viewHeight, this.val$height - this.y));
                            int iMin3 = Math.min(this.val$bufWidth, this.val$width - this.x);
                            int iMin4 = Math.min(this.val$bufHeight, this.val$height - this.y);
                            this.val$engine.getPixels(this.val$pixels, 0, 0, iMin3, iMin4);
                            StopWatch.step("Preview", "Get Pixels");
                            if (this.val$drawable.hideBackground()) {
                                int i9 = (this.maskB << 16) | (-16777216) | (this.maskG << 8) | this.maskR;
                                int i10 = 0;
                                while (true) {
                                    int[] iArr2 = this.val$pixels;
                                    if (i10 >= iArr2.length) {
                                        break;
                                    }
                                    if (iArr2[i10] == i9) {
                                        iArr2[i10] = 0;
                                    }
                                    i10++;
                                }
                            }
                            for (int i11 = 0; i11 < iMin4; i11++) {
                                int i12 = this.y;
                                if (i12 + i11 >= this.val$height) {
                                    break;
                                }
                                int i13 = this.val$width;
                                int i14 = (i12 + i11) * i13;
                                int iMin5 = Math.min(iMin3, i13 - this.x);
                                this.val$pixelBuffer.position(this.x + i14);
                                this.val$pixelBuffer.put(this.val$pixels, ((iMin4 - 1) - i11) * iMin3, iMin5);
                            }
                            this.val$engine.setVirtualSize(this.val$virtualWidth, this.val$virtualHeight);
                            StopWatch.step("Preview", "Copy pixels");
                            int i15 = this.x + this.val$viewWidth;
                            this.x = i15;
                            if (i15 >= this.val$width) {
                                this.x = 0;
                                this.y += this.val$viewHeight;
                            }
                        } else {
                            if (!this.val$drawable.hideBackground()) {
                                this.val$pixelBuffer.put(this.val$width - 1, Resources.VERSION_COLOR.toARGB());
                            }
                            this.val$drawable.end();
                            StopWatch.stop("Preview");
                            this.val$buffer.rewind();
                        }
                        this.processedSteps++;
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // info.flowersoft.theotown.city.PreviewCreator.SteppedTask
                    public Pixmap getResult() {
                        return this.val$bmp;
                    }
                };
            }
        }
        return null;
    }

    public static SteppedTask<Pixmap> generate(final City city, float f, final boolean z, final boolean z2, final boolean z3) {
        final int iMax = (Math.max(city.getBuildings().getMaxBuildHeight(), 2) * 8) + 180;
        final IsoConverter isoConverter = city.getIsoConverter();
        final float absShiftX = isoConverter.getAbsShiftX();
        final float absShiftY = isoConverter.getAbsShiftY();
        final float absScaleX = isoConverter.getAbsScaleX();
        final float absScaleY = isoConverter.getAbsScaleY();
        final ScreenRect view = city.getView();
        final int width = (int) view.getWidth();
        final int height = (int) view.getHeight();
        return generate(new LabeledDrawable(city.getName()) { // from class: info.flowersoft.theotown.city.PreviewCreator.2
            @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
            public boolean hideBackground() {
                return z2;
            }

            @Override // info.flowersoft.theotown.city.PreviewCreator.LabeledDrawable
            public boolean useOverlay() {
                return z;
            }

            @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
            public int getWidth() {
                return ((city.getWidth() + city.getHeight()) * 32) / 2;
            }

            @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
            public int getHeight() {
                return (((city.getWidth() + city.getHeight()) * 16) / 2) + iMax + 32;
            }

            @Override // info.flowersoft.theotown.city.PreviewCreator.LabeledDrawable, info.flowersoft.theotown.city.PreviewCreator.Drawable
            public void begin(float f2, int i, int i2) {
                super.begin(f2, i, i2);
                isoConverter.setAbsScale(f2, f2);
                LODController lod = city.getLod();
                lod.setDuringScreenshot(true);
                lod.setNoBackground(z2);
                lod.setNoBuffering(true);
            }

            @Override // info.flowersoft.theotown.city.PreviewCreator.LabeledDrawable, info.flowersoft.theotown.city.PreviewCreator.Drawable
            public void draw(Engine engine, int i, int i2, int i3, int i4) {
                view.setWidth(i3);
                view.setHeight(i4);
                city.setView(view);
                float f2 = this.scale;
                isoConverter.setAbsShift((i - (i3 / 2)) / f2, ((((((this.absHeight / 2) + (((0.5f - (city.getRotatedWidth() / (city.getWidth() + city.getHeight()))) * 0.5f) * this.absWidth)) + i2) - (i4 / 2)) / f2) + (iMax / 2)) - 32.0f);
                PreviewCreator.clipMovement(engine, isoConverter);
                city.draw(Resources.skin.engine, z3);
                if (Constants.f3913VERDCHTIG != 0 && this.scale > 0.125f) {
                    Font font = Resources.skin.fontBig;
                    int width2 = (int) font.getWidth("hack0rz ");
                    int height2 = (int) font.getHeight("hack0rz ");
                    engine.setColor(Colors.RED);
                    engine.setScale(1.0f, 1.0f);
                    for (int i5 = i2; i5 < i4; i5 += height2) {
                        for (int i6 = i; i6 < i3; i6 += width2) {
                            engine.drawText(font, "hack0rz ", i6, i5);
                        }
                    }
                    engine.setColor(Colors.WHITE);
                    float f3 = this.scale;
                    engine.setScale(f3, f3);
                }
                super.draw(engine, i, i2, i3, i4);
            }

            @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
            public void end() {
                city.getLod().setDuringScreenshot(false);
                city.getLod().setNoBackground(false);
                city.getLod().setNoBuffering(false);
                isoConverter.setAbsShift(absShiftX, absShiftY);
                isoConverter.setAbsScale(absScaleX, absScaleY);
                view.setWidth(width);
                view.setHeight(height);
                city.setView(view);
            }
        }, f);
    }

    public static abstract class LabeledDrawable implements Drawable {
        public int absHeight;
        public int absWidth;
        public final float logoHeight;
        public final int logoImg;
        public final float logoWidth;
        public String name;
        public float scale;

        public boolean useOverlay() {
            return true;
        }

        public LabeledDrawable(String str) {
            int i = Resources.FRAME_LOGO_THEOTOWN;
            this.logoImg = i;
            this.logoWidth = Resources.IMAGE_WORLD.getWidth(i);
            this.logoHeight = Resources.IMAGE_WORLD.getHeight(i);
            this.name = str;
        }

        @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
        public void begin(float f, int i, int i2) {
            this.scale = f;
            this.absWidth = i;
            this.absHeight = i2;
        }

        @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
        public void draw(Engine engine, int i, int i2, int i3, int i4) {
            if (useOverlay()) {
                Font font = Resources.skin.fontBig;
                float height = font.getHeight();
                float f = (this.absWidth * 0.2f) / this.logoWidth;
                engine.setScale(f, f);
                engine.setColor(Colors.WHITE);
                engine.setTransparency(255);
                engine.drawImage(Resources.IMAGE_WORLD, (this.absWidth + i) - (this.logoWidth * f), (this.absHeight + i2) - ((this.logoHeight * f) * 1.1f), this.logoImg);
                float width = font.getWidth(this.name);
                int i5 = this.absWidth;
                float fMin = Math.min((i5 * 0.4f) / width, (i5 * 0.05f) / height);
                engine.setScale(fMin, fMin);
                Drawing.getInstance().drawOutlinedText(" " + this.name, i + (this.absHeight * 0.006f), i2 + r13, font, Colors.BLACK, engine, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
                engine.setScale(1.0f, 1.0f);
            }
        }
    }

    public static <T> T evaluateSteppedTask(SteppedTask<T> steppedTask) {
        if (steppedTask == null) {
            return null;
        }
        while (steppedTask.remainingSteps() > 0) {
            steppedTask.run();
        }
        return steppedTask.getResult();
    }
}
