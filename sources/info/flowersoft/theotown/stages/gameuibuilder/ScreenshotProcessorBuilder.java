package info.flowersoft.theotown.stages.gameuibuilder;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.PreviewCreator;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.ProgressBar;
import info.flowersoft.theotown.util.ScreenshotProcessor;
import info.flowersoft.theotown.util.ScreenshotUploader;
import info.flowersoft.theotown.util.StopWatch;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Getter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class ScreenshotProcessorBuilder extends Builder<CityStage.GameStageContext> {
    public static File lastSavedFile;
    public final City city;
    public final Stapel2DGameContext context;
    public CityStage.GameStageContext gameStageContext;

    public ScreenshotProcessorBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.city = getBuilderContext().getCity();
        this.context = getBuilderContext().getGameContext();
        this.gameStageContext = gameStageContext;
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        getBuilderContext().screenshot = new ScreenshotProcessor() { // from class: info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.1
            @Override // info.flowersoft.theotown.util.ScreenshotProcessor
            public void onTakePhoto() {
                Pixmap screenshotBitmap = ScreenshotProcessorBuilder.this.getScreenshotBitmap();
                String strSave = ScreenshotProcessorBuilder.save(ScreenshotProcessorBuilder.getSaveFile(ScreenshotProcessorBuilder.this.city.getName()), screenshotBitmap);
                if (screenshotBitmap != null) {
                    screenshotBitmap.dispose();
                }
                ((CityStage.GameStageContext) ScreenshotProcessorBuilder.this.getBuilderContext()).showDialog(ScreenshotProcessorBuilder.getSavedImageDialog(strSave, ScreenshotProcessorBuilder.this.context, ScreenshotProcessorBuilder.this.gameStageContext.getGUI()));
            }
        };
        getBuilderContext().addPostProcessor(getBuilderContext().screenshot);
        getBuilderContext().mapScreenshot = new AnonymousClass2();
        getBuilderContext().addPostProcessor(getBuilderContext().mapScreenshot);
        getBuilderContext().onlineScreenshot = new ScreenshotProcessor() { // from class: info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.3
            @Override // info.flowersoft.theotown.util.ScreenshotProcessor
            public void onTakePhoto() {
                Pixmap screenshotBitmap = ScreenshotProcessorBuilder.this.getScreenshotBitmap();
                ScreenshotUploader screenshotUploader = new ScreenshotUploader(ScreenshotProcessorBuilder.this.city, ScreenshotProcessorBuilder.this.context);
                screenshotUploader.upload(screenshotBitmap);
                screenshotBitmap.dispose();
                ScreenshotProcessorBuilder.showWaitForUploadDialog(screenshotUploader, ScreenshotProcessorBuilder.this.context, ScreenshotProcessorBuilder.this.gameStageContext.getGUI());
            }
        };
        getBuilderContext().addPostProcessor(getBuilderContext().onlineScreenshot);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$2, reason: invalid class name */
    public class AnonymousClass2 extends ScreenshotProcessor {
        public AnonymousClass2() {
        }

        /* JADX INFO: renamed from: info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$2$1, reason: invalid class name */
        public class AnonymousClass1 implements Getter<PreviewCreator.SteppedTask<Void>> {
            public AnonymousClass1() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public PreviewCreator.SteppedTask<Void> get() {
                final PreviewCreator.SteppedTask[] steppedTaskArr = {ScreenshotProcessorBuilder.this.getScreenshotWholeMapBitmap()};
                PreviewCreator.SteppedTask steppedTask = steppedTaskArr[0];
                if (steppedTask == null) {
                    return null;
                }
                final int iRemainingSteps = steppedTask.remainingSteps() + 1;
                return new PreviewCreator.SteppedTask<Void>() { // from class: info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.2.1.1
                    public int processedSteps = 0;

                    @Override // info.flowersoft.theotown.city.PreviewCreator.SteppedTask
                    public Void getResult() {
                        return null;
                    }

                    @Override // info.flowersoft.theotown.city.PreviewCreator.SteppedTask
                    public int remainingSteps() {
                        return iRemainingSteps - this.processedSteps;
                    }

                    @Override // info.flowersoft.theotown.city.PreviewCreator.SteppedTask
                    public void run() {
                        try {
                            if (this.processedSteps < iRemainingSteps - 1) {
                                steppedTaskArr[0].run();
                            } else {
                                Pixmap pixmap = (Pixmap) steppedTaskArr[0].getResult();
                                steppedTaskArr[0] = null;
                                System.gc();
                                File saveFile = ScreenshotProcessorBuilder.getSaveFile(ScreenshotProcessorBuilder.this.city.getName());
                                StopWatch.start("Save picture");
                                final String strSave = ScreenshotProcessorBuilder.save(saveFile, pixmap);
                                StopWatch.stop("Save picture");
                                if (pixmap != null) {
                                    pixmap.dispose();
                                }
                                ((CityStage.GameStageContext) ScreenshotProcessorBuilder.this.getBuilderContext()).handleRunnable(new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ((CityStage.GameStageContext) ScreenshotProcessorBuilder.this.getBuilderContext()).showDialog(ScreenshotProcessorBuilder.getSavedImageDialog(strSave, ScreenshotProcessorBuilder.this.context, ScreenshotProcessorBuilder.this.gameStageContext.getGUI()));
                                    }
                                });
                            }
                            this.processedSteps++;
                        } catch (Throwable th) {
                            this.processedSteps++;
                            throw th;
                        }
                    }
                };
            }
        }

        @Override // info.flowersoft.theotown.util.ScreenshotProcessor
        public void onTakePhoto() {
            ScreenshotProcessorBuilder.this.gameStageContext.saveForScreenshot(new AnonymousClass1());
        }
    }

    public static void showWaitForUploadDialog(final ScreenshotUploader screenshotUploader, Stapel2DGameContext stapel2DGameContext, Master master) {
        final TranslationManager translator = stapel2DGameContext.getTranslator();
        final Dialog dialog = new Dialog(Resources.ICON_UPGRADE, translator.translate(650), translator.translate(3067), 200, 106, master);
        dialog.setCanCloseViaBackground(false);
        dialog.addHiddenCancelButton(new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                screenshotUploader.abort("user");
            }
        });
        new ProgressBar(2, 0, dialog.getControlLine().getWidth() - 6, dialog.getControlLine().getFirstPart()) { // from class: info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.4
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                setProgress(screenshotUploader.getProgress());
                if (screenshotUploader.isRunning()) {
                    return;
                }
                if (screenshotUploader.isSuccess()) {
                    TheoTown.runtimeFeatures.showToast(translator.translate(819));
                    TheoTown.gamesService.unlockAchievement("gallery_upload");
                } else if (screenshotUploader.isAborted()) {
                    TheoTown.runtimeFeatures.showToast(translator.translate(1706) + " - " + screenshotUploader.getAbortReason());
                } else {
                    TheoTown.runtimeFeatures.showToast(translator.translate(1706));
                }
                dialog.setVisible(false);
            }
        };
        dialog.setVisible(true);
    }

    public static File getSaveFile(String str) {
        return new File(Resources.getScreenshotDir(), str.replace(' ', '_') + "_" + new SimpleDateFormat("yy-MM-dd_HH.mm.ss", Locale.US).format(new Date()) + ".png");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0025 A[Catch: Exception -> 0x0023, TryCatch #0 {Exception -> 0x0023, blocks: (B:12:0x0018, B:14:0x001e, B:19:0x0032, B:20:0x0041, B:17:0x0025), top: B:35:0x0018 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static info.flowersoft.theotown.ui.Dialog getSavedImageDialog(java.lang.String r13, io.blueflower.stapel2d.gamestack.Stapel2DGameContext r14, io.blueflower.stapel2d.gui.Master r15) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.getSavedImageDialog(java.lang.String, io.blueflower.stapel2d.gamestack.Stapel2DGameContext, io.blueflower.stapel2d.gui.Master):info.flowersoft.theotown.ui.Dialog");
    }

    public static String save(File file, Pixmap pixmap) {
        lastSavedFile = null;
        String strSaveImageToGallery = TheoTown.runtimeFeatures.saveImageToGallery(file.getParentFile().getName(), pixmap, file.getName());
        if (strSaveImageToGallery != null) {
            return strSaveImageToGallery;
        }
        if (pixmap != null && (file.getParentFile().exists() || file.getParentFile().mkdirs())) {
            try {
                saveImage(file, pixmap);
                lastSavedFile = file;
                TheoTown.runtimeFeatures.informAboutNewImage(file);
                return file.getAbsolutePath();
            } catch (IOException e) {
                TheoTown.analytics.logException("Save image", e);
            }
        }
        return null;
    }

    public static void saveImage(File file, Pixmap pixmap) throws IOException {
        PixmapIO.PNG png = new PixmapIO.PNG();
        png.setFlipY(false);
        png.setCompression(9);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            png.write(fileOutputStream, pixmap);
            fileOutputStream.flush();
            fileOutputStream.close();
            Gdx.app.debug("Screenshot", "Saved screen in " + file.getAbsolutePath());
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final Pixmap getScreenshotBitmap() {
        Engine engine = this.context.getEngine();
        int width = engine.getWidth();
        int height = engine.getHeight();
        if (Constants.f3913VERDCHTIG != 0) {
            Font font = Resources.skin.fontBig;
            int width2 = (int) font.getWidth("h4ck0rz ");
            int height2 = (int) font.getHeight("h4ck0rz ");
            engine.setColor(Colors.RED);
            engine.setScale(1.0f, 1.0f);
            for (int i = 0; i < height; i += height2) {
                for (int i2 = 0; i2 < width; i2 += width2) {
                    engine.drawText(font, "h4ck0rz ", i2, i);
                }
            }
            engine.setColor(Colors.WHITE);
            engine.setScale(1.0f, 1.0f);
        }
        int[] pixels = engine.getPixels(null);
        for (int i3 = 0; i3 < pixels.length / 2; i3++) {
            int i4 = pixels[i3];
            int i5 = (i3 % width) + (((height - (i3 / width)) - 1) * width);
            pixels[i3] = pixels[i5];
            pixels[i5] = i4;
        }
        pixels[(width * height) - 1] = Resources.VERSION_COLOR.toARGB();
        Pixmap pixmap = new Pixmap(width, height, Pixmap.Format.RGBA8888);
        ByteBuffer pixels2 = pixmap.getPixels();
        pixels2.order(ByteOrder.nativeOrder());
        pixels2.asIntBuffer().put(pixels);
        pixels2.rewind();
        return pixmap;
    }

    public final PreviewCreator.SteppedTask<Pixmap> getScreenshotWholeMapBitmap() {
        return PreviewCreator.generate(this.city, Settings.lowResMapScreenshot ? 0.5f : 1.0f, true, Settings.mapRenderingNoBackground, true);
    }
}
