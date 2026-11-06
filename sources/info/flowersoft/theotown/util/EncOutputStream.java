package info.flowersoft.theotown.util;

import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class EncOutputStream extends FilterOutputStream {
    public final int pA;
    public final int pB;
    public final int pC;
    public int pos;
    public final int salt;

    public EncOutputStream(OutputStream outputStream, int i) throws IOException {
        this(outputStream, new Random().nextInt(), i);
    }

    public EncOutputStream(OutputStream outputStream, int i, int i2) throws IOException {
        super(outputStream);
        this.pos = 0;
        int i3 = i & 255;
        this.salt = i3;
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        bufferedOutputStream.write(i3);
        bufferedOutputStream.flush();
        this.pos = (i3 * 16741) + ((i2 >> 27) & 15);
        if (i2 == 0) {
            this.pA = 163;
            this.pB = 101;
            this.pC = 149;
        } else {
            this.pA = (i2 >> 1) & 253;
            this.pB = (i2 >> 11) & 253;
            this.pC = (i2 >> 21) & 253;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        int i2 = this.pos;
        this.pos = i2 + 1;
        super.write(pack(i, i2, this.salt));
    }

    public byte pack(int i, int i2, int i3) {
        return (byte) (i ^ ((((this.pA * i2) + this.pB) + (this.pC * i3)) & 255));
    }
}
