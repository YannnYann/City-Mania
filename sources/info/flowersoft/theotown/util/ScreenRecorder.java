package info.flowersoft.theotown.util;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.BackendConnector;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.ShaderConfig;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.EmptyTextureSource;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes4.dex */
public class ScreenRecorder {
    public static ScreenRecorder instance;
    public int JPEG_COMPRESSION;
    public int MAX_RESOLUTION;
    public int MINIMUM_FRAME_TIME;
    public int[] buf;
    public Engine engine;
    public boolean hasFrameToProcess;
    public int height;
    public long lastMS;
    public int[] localBuf;
    public int localHeight;
    public Pixmap pixmap;
    public boolean processingFrame;
    public int step;
    public int stepCount = 16;
    public Texture texture;
    public int width;
    public Thread worker;

    public boolean isSuitable() {
        return Constants.MAX_TEXTURE_SIZE >= 4096;
    }

    public boolean isActive() {
        if (Settings.screenRecording && isSuitable()) {
            return Settings.screenRecordingMobile || TheoTown.runtimeFeatures.isWifiConnected();
        }
        return false;
    }

    public synchronized void setUp(Engine engine) {
        try {
            if (Settings.screenRecording) {
                int i = Settings.screenRecordingQuality;
                if (i == 0) {
                    this.MINIMUM_FRAME_TIME = 800;
                    this.MAX_RESOLUTION = 300;
                    this.JPEG_COMPRESSION = 30;
                } else if (i == 2) {
                    this.MINIMUM_FRAME_TIME = 400;
                    this.MAX_RESOLUTION = 600;
                    this.JPEG_COMPRESSION = 80;
                } else {
                    this.MINIMUM_FRAME_TIME = 800;
                    this.MAX_RESOLUTION = 600;
                    this.JPEG_COMPRESSION = 30;
                }
                this.engine = engine;
                int iFindSize = Texture.findSize(Math.max(engine.getWidth(), engine.getHeight()));
                Texture texture = new Texture(new EmptyTextureSource(iFindSize, iFindSize));
                this.texture = texture;
                texture.setFiltering(9728, 9728);
                this.texture.setAlphaMode(false);
                int i2 = 1;
                while (Math.max(engine.getVirtualWidth(), engine.getVirtualHeight()) / i2 > this.MAX_RESOLUTION) {
                    i2++;
                }
                this.width = engine.getVirtualWidth() / i2;
                int virtualHeight = engine.getVirtualHeight() / i2;
                this.height = virtualHeight;
                int i3 = this.width;
                this.buf = new int[i3 * virtualHeight];
                Pixmap pixmap = new Pixmap(i3, virtualHeight, Pixmap.Format.RGBA8888);
                this.pixmap = pixmap;
                pixmap.getPixels().order(ByteOrder.nativeOrder());
                int i4 = this.height;
                int i5 = this.stepCount;
                int i6 = ((i4 + i5) - 1) / i5;
                this.localHeight = i6;
                this.localBuf = new int[this.width * i6];
                this.step = 0;
                this.hasFrameToProcess = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void takeFrame() {
        if (!isActive() || this.MINIMUM_FRAME_TIME <= 0) {
            return;
        }
        long jMillis = TimeUtils.millis() / ((long) this.MINIMUM_FRAME_TIME);
        if (jMillis - this.lastMS < 1 || this.hasFrameToProcess) {
            return;
        }
        Engine engine = this.engine;
        engine.copyPixelsIntoTexture(this.texture, 0, 0, engine.getWidth(), this.engine.getHeight());
        this.hasFrameToProcess = true;
        this.lastMS = jMillis;
        this.step = 0;
    }

    public void processFrame() {
        if (!this.hasFrameToProcess || this.processingFrame) {
            return;
        }
        this.engine.setColor(Colors.WHITE);
        this.engine.clear(Colors.BLACK);
        this.engine.setScale(1.0f, 1.0f);
        ShaderConfig.UNCHANGED.apply(this.engine.getShader());
        int virtualWidth = this.engine.getVirtualWidth();
        int virtualHeight = this.engine.getVirtualHeight();
        Engine engine = this.engine;
        engine.setVirtualSize(engine.getWidth(), this.engine.getHeight());
        this.engine.drawTextureRect(this.texture, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.width, this.height, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, r6.getHeight() / this.texture.getHeight(), this.engine.getWidth() / this.texture.getWidth(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1);
        try {
            int i = this.step;
            int i2 = this.localHeight;
            int i3 = i * i2;
            int iMin = Math.min(i2 + i3, this.height);
            if (iMin > i3) {
                int i4 = iMin - i3;
                this.engine.getPixels(this.localBuf, 0, this.height - iMin, this.width, i4);
                int[] iArr = this.localBuf;
                int[] iArr2 = this.buf;
                int i5 = this.width;
                System.arraycopy(iArr, 0, iArr2, i3 * i5, i4 * i5);
            }
            Settings.shaderConfig.apply(this.engine.getShader());
            this.engine.setVirtualSize(virtualWidth, virtualHeight);
            int i6 = this.step + 1;
            this.step = i6;
            if (i6 >= this.stepCount) {
                this.processingFrame = true;
                Thread thread = new Thread() { // from class: info.flowersoft.theotown.util.ScreenRecorder.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() throws Throwable {
                        try {
                            int[] iArr3 = ScreenRecorder.this.buf;
                            if (iArr3 != null) {
                                ScreenRecorder.this.processFrameRaw(iArr3);
                            }
                            ScreenRecorder.this.hasFrameToProcess = false;
                            ScreenRecorder.this.processingFrame = false;
                        } catch (Exception e) {
                            TheoTown.analytics.logException("Process", e);
                        }
                    }
                };
                this.worker = thread;
                thread.start();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void processFrameRaw(int[] iArr) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        long numId = TheoTown.analytics.getNumId();
        if (numId > 0) {
            long time = InternetTime.getInstance().getTime();
            if (!saveBufToBmpStream(iArr, byteArrayOutputStream) || byteArrayOutputStream.size() <= 0) {
                return;
            }
            uploadData(byteArrayOutputStream.toByteArray(), "" + time + ".jpg", "" + numId, getMeta());
        }
    }

    public final String getMeta() {
        return Base64Coder.encodeString("" + TheoTown.VERSION_CODE + "\n", true);
    }

    public final void uploadData(byte[] bArr, String str, String str2, String str3) throws Throwable {
        InputStream inputStream;
        int i;
        OutputStream outputStream = null;
        inputStream = null;
        InputStream inputStream2 = null;
        outputStream = null;
        try {
            try {
                URLConnection uRLConnectionOpenConnection = new URL("https://util.theotown.com/upload.php?id=" + str2 + "&meta=" + str3).openConnection();
                BackendConnector.applyHeaders(uRLConnectionOpenConnection);
                uRLConnectionOpenConnection.setDoOutput(true);
                String str4 = "-----------------------------4664151417711\r\nContent-Disposition: form-data; name=\"file\"; filename=\"" + str + "\"\r\nContent-Type: image/jpeg\r\n\r\n";
                uRLConnectionOpenConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=---------------------------4664151417711");
                uRLConnectionOpenConnection.setRequestProperty("Content-Length", String.valueOf(str4.length() + 48 + bArr.length));
                OutputStream outputStream2 = uRLConnectionOpenConnection.getOutputStream();
                try {
                    outputStream2.write(str4.getBytes());
                    int length = 1048576;
                    int i2 = 0;
                    do {
                        if (i2 + length > bArr.length) {
                            length = bArr.length - i2;
                        }
                        outputStream2.write(bArr, i2, length);
                        i2 += length;
                    } while (i2 < bArr.length);
                    outputStream2.write("\r\n-----------------------------4664151417711--\r\n".getBytes());
                    outputStream2.flush();
                    System.out.println("WROTE " + bArr.length + " bytes of data");
                    inputStream2 = uRLConnectionOpenConnection.getInputStream();
                    byte[] buffer = StreamCopyUtil.getBuffer();
                    System.out.println("READ");
                    do {
                        i = inputStream2.read(buffer);
                        if (i > 0) {
                            System.out.println(new String(buffer, 0, i));
                        }
                    } while (i > 0);
                    outputStream2.close();
                    inputStream2.close();
                } catch (Exception e) {
                    e = e;
                    inputStream = inputStream2;
                    outputStream = outputStream2;
                    try {
                        e.printStackTrace();
                        try {
                            outputStream.close();
                        } catch (Exception unused) {
                        }
                        inputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        try {
                            outputStream.close();
                        } catch (Exception unused2) {
                        }
                        try {
                            inputStream.close();
                            throw th;
                        } catch (Exception unused3) {
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStream2;
                    outputStream = outputStream2;
                    outputStream.close();
                    inputStream.close();
                    throw th;
                }
            } catch (Exception unused4) {
            }
        } catch (Exception e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    public final boolean saveBufToBmpStream(int[] iArr, OutputStream outputStream) {
        if (iArr == null) {
            return false;
        }
        PixmapIO.PNG png = new PixmapIO.PNG();
        png.setCompression(9);
        this.pixmap.getPixels().asIntBuffer().put(iArr);
        try {
            png.write(outputStream, this.pixmap);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public synchronized void setDown() {
        Thread thread;
        while (this.hasFrameToProcess && (thread = this.worker) != null && thread.isAlive()) {
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        Engine engine = this.engine;
        if (engine != null) {
            Texture texture = this.texture;
            if (texture != null) {
                engine.releaseTexture(texture);
                this.texture = null;
            }
            this.engine = null;
        }
        this.buf = null;
        Pixmap pixmap = this.pixmap;
        if (pixmap != null) {
            pixmap.dispose();
            this.pixmap = null;
        }
        this.hasFrameToProcess = false;
    }

    public static ScreenRecorder getInstance() {
        if (instance == null) {
            instance = new ScreenRecorder();
        }
        return instance;
    }
}
