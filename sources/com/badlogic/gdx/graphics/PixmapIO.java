package com.badlogic.gdx.graphics;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.ByteArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.zip.CRC32;
import java.util.zip.CheckedOutputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class PixmapIO {
    public static void writePNG(FileHandle fileHandle, Pixmap pixmap, int i, boolean z) {
        try {
            PNG png = new PNG((int) (pixmap.getWidth() * pixmap.getHeight() * 1.5f));
            try {
                png.setFlipY(z);
                png.setCompression(i);
                png.write(fileHandle, pixmap);
            } finally {
                png.dispose();
            }
        } catch (IOException e) {
            throw new GdxRuntimeException("Error writing PNG: " + fileHandle, e);
        }
    }

    public static void writePNG(FileHandle fileHandle, Pixmap pixmap) {
        writePNG(fileHandle, pixmap, -1, false);
    }

    public static class PNG implements Disposable {
        public static final byte[] SIGNATURE = {-119, 80, 78, 71, 13, 10, 26, 10};
        public final ChunkBuffer buffer;
        public ByteArray curLineBytes;
        public final Deflater deflater;
        public boolean flipY;
        public int lastLineLen;
        public ByteArray lineOutBytes;
        public ByteArray prevLineBytes;

        public PNG() {
            this(16384);
        }

        public PNG(int i) {
            this.flipY = true;
            this.buffer = new ChunkBuffer(i);
            this.deflater = new Deflater();
        }

        public void setFlipY(boolean z) {
            this.flipY = z;
        }

        public void setCompression(int i) {
            this.deflater.setLevel(i);
        }

        public void write(FileHandle fileHandle, Pixmap pixmap) throws IOException {
            OutputStream outputStreamWrite = fileHandle.write(false);
            try {
                write(outputStreamWrite, pixmap);
            } finally {
                StreamUtils.closeQuietly(outputStreamWrite);
            }
        }

        public void write(OutputStream outputStream, Pixmap pixmap) throws IOException {
            byte[] bArrEnsureCapacity;
            byte[] bArrEnsureCapacity2;
            byte[] bArrEnsureCapacity3;
            int i;
            int i2;
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(this.buffer, this.deflater);
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            dataOutputStream.write(SIGNATURE);
            this.buffer.writeInt(1229472850);
            this.buffer.writeInt(pixmap.getWidth());
            this.buffer.writeInt(pixmap.getHeight());
            this.buffer.writeByte(8);
            this.buffer.writeByte(6);
            int i3 = 0;
            this.buffer.writeByte(0);
            this.buffer.writeByte(0);
            this.buffer.writeByte(0);
            this.buffer.endChunk(dataOutputStream);
            this.buffer.writeInt(1229209940);
            this.deflater.reset();
            int i4 = 4;
            int width = pixmap.getWidth() * 4;
            ByteArray byteArray = this.lineOutBytes;
            if (byteArray == null) {
                ByteArray byteArray2 = new ByteArray(width);
                this.lineOutBytes = byteArray2;
                bArrEnsureCapacity = byteArray2.items;
                ByteArray byteArray3 = new ByteArray(width);
                this.curLineBytes = byteArray3;
                bArrEnsureCapacity2 = byteArray3.items;
                ByteArray byteArray4 = new ByteArray(width);
                this.prevLineBytes = byteArray4;
                bArrEnsureCapacity3 = byteArray4.items;
            } else {
                bArrEnsureCapacity = byteArray.ensureCapacity(width);
                bArrEnsureCapacity2 = this.curLineBytes.ensureCapacity(width);
                bArrEnsureCapacity3 = this.prevLineBytes.ensureCapacity(width);
                int i5 = this.lastLineLen;
                for (int i6 = 0; i6 < i5; i6++) {
                    bArrEnsureCapacity3[i6] = 0;
                }
            }
            this.lastLineLen = width;
            ByteBuffer pixels = pixmap.getPixels();
            int iPosition = pixels.position();
            boolean z = pixmap.getFormat() == Pixmap.Format.RGBA8888;
            int height = pixmap.getHeight();
            int i7 = 0;
            while (i7 < height) {
                int i8 = this.flipY ? (height - i7) - 1 : i7;
                if (z) {
                    pixels.position(i8 * width);
                    pixels.get(bArrEnsureCapacity2, i3, width);
                    i = i3;
                    i2 = i4;
                } else {
                    i = i3;
                    int i9 = i;
                    i2 = i4;
                    while (i3 < pixmap.getWidth()) {
                        int pixel = pixmap.getPixel(i3, i8);
                        int i10 = i3;
                        bArrEnsureCapacity2[i9] = (byte) ((pixel >> 24) & 255);
                        bArrEnsureCapacity2[i9 + 1] = (byte) ((pixel >> 16) & 255);
                        int i11 = i9 + 3;
                        bArrEnsureCapacity2[i9 + 2] = (byte) ((pixel >> 8) & 255);
                        i9 += 4;
                        bArrEnsureCapacity2[i11] = (byte) (pixel & 255);
                        i3 = i10 + 1;
                    }
                }
                bArrEnsureCapacity[i] = (byte) (bArrEnsureCapacity2[i] - bArrEnsureCapacity3[i]);
                bArrEnsureCapacity[1] = (byte) (bArrEnsureCapacity2[1] - bArrEnsureCapacity3[1]);
                bArrEnsureCapacity[2] = (byte) (bArrEnsureCapacity2[2] - bArrEnsureCapacity3[2]);
                bArrEnsureCapacity[3] = (byte) (bArrEnsureCapacity2[3] - bArrEnsureCapacity3[3]);
                int i12 = i2;
                while (i12 < width) {
                    int i13 = i12 - 4;
                    int i14 = bArrEnsureCapacity2[i13] & 255;
                    int i15 = i12;
                    int i16 = bArrEnsureCapacity3[i15] & 255;
                    int i17 = bArrEnsureCapacity3[i13] & 255;
                    int i18 = (i14 + i16) - i17;
                    int i19 = i18 - i14;
                    if (i19 < 0) {
                        i19 = -i19;
                    }
                    int i20 = i18 - i16;
                    if (i20 < 0) {
                        i20 = -i20;
                    }
                    int i21 = i18 - i17;
                    if (i21 < 0) {
                        i21 = -i21;
                    }
                    if (i19 > i20 || i19 > i21) {
                        i14 = i20 <= i21 ? i16 : i17;
                    }
                    bArrEnsureCapacity[i15] = (byte) (bArrEnsureCapacity2[i15] - i14);
                    i12 = i15 + 1;
                }
                int i22 = i2;
                deflaterOutputStream.write(i22);
                i3 = i;
                deflaterOutputStream.write(bArrEnsureCapacity, i3, width);
                i7++;
                byte[] bArr = bArrEnsureCapacity3;
                bArrEnsureCapacity3 = bArrEnsureCapacity2;
                bArrEnsureCapacity2 = bArr;
                i4 = i22;
            }
            pixels.position(iPosition);
            deflaterOutputStream.finish();
            this.buffer.endChunk(dataOutputStream);
            this.buffer.writeInt(1229278788);
            this.buffer.endChunk(dataOutputStream);
            outputStream.flush();
        }

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
            this.deflater.end();
        }

        public static class ChunkBuffer extends DataOutputStream {
            public final ByteArrayOutputStream buffer;
            public final CRC32 crc;

            public ChunkBuffer(int i) {
                this(new ByteArrayOutputStream(i), new CRC32());
            }

            public ChunkBuffer(ByteArrayOutputStream byteArrayOutputStream, CRC32 crc32) {
                super(new CheckedOutputStream(byteArrayOutputStream, crc32));
                this.buffer = byteArrayOutputStream;
                this.crc = crc32;
            }

            public void endChunk(DataOutputStream dataOutputStream) throws IOException {
                flush();
                dataOutputStream.writeInt(this.buffer.size() - 4);
                this.buffer.writeTo(dataOutputStream);
                dataOutputStream.writeInt((int) this.crc.getValue());
                this.buffer.reset();
                this.crc.reset();
            }
        }
    }
}
