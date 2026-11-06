package com.facebook.ads.redexgen.X;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1748Lo extends OutputStream {
    public static byte[] A02;
    public static String[] A03 = {"N4LOohCr7uAcXM5M1YHx3RtuyT7xq1Wv", "h9ySK30ONKxEx0a41I355Lc4G3ja1fW6", "66hjKg", "nD62wBBG4QNJfRqYXFgrI7wCUY0Atlyz", "gr8VL0beA86YZXgyNLqcOe6ee0pl7lhg", "WfkbJfZv2jx1jTU7C5", "DEWe3qmuHSzSbodSOnqlm3mY9JsOJdVX", "9rGAEY6uN2AFdldvYqzxYh2QcrwmjBeM"};
    public boolean A00 = false;
    public final FileOutputStream A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{76, 121, 98, 96, 100, 110, 75, 100, 97, 104, 102, 65, 73, 76, 69, 68, 0, 84, 79, 0, 83, 89, 78, 67, 0, 70, 73, 76, 69, 0, 68, 69, 83, 67, 82, 73, 80, 84, 79, 82, 26};
    }

    static {
        A01();
    }

    public C1748Lo(File file) throws FileNotFoundException {
        this.A01 = new FileOutputStream(file);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.A00) {
            return;
        }
        if (A03[3].charAt(1) != 'D') {
            throw new RuntimeException();
        }
        A03[2] = "W6kF8z";
        this.A00 = true;
        flush();
        try {
            this.A01.getFD().sync();
        } catch (IOException e) {
            MV.A0A(A00(0, 10, 7), A00(10, 31, 42), e);
        }
        this.A01.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.A01.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.A01.write(i);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.A01.write(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.A01.write(bArr, i, i2);
    }
}
