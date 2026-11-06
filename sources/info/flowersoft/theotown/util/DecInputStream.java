package info.flowersoft.theotown.util;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public class DecInputStream extends BufferedInputStream {
    public int markedPos;
    public final int pA;
    public final int pB;
    public final int pC;
    public int pos;

    public DecInputStream(InputStream inputStream, int i) {
        super(inputStream);
        if (i == 0) {
            this.pA = 163;
            this.pB = 101;
            this.pC = 149;
        } else {
            this.pA = (i >> 1) & 253;
            this.pB = (i >> 11) & 253;
            this.pC = (i >> 21) & 253;
        }
        try {
            int i2 = super.read();
            this.pos = (((i2 * 16741) + ((i >> 27) & 15)) * this.pA) + (this.pC * i2) + this.pB;
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int i;
        i = super.read();
        if (i >= 0) {
            int i2 = this.pos;
            i ^= i2;
            this.pos = i2 + this.pA;
        }
        return i;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        i3 = super.read(bArr, i, i2);
        int i4 = i + i3;
        while (i < i4) {
            byte b = bArr[i];
            int i5 = this.pos;
            bArr[i] = (byte) (b ^ i5);
            this.pos = i5 + this.pA;
            i++;
        }
        return i3;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        super.mark(i);
        this.markedPos = this.pos;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.pos = this.markedPos;
    }
}
