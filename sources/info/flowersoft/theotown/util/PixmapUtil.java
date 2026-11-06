package info.flowersoft.theotown.util;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.g2d.Gdx2DPixmap;
import com.badlogic.gdx.math.MathUtils;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.io.InputStream;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class PixmapUtil {
    public static void blendPixmapOverlay(Pixmap pixmap, int i, int i2, Pixmap pixmap2, int i3, int i4, int i5, int i6) {
        int i7 = i;
        int i8 = i2;
        IntBuffer intBufferAsIntBuffer = pixmap.getPixels().asIntBuffer();
        IntBuffer intBufferAsIntBuffer2 = pixmap2.getPixels().asIntBuffer();
        int width = pixmap.getWidth();
        int width2 = pixmap2.getWidth();
        boolean z = false;
        int iMax = Math.max(i7, 0);
        int iMax2 = Math.max(i8, 0);
        int iMin = Math.min(i7 + i5, pixmap.getWidth());
        int iMin2 = Math.min(i8 + i6, pixmap.getHeight());
        while (iMax2 < iMin2) {
            int i9 = iMax;
            while (i9 < iMin) {
                int i10 = (iMax2 * width) + i9;
                int i11 = intBufferAsIntBuffer2.get((i9 - i7) + i3 + (((iMax2 - i8) + i4) * width2));
                int i12 = (i11 >>> 24) & 255;
                int i13 = (i11 >>> 16) & 255;
                int i14 = (i11 >>> 8) & 255;
                int i15 = i11 & 255;
                int i16 = intBufferAsIntBuffer.get(i10);
                int iClamp = MathUtils.clamp((((i12 * ((i16 >>> 24) & 255)) * i15) / Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE) / 255, 0, 255);
                int iClamp2 = MathUtils.clamp((((i13 * ((i16 >>> 16) & 255)) * i15) / Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE) / 255, 0, 255);
                intBufferAsIntBuffer.put(i10, (MathUtils.clamp((((((i16 >>> 8) & 255) * i14) * i15) / Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE) / 255, 0, 255) << 8) | (iClamp2 << 16) | (iClamp << 24) | (i16 & 255));
                i9++;
                i8 = i2;
                z = false;
                i7 = i;
            }
            iMax2++;
            i8 = i2;
            i7 = i;
        }
    }

    public static void blendPixmap(Pixmap pixmap, int i, int i2, Pixmap pixmap2, int i3, int i4, int i5, int i6) {
        int i7 = i;
        int i8 = i2;
        IntBuffer intBufferAsIntBuffer = pixmap.getPixels().asIntBuffer();
        IntBuffer intBufferAsIntBuffer2 = pixmap2.getPixels().asIntBuffer();
        int width = pixmap.getWidth();
        int width2 = pixmap2.getWidth();
        int iMax = Math.max(i7, 0);
        int iMax2 = Math.max(i8, 0);
        int iMin = Math.min(i7 + i5, pixmap.getWidth());
        int iMin2 = Math.min(i8 + i6, pixmap.getHeight());
        while (iMax2 < iMin2) {
            int i9 = iMax;
            while (i9 < iMin) {
                int i10 = (iMax2 * width) + i9;
                int i11 = intBufferAsIntBuffer2.get((i9 - i7) + i3 + (((iMax2 - i8) + i4) * width2));
                int i12 = (i11 >>> 24) & 255;
                int i13 = (i11 >>> 16) & 255;
                int i14 = (i11 >>> 8) & 255;
                int i15 = i11 & 255;
                int i16 = intBufferAsIntBuffer.get(i10);
                int i17 = (i16 >>> 24) & 255;
                int i18 = (i16 >>> 16) & 255;
                int i19 = (i16 >>> 8) & 255;
                int i20 = i16 & 255;
                int i21 = 255 - i15;
                intBufferAsIntBuffer.put(i10, ((((i12 * i15) + (i17 * i21)) / 255) << 24) | ((((i13 * i15) + (i18 * i21)) / 255) << 16) | ((((i14 * i15) + (i19 * i21)) / 255) << 8) | i20);
                i9++;
                i7 = i;
                i8 = i2;
            }
            iMax2++;
            i7 = i;
            i8 = i2;
        }
    }

    public static Pixmap reversePremultiplyAlpha(Pixmap pixmap) {
        if (pixmap.getFormat() == Pixmap.Format.RGBA8888) {
            IntBuffer intBufferAsIntBuffer = pixmap.getPixels().asIntBuffer();
            int width = pixmap.getWidth() * pixmap.getHeight();
            for (int i = 0; i < width; i++) {
                int i2 = intBufferAsIntBuffer.get(i);
                int iClamp = (i2 >>> 24) & 255;
                int iClamp2 = (i2 >>> 16) & 255;
                int iClamp3 = (i2 >>> 8) & 255;
                int i3 = i2 & 255;
                if (i3 > 0) {
                    iClamp = MathUtils.clamp((iClamp * 255) / i3, 0, 255);
                    iClamp2 = MathUtils.clamp((iClamp2 * 255) / i3, 0, 255);
                    iClamp3 = MathUtils.clamp((iClamp3 * 255) / i3, 0, 255);
                }
                intBufferAsIntBuffer.put(i, i3 | (iClamp << 24) | (iClamp2 << 16) | (iClamp3 << 8));
            }
        }
        return pixmap;
    }

    public static Pixmap premultiplyAlpha(Pixmap pixmap) {
        if (pixmap.getFormat() == Pixmap.Format.RGBA8888) {
            IntBuffer intBufferAsIntBuffer = pixmap.getPixels().asIntBuffer();
            int width = pixmap.getWidth() * pixmap.getHeight();
            for (int i = 0; i < width; i++) {
                int i2 = intBufferAsIntBuffer.get(i);
                int i3 = (i2 >>> 24) & 255;
                int i4 = (i2 >>> 16) & 255;
                int i5 = (i2 >>> 8) & 255;
                int i6 = i2 & 255;
                intBufferAsIntBuffer.put(i, i6 | (((i3 * i6) / 255) << 24) | (((i4 * i6) / 255) << 16) | (((i5 * i6) / 255) << 8));
            }
        }
        return pixmap;
    }

    public static Pixmap loadPixmap(InputStream inputStream, int i) {
        try {
            try {
                Pixmap pixmap = new Pixmap(new Gdx2DPixmap(inputStream, i));
                try {
                    return pixmap;
                } catch (IOException e) {
                    return pixmap;
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                try {
                    inputStream.close();
                    return null;
                } catch (IOException e3) {
                    e3.printStackTrace();
                    return null;
                }
            }
        } finally {
            try {
                inputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static Pixmap loadPixmap(FileHandle fileHandle, int i) {
        return loadPixmap(fileHandle.read(8192), i);
    }

    public static Pixmap loadPAPixmap(FileHandle fileHandle, int i) {
        Pixmap pixmapLoadPixmap = loadPixmap(fileHandle, i);
        if (pixmapLoadPixmap != null) {
            return premultiplyAlpha(pixmapLoadPixmap);
        }
        return null;
    }

    public static Pixmap loadPAPixmap(InputStream inputStream, int i) {
        Pixmap pixmapLoadPixmap = loadPixmap(inputStream, i);
        if (pixmapLoadPixmap != null) {
            return premultiplyAlpha(pixmapLoadPixmap);
        }
        return null;
    }
}
