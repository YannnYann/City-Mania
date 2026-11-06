package com.badlogic.gdx.graphics.g2d.freetype;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.LongMap;
import com.badlogic.gdx.utils.SharedLibraryLoader;
import com.badlogic.gdx.utils.StreamUtils;
import com.ironsource.mediationsdk.metadata.a;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
public class FreeType {
    public static int FT_PIXEL_MODE_GRAY = 2;
    public static int FT_PIXEL_MODE_MONO = 1;
    public static int FT_ENCODING_MS_SYMBOL = encode('s', 'y', 'm', 'b');
    public static int FT_ENCODING_UNICODE = encode('u', 'n', 'i', 'c');
    public static int FT_ENCODING_SJIS = encode('s', 'j', 'i', 's');
    public static int FT_ENCODING_GB2312 = encode('g', 'b', ' ', ' ');
    public static int FT_ENCODING_BIG5 = encode('b', 'i', 'g', '5');
    public static int FT_ENCODING_WANSUNG = encode('w', 'a', 'n', 's');
    public static int FT_ENCODING_JOHAB = encode('j', 'o', 'h', 'a');
    public static int FT_ENCODING_ADOBE_STANDARD = encode('A', 'D', 'O', 'B');
    public static int FT_ENCODING_ADOBE_EXPERT = encode('A', 'D', 'B', 'E');
    public static int FT_ENCODING_ADOBE_CUSTOM = encode('A', 'D', 'B', 'C');
    public static int FT_ENCODING_ADOBE_LATIN_1 = encode('l', 'a', 't', '1');
    public static int FT_ENCODING_OLD_LATIN_2 = encode('l', 'a', 't', '2');
    public static int FT_ENCODING_APPLE_ROMAN = encode('a', 'r', 'm', 'n');
    public static int FT_FACE_FLAG_SCALABLE = 1;
    public static int FT_FACE_FLAG_FIXED_SIZES = 2;
    public static int FT_FACE_FLAG_FIXED_WIDTH = 4;
    public static int FT_FACE_FLAG_SFNT = 8;
    public static int FT_FACE_FLAG_HORIZONTAL = 16;
    public static int FT_FACE_FLAG_VERTICAL = 32;
    public static int FT_FACE_FLAG_KERNING = 64;
    public static int FT_FACE_FLAG_FAST_GLYPHS = Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
    public static int FT_FACE_FLAG_MULTIPLE_MASTERS = 256;
    public static int FT_FACE_FLAG_GLYPH_NAMES = EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
    public static int FT_FACE_FLAG_EXTERNAL_STREAM = 1024;
    public static int FT_FACE_FLAG_HINTER = a.o;
    public static int FT_FACE_FLAG_CID_KEYED = 4096;
    public static int FT_FACE_FLAG_TRICKY = 8192;
    public static int FT_STYLE_FLAG_ITALIC = 1;
    public static int FT_STYLE_FLAG_BOLD = 2;
    public static int FT_LOAD_DEFAULT = 0;
    public static int FT_LOAD_NO_SCALE = 1;
    public static int FT_LOAD_NO_HINTING = 2;
    public static int FT_LOAD_RENDER = 4;
    public static int FT_LOAD_NO_BITMAP = 8;
    public static int FT_LOAD_VERTICAL_LAYOUT = 16;
    public static int FT_LOAD_FORCE_AUTOHINT = 32;
    public static int FT_LOAD_CROP_BITMAP = 64;
    public static int FT_LOAD_PEDANTIC = Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
    public static int FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH = EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
    public static int FT_LOAD_NO_RECURSE = 1024;
    public static int FT_LOAD_IGNORE_TRANSFORM = a.o;
    public static int FT_LOAD_MONOCHROME = 4096;
    public static int FT_LOAD_LINEAR_DESIGN = 8192;
    public static int FT_LOAD_NO_AUTOHINT = 32768;
    public static int FT_LOAD_TARGET_NORMAL = 0;
    public static int FT_LOAD_TARGET_LIGHT = 65536;
    public static int FT_LOAD_TARGET_MONO = 131072;
    public static int FT_LOAD_TARGET_LCD = 196608;
    public static int FT_LOAD_TARGET_LCD_V = 262144;
    public static int FT_RENDER_MODE_NORMAL = 0;
    public static int FT_RENDER_MODE_LIGHT = 1;
    public static int FT_RENDER_MODE_MONO = 2;
    public static int FT_RENDER_MODE_LCD = 3;
    public static int FT_RENDER_MODE_LCD_V = 4;
    public static int FT_RENDER_MODE_MAX = 5;
    public static int FT_KERNING_DEFAULT = 0;
    public static int FT_KERNING_UNFITTED = 1;
    public static int FT_KERNING_UNSCALED = 2;
    public static int FT_STROKER_LINECAP_BUTT = 0;
    public static int FT_STROKER_LINECAP_ROUND = 1;
    public static int FT_STROKER_LINECAP_SQUARE = 2;
    public static int FT_STROKER_LINEJOIN_ROUND = 0;
    public static int FT_STROKER_LINEJOIN_BEVEL = 1;
    public static int FT_STROKER_LINEJOIN_MITER_VARIABLE = 2;
    public static int FT_STROKER_LINEJOIN_MITER = 2;
    public static int FT_STROKER_LINEJOIN_MITER_FIXED = 3;

