package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.g2d.Gdx2DPixmap;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.unity3d.services.UnityAdsConstants;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class Pixmap implements Disposable {
    public boolean disposed;
    public final Gdx2DPixmap pixmap;
    public Blending blending = Blending.SourceOver;
    public Filter filter = Filter.BiLinear;
    public int color = 0;

    public enum Blending {
        None,
        SourceOver
    }

    public enum Filter {
        NearestNeighbour,
        BiLinear
    }

    public enum Format {
        Alpha,
        Intensity,
        LuminanceAlpha,
        RGB565,
        RGBA4444,
        RGB888,
        RGBA8888;

        public static int toGdx2DPixmapFormat(Format format) {
            if (format == Alpha || format == Intensity) {
                return 1;
            }
            if (format == LuminanceAlpha) {
                return 2;
            }
            if (format == RGB565) {
                return 5;
            }
            if (format == RGBA4444) {
                return 6;
            }
            if (format == RGB888) {
                return 3;
            }
            if (format == RGBA8888) {
                return 4;
            }
            throw new GdxRuntimeException("Unknown Format: " + format);
        }

        public static Format fromGdx2DPixmapFormat(int i) {
            if (i == 1) {
                return Alpha;
            }
            if (i == 2) {
                return LuminanceAlpha;
            }
            if (i == 5) {
                return RGB565;
            }
            if (i == 6) {
                return RGBA4444;
            }
            if (i == 3) {
                return RGB888;
            }
            if (i == 4) {
                return RGBA8888;
            }
            throw new GdxRuntimeException("Unknown Gdx2DPixmap Format: " + i);
        }
    }

    public void setBlending(Blending blending) {
        this.blending = blending;
        this.pixmap.setBlend(blending == Blending.None ? 0 : 1);
    }

    public void setFilter(Filter filter) {
        this.filter = filter;
        this.pixmap.setScale(filter == Filter.NearestNeighbour ? 0 : 1);
    }

    public Pixmap(int i, int i2, Format format) {
        this.pixmap = new Gdx2DPixmap(i, i2, Format.toGdx2DPixmapFormat(format));
        setColor(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        fill();
    }

    public Pixmap(byte[] bArr, int i, int i2) {
        try {
            this.pixmap = new Gdx2DPixmap(bArr, i, i2, 0);
        } catch (IOException e) {
            throw new GdxRuntimeException("Couldn't load pixmap from image data", e);
        }
    }

    public Pixmap(Gdx2DPixmap gdx2DPixmap) {
        this.pixmap = gdx2DPixmap;
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.color = Color.rgba8888(f, f2, f3, f4);
    }

    public void setColor(Color color) {
        this.color = Color.rgba8888(color.r, color.g, color.b, color.a);
    }

    public void fill() {
        this.pixmap.clear(this.color);
    }

    public void drawPixmap(Pixmap pixmap, int i, int i2) {
        drawPixmap(pixmap, i, i2, 0, 0, pixmap.getWidth(), pixmap.getHeight());
    }

    public void drawPixmap(Pixmap pixmap, int i, int i2, int i3, int i4, int i5, int i6) {
        this.pixmap.drawPixmap(pixmap.pixmap, i3, i4, i, i2, i5, i6);
    }

    public void drawPixmap(Pixmap pixmap, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.pixmap.drawPixmap(pixmap.pixmap, i, i2, i3, i4, i5, i6, i7, i8);
    }

    public int getPixel(int i, int i2) {
        return this.pixmap.getPixel(i, i2);
    }

    public int getWidth() {
        return this.pixmap.getWidth();
    }

    public int getHeight() {
        return this.pixmap.getHeight();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (this.disposed) {
            Gdx.app.error("Pixmap", "Pixmap already disposed!");
        } else {
            this.pixmap.dispose();
            this.disposed = true;
        }
    }

    public boolean isDisposed() {
        return this.disposed;
    }

    public void drawPixel(int i, int i2, int i3) {
        this.pixmap.setPixel(i, i2, i3);
    }

    public int getGLFormat() {
        return this.pixmap.getGLFormat();
    }

    public int getGLInternalFormat() {
        return this.pixmap.getGLInternalFormat();
    }

    public int getGLType() {
        return this.pixmap.getGLType();
    }

    public ByteBuffer getPixels() {
        if (this.disposed) {
            throw new GdxRuntimeException("Pixmap already disposed");
        }
        return this.pixmap.getPixels();
    }

    public Format getFormat() {
        return Format.fromGdx2DPixmapFormat(this.pixmap.getFormat());
    }
}
