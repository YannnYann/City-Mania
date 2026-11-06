package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2345e0 extends InputStream {
    public static String[] A07 = {"bEzky2QjozAtm", "SFzbQHCgVaXzl5HZxUMeuUAzash8zace", "xJ59VLn5t0GKJrcJWDYRlEZJhy9Ayciy", "72dA8iSMeNH0GegXxdASbQ2n8A3mFblf", "ExLcXB5y5zBWtNE8ckh4Agh", "BjZ", "sGzGeJcI9Px", "jN0"};
    public int A00;
    public long A01;
    public TE A02;
    public final Uri A03;
    public final NN A04;
    public final C1642Hh A05;
    public final String A06;

    public C2345e0(C1642Hh c1642Hh, Uri uri, NN nn) throws IOException {
        this.A05 = c1642Hh;
        this.A04 = nn;
        this.A03 = uri;
        this.A06 = C2247cP.A09(this.A05, this.A03);
        A00(0);
    }

    private void A00(int i) throws IOException {
        if (this.A02 != null) {
            this.A02.close();
        }
        this.A02 = this.A04.A5r();
        this.A01 = (int) this.A02.AHv(new NX(this.A03, i, -1L, this.A06));
    }

    @Override // java.io.InputStream
    public final int available() {
        return ((int) this.A01) - this.A00;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.A02.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        byte[] b = new byte[1];
        return read(b);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.A02.read(bArr, i, i2);
        int read = this.A00;
        this.A00 = read + i3;
        return i3;
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        long skipped = this.A01 - ((long) this.A00);
        if (skipped <= 0) {
            return 0L;
        }
        String[] strArr = A07;
        if (strArr[5].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[5] = "M7q";
        strArr2[7] = "37t";
        if (j > skipped) {
            j = skipped;
        }
        this.A00 += (int) j;
        A00(this.A00);
        return j;
    }
}