    public static int encode(char c, char c2, char c3, char c4) {
        return (c << 24) | (c2 << 16) | (c3 << '\b') | c4;
    }

    public static native int getLastErrorCode();

    private static native long initFreeTypeJni();

    public static int toInt(int i) {
        return ((i + 63) & (-64)) >> 6;
    }

    public static class Pointer {
        public long address;

        public Pointer(long j) {
            this.address = j;
        }
    }

    public static class Library extends Pointer implements Disposable {
        public LongMap<ByteBuffer> fontData;

        private static native void doneFreeType(long j);

        private static native long newMemoryFace(long j, ByteBuffer byteBuffer, int i, int i2);

        public Library(long j) {
            super(j);
            this.fontData = new LongMap<>();
        }

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
            doneFreeType(this.address);
            for (ByteBuffer byteBuffer : this.fontData.values()) {
                if (BufferUtils.isUnsafeByteBuffer(byteBuffer)) {
                    BufferUtils.disposeUnsafeByteBuffer(byteBuffer);
                }
            }
        }

        public Face newFace(FileHandle fileHandle, int i) {
            ByteBuffer map;
            ByteBuffer byteBufferNewUnsafeByteBuffer;
            try {
                map = fileHandle.map();
            } catch (GdxRuntimeException unused) {
                map = null;
            }
            if (map == null) {
                InputStream inputStream = fileHandle.read();
                try {
                    try {
                        int length = (int) fileHandle.length();
                        if (length == 0) {
                            byte[] bArrCopyStreamToByteArray = StreamUtils.copyStreamToByteArray(inputStream, 16384);
                            ByteBuffer byteBufferNewUnsafeByteBuffer2 = BufferUtils.newUnsafeByteBuffer(bArrCopyStreamToByteArray.length);
                            BufferUtils.copy(bArrCopyStreamToByteArray, 0, byteBufferNewUnsafeByteBuffer2, bArrCopyStreamToByteArray.length);
                            byteBufferNewUnsafeByteBuffer = byteBufferNewUnsafeByteBuffer2;
                        } else {
                            byteBufferNewUnsafeByteBuffer = BufferUtils.newUnsafeByteBuffer(length);
                            StreamUtils.copyStream(inputStream, byteBufferNewUnsafeByteBuffer);
                        }
                        StreamUtils.closeQuietly(inputStream);
                        map = byteBufferNewUnsafeByteBuffer;
                    } catch (IOException e) {
                        throw new GdxRuntimeException(e);
                    }
                } catch (Throwable th) {
                    StreamUtils.closeQuietly(inputStream);
                    throw th;
                }
            }
            return newMemoryFace(map, i);
        }

