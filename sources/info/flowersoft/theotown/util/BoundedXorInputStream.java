package info.flowersoft.theotown.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BoundedXorInputStream.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BoundedXorInputStream extends FilterInputStream {
    public final int len;
    public int markPos;
    public final byte[] mask;
    public int pos;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BoundedXorInputStream(InputStream input, byte[] mask, int i) {
        super(input);
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(mask, "mask");
        this.mask = mask;
        this.len = i;
        if (mask.length == 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (i > 0) {
            return;
        }
        throw new IllegalArgumentException(("Input stream of length " + i).toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return this.len - this.pos;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.pos >= this.len) {
            return -1;
        }
        int i = ((FilterInputStream) this).in.read();
        if (i < 0) {
            return i;
        }
        byte[] bArr = this.mask;
        int i2 = this.pos;
        this.pos = i2 + 1;
        return i ^ (bArr[i2 % bArr.length] & 255);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b, int i, int i2) throws IOException {
        Intrinsics.checkNotNullParameter(b, "b");
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = read();
            if (i5 < 0) {
                break;
            }
            b[i + i4] = (byte) i5;
            i3++;
        }
        if (i3 == 0) {
            return -1;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        this.markPos = this.pos;
        super.mark(i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        this.pos = this.markPos;
        super.reset();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = super.skip(j);
        this.pos += (int) jSkip;
        return jSkip;
    }
}
