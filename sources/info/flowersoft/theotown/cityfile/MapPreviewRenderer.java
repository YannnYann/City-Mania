package info.flowersoft.theotown.cityfile;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.cityloader.LightCityInfo;
import info.flowersoft.theotown.crossplatform.TheoTown;
import io.blueflower.stapel2d.drawing.DynamicTextureSource;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes4.dex */
public class MapPreviewRenderer {
    public Engine engine;
    public long finished;
    public Image image;
    public boolean isUploaded;
    public CityKeeper map;
    public boolean stopped;
    public Texture texture;
    public Future<?> worker;
    public int width = -1;
    public int height = -1;
    public final Object loadingMonitor = new Object();

    public MapPreviewRenderer(CityKeeper cityKeeper, Engine engine, ExecutorService executorService) {
        this.map = cityKeeper;
        this.engine = engine;
        prepare(executorService);
    }

    public boolean readyForUpload() {
        return (this.image == null || this.isUploaded) ? false : true;
    }

    public synchronized void upload() {
        Texture texture = this.texture;
        if (texture != null) {
            this.engine.loadTexture(texture);
            this.finished = TimeUtils.millis();
            this.isUploaded = true;
        }
    }

    public boolean isFinished() {
        return this.isUploaded;
    }

    public int finishedSince() {
        return (int) (TimeUtils.millis() - this.finished);
    }

    public Image getImage() {
        return this.image;
    }

    public final synchronized void prepare(ExecutorService executorService) {
        if (this.map.getInfo().hasPreview()) {
            this.worker = executorService.submit(new Runnable() { // from class: info.flowersoft.theotown.cityfile.MapPreviewRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    int[] previewData;
                    synchronized (MapPreviewRenderer.this.loadingMonitor) {
                        try {
                            if (!MapPreviewRenderer.this.stopped && !Thread.currentThread().isInterrupted()) {
                                LightCityInfo info2 = MapPreviewRenderer.this.map.getInfo();
                                int[] previewData2 = info2.getPreviewData();
                                MapPreviewRenderer.this.width = info2.getPreviewWidth();
                                MapPreviewRenderer.this.height = info2.getPreviewHeight();
                                if (previewData2 == null) {
                                    synchronized (MapPreviewRenderer.this.map) {
                                        MapPreviewRenderer.this.map.loadLightInfo(false, true);
                                        info2 = MapPreviewRenderer.this.map.getInfo();
                                        previewData = info2.getPreviewData();
                                        MapPreviewRenderer.this.width = info2.getPreviewWidth();
                                        MapPreviewRenderer.this.height = info2.getPreviewHeight();
                                    }
                                    previewData2 = previewData;
                                }
                                if (previewData2 != null && previewData2.length >= MapPreviewRenderer.this.width * MapPreviewRenderer.this.height && !MapPreviewRenderer.this.stopped && !Thread.currentThread().isInterrupted()) {
                                    int iFindSize = Texture.findSize(MapPreviewRenderer.this.width);
                                    int iFindSize2 = Texture.findSize(MapPreviewRenderer.this.height);
                                    int i = iFindSize * iFindSize2;
                                    try {
                                        int[] iArr = new int[i];
                                        for (int i2 = 0; i2 < i; i2++) {
                                            if (i2 % 100 == 0 && (Thread.currentThread().isInterrupted() || MapPreviewRenderer.this.stopped)) {
                                                return;
                                            }
                                            int i3 = i2 % iFindSize;
                                            int i4 = i2 / iFindSize;
                                            if (i3 < MapPreviewRenderer.this.width && i4 >= 0 && i4 < MapPreviewRenderer.this.height) {
                                                int i5 = previewData2[i3 + (i4 * MapPreviewRenderer.this.width)];
                                                int i6 = (i5 >> 24) & 255;
                                                int i7 = i5 & 255;
                                                int i8 = (i5 >> 8) & 255;
                                                int i9 = (i5 >> 16) & 255;
                                                int i10 = ((i7 + i8) + i9) / 3;
                                                int iClamp = MathUtils.clamp((((i7 - i10) * 4) / 3) + i10 + 20, 0, 255);
                                                iArr[i2] = (((MathUtils.clamp(((((i9 - i10) * 4) / 3) + i10) + 20, 0, 255) * i6) / 255) << 16) | (i6 << 24) | (((MathUtils.clamp(((((i8 - i10) * 4) / 3) + i10) + 20, 0, 255) * i6) / 255) << 8) | ((iClamp * i6) / 255);
                                            } else {
                                                iArr[i2] = 0;
                                            }
                                        }
                                        synchronized (MapPreviewRenderer.this) {
                                            try {
                                                if (!Thread.currentThread().isInterrupted() && !MapPreviewRenderer.this.stopped) {
                                                    DynamicTextureSource dynamicTextureSource = new DynamicTextureSource(iFindSize, iFindSize2);
                                                    MapPreviewRenderer.this.texture = new Texture(dynamicTextureSource);
                                                    MapPreviewRenderer.this.texture.setFiltering(9729, 9729);
                                                    dynamicTextureSource.setData(iArr);
                                                    float width = info2.getWidth() / (info2.getWidth() + info2.getHeight());
                                                    MapPreviewRenderer mapPreviewRenderer = MapPreviewRenderer.this;
                                                    mapPreviewRenderer.image = new Image(mapPreviewRenderer.texture);
                                                    MapPreviewRenderer.this.image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, MapPreviewRenderer.this.width, MapPreviewRenderer.this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (MapPreviewRenderer.this.height - (MapPreviewRenderer.this.width * 0.25f)) - (((width - 0.5f) * 0.5f) * MapPreviewRenderer.this.width));
                                                }
                                            } finally {
                                            }
                                        }
                                    } catch (OutOfMemoryError e) {
                                        TheoTown.analytics.logException("Map preview", new Exception(e));
                                    }
                                }
                                return;
                            }
                            Gdx.app.debug("MPR", MapPreviewRenderer.this.map.getFile() + ": abort due to interrupt");
                        } finally {
                        }
                    }
                }
            });
        }
    }

    public synchronized void release() {
        try {
            this.stopped = true;
            Future<?> future = this.worker;
            if (future != null && !future.isDone()) {
                this.worker.cancel(true);
                this.worker = null;
            }
            this.image = null;
            Texture texture = this.texture;
            if (texture != null) {
                this.engine.releaseTexture(texture);
                this.texture = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
