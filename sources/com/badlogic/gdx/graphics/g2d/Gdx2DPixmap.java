package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class Gdx2DPixmap implements Disposable {
    public long basePtr;
    public int format;
    public int height;
    public long[] nativeData;
    public ByteBuffer pixelPtr;
    public int width;

    private static native void clear(long j, int i);

    private static native void drawPixmap(long j, long j2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    private static native void free(long j);

    public static native String getFailureReason();

    private static native int getPixel(long j, int i, int i2);

    private static native ByteBuffer load(long[] jArr, byte[] bArr, int i, int i2);

    private static native ByteBuffer newPixmap(long[] jArr, int i, int i2, int i3);

    private static native void setBlend(long j, int i);

    private static native void setPixel(long j, int i, int i2, int i3);

    private static native void setScale(long j, int i);

    public static int toGlFormat(int i) {
        switch (i) {
            case 1:
                return 6406;
            case 2:
                return 6410;
            case 3:
            case 5:
                return 6407;
            case 4:
            case 6:
                return 6408;
            default:
                throw new GdxRuntimeException("unknown format: " + i);
        }
    }

    public static int toGlType(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                return 5121;
            case 5:
                return 33635;
            case 6:
                return 32819;
            default:
                throw new GdxRuntimeException("unknown format: " + i);
        }
    }

    public Gdx2DPixmap(byte[] bArr, int i, int i2, int i3) throws IOException {
        long[] jArr = new long[4];
        this.nativeData = jArr;
        ByteBuffer byteBufferLoad = load(jArr, bArr, i, i2);
        this.pixelPtr = byteBufferLoad;
        if (byteBufferLoad == null) {
            throw new IOException("Error loading pixmap: " + getFailureReason());
        }
        long[] jArr2 = this.nativeData;
        this.basePtr = jArr2[0];
        this.width = (int) jArr2[1];
        this.height = (int) jArr2[2];
        int i4 = (int) jArr2[3];
        this.format = i4;
        if (i3 == 0 || i3 == i4) {
            return;
        }
        convert(i3);
    }

    public Gdx2DPixmap(InputStream inputStream, int i) throws IOException {
        this.nativeData = new long[4];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        byte[] bArr = new byte[1024];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                break;
            } else {
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        ByteBuffer byteBufferLoad = load(this.nativeData, byteArray, 0, byteArray.length);
        this.pixelPtr = byteBufferLoad;
        if (byteBufferLoad == null) {
            throw new IOException("Error loading pixmap: " + getFailureReason());
        }
        long[] jArr = this.nativeData;
        this.basePtr = jArr[0];
        this.width = (int) jArr[1];
        this.height = (int) jArr[2];
        int i3 = (int) jArr[3];
        this.format = i3;
        if (i == 0 || i == i3) {
            return;
        }
        convert(i);
    }

    public Gdx2DPixmap(int i, int i2, int i3) throws GdxRuntimeException {
        long[] jArr = new long[4];
        this.nativeData = jArr;
        ByteBuffer byteBufferNewPixmap = newPixmap(jArr, i, i2, i3);
        this.pixelPtr = byteBufferNewPixmap;
        if (byteBufferNewPixmap == null) {
            throw new GdxRuntimeException("Unable to allocate memory for pixmap: " + i + "x" + i2 + ", " + getFormatString(i3));
        }
        long[] jArr2 = this.nativeData;
        this.basePtr = jArr2[0];
        this.width = (int) jArr2[1];
        this.height = (int) jArr2[2];
        this.format = (int) jArr2[3];
    }

    public final void convert(int i) {
        Gdx2DPixmap gdx2DPixmap = new Gdx2DPixmap(this.width, this.height, i);
        gdx2DPixmap.setBlend(0);
        gdx2DPixmap.drawPixmap(this, 0, 0, 0, 0, this.width, this.height);
        dispose();
        this.basePtr = gdx2DPixmap.basePtr;
        this.format = gdx2DPixmap.format;
        this.height = gdx2DPixmap.height;
        this.nativeData = gdx2DPixmap.nativeData;
        this.pixelPtr = gdx2DPixmap.pixelPtr;
        this.width = gdx2DPixmap.width;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        free(this.basePtr);
    }

    public void clear(int i) {
        clear(this.basePtr, i);
    }

    public void setPixel(int i, int i2, int i3) {
        setPixel(this.basePtr, i, i2, i3);
    }

    public int getPixel(int i, int i2) {
        return getPixel(this.basePtr, i, i2);
    }

    public void drawPixmap(Gdx2DPixmap gdx2DPixmap, int i, int i2, int i3, int i4, int i5, int i6) {
        drawPixmap(gdx2DPixmap.basePtr, this.basePtr, i, i2, i5, i6, i3, i4, i5, i6);
    }

    public void drawPixmap(Gdx2DPixmap gdx2DPixmap, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        drawPixmap(gdx2DPixmap.basePtr, this.basePtr, i, i2, i3, i4, i5, i6, i7, i8);
    }

    public void setBlend(int i) {
        setBlend(this.basePtr, i);
    }

    public void setScale(int i) {
        setScale(this.basePtr, i);
    }

    public ByteBuffer getPixels() {
        return this.pixelPtr;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public int getFormat() {
        return this.format;
    }

    public int getGLInternalFormat() {
        return toGlFormat(this.format);
    }

    public int getGLFormat() {
        return getGLInternalFormat();
    }

    public int getGLType() {
        return toGlType(this.format);
    }

    public static String getFormatString(int i) {
        switch (i) {
            case 1:
                return "alpha";
            case 2:
                return "luminance alpha";
            case 3:
                return "rgb888";
            case 4:
                return "rgba8888";
            case 5:
                return "rgb565";
            case 6:
                return "rgba4444";
            default:
                return "unknown";
        }
    }
}
