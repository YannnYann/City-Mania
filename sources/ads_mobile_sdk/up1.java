package ads_mobile_sdk;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class up1 extends InputStream {
    private Iterator<ByteBuffer> a;
    private ByteBuffer b;
    private int c = 0;
    private int d;
    private int e;
    private boolean f;
    private byte[] g;
    private int h;

    public up1(Iterable<ByteBuffer> iterable) {
        this.a = iterable.iterator();
        for (ByteBuffer byteBuffer : iterable) {
            this.c++;
        }
        this.d = -1;
        if (a()) {
            return;
        }
        this.b = yh1.b;
        this.e = 0;
    }

    private boolean a() {
        ByteBuffer next;
        do {
            this.d++;
            if (!this.a.hasNext()) {
                return false;
            }
            next = this.a.next();
            this.b = next;
        } while (!next.hasRemaining());
        this.e = this.b.position();
        if (this.b.hasArray()) {
            this.f = true;
            this.g = this.b.array();
            this.h = this.b.arrayOffset();
        } else {
            this.f = false;
            this.g = null;
        }
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.d == this.c) {
            return -1;
        }
        if (this.f) {
            int i = this.g[this.e + this.h] & 255;
            a(1);
            return i;
        }
        int i2 = this.b.get(this.e) & 255;
        a(1);
        return i2;
    }

    private void a(int i) {
        int i2 = this.e + i;
        this.e = i2;
        if (i2 == this.b.limit()) {
            a();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.d == this.c) {
            return -1;
        }
        int iLimit = this.b.limit();
        int i3 = this.e;
        int i4 = iLimit - i3;
        if (i2 > i4) {
            i2 = i4;
        }
        if (this.f) {
            System.arraycopy(this.g, i3 + this.h, bArr, i, i2);
            a(i2);
            return i2;
        }
        int iPosition = this.b.position();
        xp1.a(this.b, this.e);
        this.b.get(bArr, i, i2);
        xp1.a(this.b, iPosition);
        a(i2);
        return i2;
    }
}
