package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8f, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C14228f implements Q9 {
    public static String[] A07 = {"NSnLbilPUjcTj06JzEIfGMXhD0l0FhYd", "u7qJdEPLTAj1fLwFI4TIDcQPHh319i", "xHHK7pKSUEJecMw3", "xs1tR1jlgWpWX8uOT6x8GXo2ahz15pgx", "t6B5NiVvuJ632Xc1TESSqSbMpRgb08am", "nCicYR5x", "d", "EcttRbUZvqemmwRQ23UaNYmwdCvKctKD"};
    public int A00;
    public int A01;
    public long A02;
    public byte[] A03;
    public final long A04;
    public final TE A05;
    public final byte[] A06;

    public C14228f(TE te, long j, long j2) {
        this(te, j, j2, false);
    }

    public C14228f(TE te, long j, long j2, boolean z) {
        this.A05 = te;
        this.A02 = j;
        this.A04 = j2;
        this.A03 = new byte[65536];
        this.A06 = new byte[4096];
    }

    private int A00(int i) {
        int bytesSkipped = Math.min(this.A00, i);
        A05(bytesSkipped);
        return bytesSkipped;
    }

    private int A01(byte[] bArr, int i, int i2) {
        if (this.A00 == 0) {
            return 0;
        }
        int iMin = Math.min(this.A00, i2);
        System.arraycopy(this.A03, 0, bArr, i, iMin);
        A05(iMin);
        return iMin;
    }

    private int A02(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        if (!Thread.interrupted()) {
            int i4 = this.A05.read(bArr, i + i3, i2 - i3);
            if (i4 == -1) {
                if (i3 == 0 && z) {
                    return -1;
                }
                throw new EOFException();
            }
            return i3 + i4;
        }
        throw new InterruptedIOException();
    }

    private void A03(int i) {
        if (i != -1) {
            this.A02 += (long) i;
        }
    }

    private void A04(int i) {
        int i2 = this.A01 + i;
        int requiredLength = this.A03.length;
        if (i2 > requiredLength) {
            int requiredLength2 = this.A03.length;
            int requiredLength3 = 524288 + i2;
            int newPeekCapacity = N1.A07(requiredLength2 * 2, 65536 + i2, requiredLength3);
            this.A03 = Arrays.copyOf(this.A03, newPeekCapacity);
        }
    }

    private void A05(int i) {
        this.A00 -= i;
        this.A01 = 0;
        byte[] bArr = this.A03;
        if (this.A00 < this.A03.length - 524288) {
            bArr = new byte[this.A00 + 65536];
        }
        byte[] newPeekBuffer = this.A03;
        System.arraycopy(newPeekBuffer, i, bArr, 0, this.A00);
        this.A03 = bArr;
    }

    public final boolean A06(int i, boolean z) throws IOException {
        int iA00 = A00(i);
        while (iA00 < i && iA00 != -1) {
            int bytesSkipped = this.A06.length;
            iA00 = A02(this.A06, -iA00, Math.min(i, bytesSkipped + iA00), iA00, z);
        }
        A03(iA00);
        return iA00 != -1;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void A4X(int i) throws IOException {
        A4Y(i, false);
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final boolean A4Y(int i, boolean z) throws IOException {
        A04(i);
        int iA02 = this.A00 - this.A01;
        while (iA02 < i) {
            iA02 = A02(this.A03, this.A01, i, iA02, z);
            if (iA02 == -1) {
                return false;
            }
            int bytesPeeked = this.A01;
            this.A00 = bytesPeeked + iA02;
        }
        int i2 = this.A01 + i;
        if (A07[7].charAt(14) == 'S') {
            throw new RuntimeException();
        }
        A07[3] = "xqdMk2X1jm5MI0pfv80L2ComanMZ0Kqm";
        this.A01 = i2;
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final long A90() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final long A9L() {
        return this.A02 + ((long) this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final long A9Q() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final Uri AA2() {
        return this.A05.AA2();
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final int AI5(byte[] bArr, int i, int i2) throws IOException {
        int iMin;
        A04(i2);
        int bytesPeeked = this.A00 - this.A01;
        if (bytesPeeked == 0) {
            iMin = A02(this.A03, this.A01, i2, 0, true);
            if (iMin == -1) {
                return -1;
            }
            int peekBufferRemainingBytes = this.A00;
            this.A00 = peekBufferRemainingBytes + iMin;
        } else {
            iMin = Math.min(i2, bytesPeeked);
        }
        byte[] bArr2 = this.A03;
        int peekBufferRemainingBytes2 = this.A01;
        System.arraycopy(bArr2, peekBufferRemainingBytes2, bArr, i, iMin);
        int peekBufferRemainingBytes3 = this.A01;
        this.A01 = peekBufferRemainingBytes3 + iMin;
        return iMin;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void AI6(byte[] bArr, int i, int i2) throws IOException {
        AI7(bArr, i, i2, false);
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final boolean AI7(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (!A4Y(i2, z)) {
            return false;
        }
        System.arraycopy(this.A03, this.A01 - i2, bArr, i, i2);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final boolean AIe(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int iA01 = A01(bArr, i, i2);
        while (iA01 < i2 && iA01 != -1) {
            iA01 = A02(bArr, i, i2, iA01, z);
        }
        A03(iA01);
        return iA01 != -1;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void AK3() {
        this.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final int ALI(int i) throws IOException {
        int iA00 = A00(i);
        if (iA00 == 0) {
            byte[] bArr = this.A06;
            int bytesSkipped = this.A06.length;
            iA00 = A02(bArr, 0, Math.min(i, bytesSkipped), 0, true);
        }
        A03(iA00);
        if (A07[7].charAt(14) == 'S') {
            throw new RuntimeException();
        }
        A07[7] = "NijKbpcTSG97VPyZ2VOYyVvidztZu1Gm";
        return iA00;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void ALL(int i) throws IOException {
        A06(i, false);
    }

    @Override // com.facebook.ads.redexgen.X.Q9, com.facebook.ads.redexgen.X.KR
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int bytesRead = A01(bArr, i, i2);
        if (bytesRead == 0) {
            bytesRead = A02(bArr, i, i2, 0, true);
        }
        A03(bytesRead);
        return bytesRead;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void readFully(byte[] bArr, int i, int i2) throws IOException {
        AIe(bArr, i, i2, false);
    }
}