        public Face newMemoryFace(ByteBuffer byteBuffer, int i) {
            long jNewMemoryFace = newMemoryFace(this.address, byteBuffer, byteBuffer.remaining(), i);
            if (jNewMemoryFace == 0) {
                if (BufferUtils.isUnsafeByteBuffer(byteBuffer)) {
                    BufferUtils.disposeUnsafeByteBuffer(byteBuffer);
                }
                throw new GdxRuntimeException("Couldn't load font, FreeType error code: " + FreeType.getLastErrorCode());
            }
            this.fontData.put(jNewMemoryFace, byteBuffer);
            return new Face(jNewMemoryFace, this);
        }
    }

    public static class Face extends Pointer implements Disposable {
        public Library library;

        private static native void doneFace(long j);

        private static native int getCharIndex(long j, int i);

        private static native int getFaceFlags(long j);

        private static native long getGlyph(long j);

        private static native long getSize(long j);

        private static native boolean loadChar(long j, int i, int i2);

        private static native boolean setPixelSizes(long j, int i, int i2);

        public Face(long j, Library library) {
            super(j);
            this.library = library;
        }

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
            doneFace(this.address);
            ByteBuffer byteBuffer = this.library.fontData.get(this.address);
            if (byteBuffer != null) {
                this.library.fontData.remove(this.address);
                if (BufferUtils.isUnsafeByteBuffer(byteBuffer)) {
                    BufferUtils.disposeUnsafeByteBuffer(byteBuffer);
                }
            }
        }

        public int getFaceFlags() {
            return getFaceFlags(this.address);
        }

        public boolean setPixelSizes(int i, int i2) {
            return setPixelSizes(this.address, i, i2);
        }

        public boolean loadChar(int i, int i2) {
            return loadChar(this.address, i, i2);
        }

        public GlyphSlot getGlyph() {
            return new GlyphSlot(getGlyph(this.address));
        }

        public Size getSize() {
            return new Size(getSize(this.address));
        }

        public int getCharIndex(int i) {
            return getCharIndex(this.address, i);
        }
    }

    public static class Size extends Pointer {
        private static native long getMetrics(long j);

        public Size(long j) {
            super(j);
        }

        public SizeMetrics getMetrics() {
            return new SizeMetrics(getMetrics(this.address));
        }
    }

    public static class SizeMetrics extends Pointer {
        private static native int getAscender(long j);

        public SizeMetrics(long j) {
            super(j);
        }

        public int getAscender() {
            return getAscender(this.address);
        }
    }

    public static class GlyphSlot extends Pointer {
        private static native long getBitmap(long j);

        private static native int getBitmapLeft(long j);

        private static native int getBitmapTop(long j);

        private static native int getFormat(long j);

        private static native long getMetrics(long j);

        private static native boolean renderGlyph(long j, int i);

        public GlyphSlot(long j) {
            super(j);
        }

        public GlyphMetrics getMetrics() {
            return new GlyphMetrics(getMetrics(this.address));
        }

        public int getFormat() {
            return getFormat(this.address);
        }

        public Bitmap getBitmap() {
            return new Bitmap(getBitmap(this.address));
        }

        public int getBitmapLeft() {
            return getBitmapLeft(this.address);
        }

        public int getBitmapTop() {
            return getBitmapTop(this.address);
        }

        public boolean renderGlyph(int i) {
            return renderGlyph(this.address, i);
        }
    }

    public static class Bitmap extends Pointer {
        private static native ByteBuffer getBuffer(long j);

        private static native int getPitch(long j);

        private static native int getPixelMode(long j);

        private static native int getRows(long j);

        private static native int getWidth(long j);

        public Bitmap(long j) {
            super(j);
        }

        public int getRows() {
            return getRows(this.address);
        }

        public int getWidth() {
            return getWidth(this.address);
        }

        public int getPitch() {
            return getPitch(this.address);
        }

        public ByteBuffer getBuffer() {
            if (getRows() == 0) {
                return BufferUtils.newByteBuffer(1);
            }
            return getBuffer(this.address);
        }

        public Pixmap getPixmap(Pixmap.Format format, Color color, float f) {
            int i;
            int i2;
            ByteBuffer byteBuffer;
            int i3;
            Pixmap pixmap;
            int width = getWidth();
            int rows = getRows();
            ByteBuffer buffer = getBuffer();
            int pixelMode = getPixelMode();
            int iAbs = Math.abs(getPitch());
            int i4 = 0;
            if (color == Color.WHITE && pixelMode == FreeType.FT_PIXEL_MODE_GRAY && iAbs == width && f == 1.0f) {
                pixmap = new Pixmap(width, rows, Pixmap.Format.Alpha);
                BufferUtils.copy(buffer, pixmap.getPixels(), pixmap.getPixels().capacity());
            } else {
                Pixmap pixmap2 = new Pixmap(width, rows, Pixmap.Format.RGBA8888);
                int iRgba8888 = Color.rgba8888(color);
                byte[] bArr = new byte[iAbs];
                int[] iArr = new int[width];
                IntBuffer intBufferAsIntBuffer = pixmap2.getPixels().asIntBuffer();
                if (pixelMode == FreeType.FT_PIXEL_MODE_MONO) {
                    for (int i5 = 0; i5 < rows; i5++) {
                        buffer.get(bArr);
                        int i6 = 0;
                        for (int i7 = 0; i7 < width; i7 += 8) {
                            byte b = bArr[i6];
                            int iMin = Math.min(8, width - i7);
                            for (int i8 = 0; i8 < iMin; i8++) {
                                if ((b & (1 << (7 - i8))) != 0) {
                                    iArr[i7 + i8] = iRgba8888;
                                } else {
                                    iArr[i7 + i8] = 0;
                                }
                            }
                            i6++;
                        }
                        intBufferAsIntBuffer.put(iArr);
                    }
                } else {
                    int i9 = iRgba8888 & (-256);
                    int i10 = iRgba8888 & 255;
                    int i11 = 0;
                    while (i11 < rows) {
                        buffer.get(bArr);
                        int i12 = i4;
                        while (i12 < width) {
                            int i13 = bArr[i12] & 255;
                            if (i13 == 0) {
                                iArr[i12] = i9;
                            } else if (i13 == 255) {
                                iArr[i12] = iRgba8888;
                            } else {
                                i = width;
                                i2 = rows;
                                double d = i13 / 255.0f;
                                byteBuffer = buffer;
                                i3 = i9;
                                iArr[i12] = i3 | ((int) (i10 * ((float) Math.pow(d, f))));
                                i12++;
                                i9 = i3;
                                buffer = byteBuffer;
                                width = i;
                                rows = i2;
                            }
                            i = width;
                            i2 = rows;
                            byteBuffer = buffer;
                            i3 = i9;
                            i12++;
                            i9 = i3;
                            buffer = byteBuffer;
                            width = i;
                            rows = i2;
                        }
                        intBufferAsIntBuffer.put(iArr);
                        i11++;
                        i4 = 0;
                    }
                }
                pixmap = pixmap2;
            }
            if (format == pixmap.getFormat()) {
                return pixmap;
            }
            Pixmap pixmap3 = new Pixmap(pixmap.getWidth(), pixmap.getHeight(), format);
            pixmap3.setBlending(Pixmap.Blending.None);
            pixmap3.drawPixmap(pixmap, 0, 0);
            pixmap3.setBlending(Pixmap.Blending.SourceOver);
            pixmap.dispose();
            return pixmap3;
        }

        public int getPixelMode() {
            return getPixelMode(this.address);
        }
    }

    public static class GlyphMetrics extends Pointer {
        private static native int getHoriAdvance(long j);

        public GlyphMetrics(long j) {
            super(j);
        }

        public int getHoriAdvance() {
            return getHoriAdvance(this.address);
        }
    }

    public static Library initFreeType() {
        new SharedLibraryLoader().load("gdx-freetype");
        long jInitFreeTypeJni = initFreeTypeJni();
        if (jInitFreeTypeJni == 0) {
            throw new GdxRuntimeException("Couldn't initialize FreeType library, FreeType error code: " + getLastErrorCode());
        }
        return new Library(jInitFreeTypeJni);
    }
}
