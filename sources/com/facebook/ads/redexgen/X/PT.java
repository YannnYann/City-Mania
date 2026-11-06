package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class PT implements InterfaceC2131aX {
    public static byte[] A07;
    public static String[] A08 = {"jK8UhifJWm7LGNT9x83", "ahZWWDw4BvgkwhnavwtotOK5eXTc44sD", "0CXVDnwVFrflXRFnzBkGMOHixzWuntUg", "r2uOtam2DnYk6RfMjVczuds7hDzFwYfy", "Y7xoZaDRXgMa9Ri3FQQYkYI2mX0smZaf", "GcnVxQElwfqOySl79huPeZqc4LwXo1K5", "nNU", "kwtlNLh8EVMEjDqX8RD2nfIBzDSvN"};
    public int A00;
    public int A01;
    public long A02;
    public InterfaceC2130aW A03;
    public final byte[] A06 = new byte[8];
    public final ArrayDeque<C2128aU> A05 = new ArrayDeque<>();
    public final C2136ac A04 = new C2136ac();

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A07 = new byte[]{-68, -31, -23, -44, -33, -36, -41, -109, -40, -33, -40, -32, -40, -31, -25, -109, -25, -20, -29, -40, -109, 90, 127, -121, 114, 125, 122, 117, 49, 119, 125, -128, 114, -123, 49, -124, 122, -117, 118, 75, 49, -56, -19, -11, -32, -21, -24, -29, -97, -24, -19, -13, -28, -26, -28, -15, -97, -14, -24, -7, -28, -71, -97, -69, -36, -38, -47, -42, -49, -120, -51, -44, -51, -43, -51, -42, -36, -120, -37, -47, -30, -51, -94, -120};
    }

    static {
        A05();
    }

    private double A00(Q9 q9, int i) throws IOException {
        long jA02 = A02(q9, i);
        if (i == 4) {
            return Float.intBitsToFloat((int) jA02);
        }
        return Double.longBitsToDouble(jA02);
    }

    @RequiresNonNull
    private long A01(Q9 q9) throws IOException {
        int potentialId;
        int iA01;
        q9.AK3();
        while (true) {
            q9.AI6(this.A06, 0, 4);
            potentialId = C2136ac.A00(this.A06[0]);
            if (potentialId != -1 && potentialId <= 4) {
                iA01 = (int) C2136ac.A01(this.A06, potentialId, false);
                if (this.A03.ABE(iA01)) {
                    break;
                }
            }
            q9.ALL(1);
        }
        q9.ALL(potentialId);
        if (A08[7].length() == 15) {
            throw new RuntimeException();
        }
        A08[6] = "fM7";
        return iA01;
    }

    private long A02(Q9 q9, int i) throws IOException {
        q9.readFully(this.A06, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long value = this.A06[i2] & 255;
            j = (j << 8) | value;
        }
        return j;
    }

    public static String A04(Q9 q9, int i) throws IOException {
        if (i == 0) {
            return A03(0, 0, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        }
        byte[] bArr = new byte[i];
        q9.readFully(bArr, 0, i);
        while (i > 0) {
            int i2 = i - 1;
            if (A08[7].length() == 15) {
                throw new RuntimeException();
            }
            A08[0] = "9767kXh3hsr56EYAJ7AVFn4L";
            if (bArr[i2] != 0) {
                break;
            }
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2131aX
    public final void AAr(InterfaceC2130aW interfaceC2130aW) {
        this.A03 = interfaceC2130aW;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2131aX
    public final boolean AIb(Q9 q9) throws IOException {
        AbstractC1747Ln.A02(this.A03);
        while (true) {
            C2128aU head = this.A05.peek();
            if (head == null || q9.A9Q() < head.A01) {
                if (this.A01 == 0) {
                    long jA05 = this.A04.A05(q9, true, false, 4);
                    if (jA05 == -2) {
                        jA05 = A01(q9);
                    }
                    if (jA05 == -1) {
                        return false;
                    }
                    this.A00 = (int) jA05;
                    this.A01 = 1;
                }
                if (this.A01 == 1) {
                    this.A02 = this.A04.A05(q9, false, true, 8);
                    this.A01 = 2;
                }
                int iA8V = this.A03.A8V(this.A00);
                switch (iA8V) {
                    case 0:
                        q9.ALL((int) this.A02);
                        this.A01 = 0;
                        break;
                    case 1:
                        long jA9Q = q9.A9Q();
                        this.A05.push(new C2128aU(this.A00, jA9Q + this.A02));
                        this.A03.ALS(this.A00, jA9Q, this.A02);
                        this.A01 = 0;
                        return true;
                    case 2:
                        if (this.A02 <= 8) {
                            this.A03.AAv(this.A00, A02(q9, (int) this.A02));
                            this.A01 = 0;
                            return true;
                        }
                        throw L9.A01(A03(41, 22, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE) + this.A02, null);
                    case 3:
                        if (this.A02 <= 2147483647L) {
                            this.A03.ALd(this.A00, A04(q9, (int) this.A02));
                            this.A01 = 0;
                            return true;
                        }
                        throw L9.A01(A03(63, 21, 91) + this.A02, null);
                    case 4:
                        this.A03.A5B(this.A00, (int) this.A02, q9);
                        this.A01 = 0;
                        return true;
                    case 5:
                        if (this.A02 == 4 || this.A02 == 8) {
                            this.A03.A7A(this.A00, A00(q9, (int) this.A02));
                            this.A01 = 0;
                            return true;
                        }
                        throw L9.A01(A03(21, 20, 4) + this.A02, null);
                    default:
                        throw L9.A01(A03(0, 21, 102) + iA8V, null);
                }
            } else {
                this.A03.A6w(this.A05.pop().A00);
                return true;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2131aX
    public final void reset() {
        this.A01 = 0;
        this.A05.clear();
        this.A04.A06();
    }
}
