package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ZG {
    public static String[] A04 = {"6cfK2SEhcNY0t6O61IIkSh1cdjy9AVTs", "S6FRotj9S3LxkYZUIYwX0cdvC", "aXgbMraHzHmVfTDwRL7UINjwNdtKq6Qj", "iwRpyNVSDVb4jhaYl22seJzB5", "e1e9fmI8GHnDflnZGyuKFj4jIKXXBLJn", "dhtXRyTgGs6WTpWM7DETJJzdxUR7SZQj", "eCD6AOTXSD0hJrKWNappBoXtCFtNYv7T", "WMy6pEJ0P9VZ7a"};
    public int A00;
    public int A01;
    public int A02;
    public byte[] A03;

    public ZG(byte[] bArr, int i, int i2) {
        A08(bArr, i, i2);
    }

    private int A00() {
        int i = 0;
        while (true) {
            boolean zA0A = A0A();
            if (A04[4].charAt(18) == 't') {
                throw new RuntimeException();
            }
            A04[7] = "eugSG2kUTvqB10uBRDPWNd";
            if (!zA0A) {
                i++;
            } else {
                int i2 = (1 << i) - 1;
                int leadingZeros = i > 0 ? A05(i) : 0;
                return i2 + leadingZeros;
            }
        }
    }

    private void A01() {
        AbstractC1747Ln.A08(this.A02 >= 0 && (this.A02 < this.A01 || (this.A02 == this.A01 && this.A00 == 0)));
    }

    private boolean A02(int i) {
        return 2 <= i && i < this.A01 && this.A03[i] == 3 && this.A03[i + (-2)] == 0 && this.A03[i + (-1)] == 0;
    }

    public final int A03() {
        int iA00 = A00();
        int codeNum = iA00 % 2;
        int i = codeNum == 0 ? -1 : 1;
        int codeNum2 = iA00 + 1;
        return i * (codeNum2 / 2);
    }

    public final int A04() {
        return A00();
    }

    public final int A05(int i) {
        int i2 = 0;
        int returnValue = this.A00;
        this.A00 = returnValue + i;
        while (true) {
            int returnValue2 = this.A00;
            if (returnValue2 <= 8) {
                break;
            }
            int returnValue3 = this.A00;
            this.A00 = returnValue3 - 8;
            byte[] bArr = this.A03;
            int returnValue4 = this.A02;
            int i3 = bArr[returnValue4] & 255;
            int returnValue5 = this.A00;
            i2 |= i3 << returnValue5;
            int i4 = this.A02;
            int returnValue6 = this.A02;
            if (!A02(returnValue6 + 1)) {
                i = 1;
            }
            this.A02 = i4 + i;
        }
        byte[] bArr2 = this.A03;
        int returnValue7 = this.A02;
        int i5 = bArr2[returnValue7] & 255;
        int returnValue8 = this.A00;
        int i6 = i2 | (i5 >> (8 - returnValue8));
        int returnValue9 = (-1) >>> (32 - i);
        int i7 = i6 & returnValue9;
        int returnValue10 = this.A00;
        if (returnValue10 == 8) {
            this.A00 = 0;
            int i8 = this.A02;
            int returnValue11 = this.A02;
            this.A02 = i8 + (A02(returnValue11 + 1) ? 2 : 1);
        }
        A01();
        return i7;
    }

    public final void A06() {
        int i = this.A00 + 1;
        this.A00 = i;
        if (i == 8) {
            this.A00 = 0;
            this.A02 += A02(this.A02 + 1) ? 2 : 1;
        }
        A01();
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0026 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A07(int r5) {
        /*
            r4 = this;
            int r3 = r4.A02
            int r2 = r5 / 8
            int r0 = r4.A02
            int r0 = r0 + r2
            r4.A02 = r0
            int r1 = r4.A00
            int r0 = r2 * 8
            int r5 = r5 - r0
            int r1 = r1 + r5
            r4.A00 = r1
            int r1 = r4.A00
            r0 = 7
            if (r1 <= r0) goto L22
            int r0 = r4.A02
            int r0 = r0 + 1
            r4.A02 = r0
            int r0 = r4.A00
            int r0 = r0 + (-8)
            r4.A00 = r0
        L22:
            int r1 = r3 + 1
        L24:
            int r0 = r4.A02
            if (r1 > r0) goto L39
            boolean r0 = r4.A02(r1)
            if (r0 == 0) goto L36
            int r0 = r4.A02
            int r0 = r0 + 1
            r4.A02 = r0
            int r1 = r1 + 2
        L36:
            int r1 = r1 + 1
            goto L24
        L39:
            r4.A01()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZG.A07(int):void");
    }

    public final void A08(byte[] bArr, int i, int i2) {
        this.A03 = bArr;
        this.A02 = i;
        this.A01 = i2;
        this.A00 = 0;
        A01();
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0009 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A09() {
        /*
            r8 = this;
            int r7 = r8.A02
            int r2 = r8.A00
            r6 = 0
        L5:
            int r1 = r8.A02
            int r0 = r8.A01
            if (r1 >= r0) goto L14
            boolean r0 = r8.A0A()
            if (r0 != 0) goto L14
            int r6 = r6 + 1
            goto L5
        L14:
            int r1 = r8.A02
            int r0 = r8.A01
            r5 = 0
            r4 = 1
            if (r1 != r0) goto L42
            r3 = 1
        L1d:
            r8.A02 = r7
            r8.A00 = r2
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.ZG.A04
            r0 = 7
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 20
            if (r1 == r0) goto L44
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.ZG.A04
            java.lang.String r1 = "qlgz1R2XdR7h8Rrer08PAKYmOrQRjfIL"
            r0 = 4
            r2[r0] = r1
            if (r3 != 0) goto L41
            int r0 = r6 * 2
            int r0 = r0 + r4
            boolean r0 = r8.A0B(r0)
            if (r0 == 0) goto L41
            r5 = 1
        L41:
            return r5
        L42:
            r3 = 0
            goto L1d
        L44:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZG.A09():boolean");
    }

    public final boolean A0A() {
        boolean returnValue = (this.A03[this.A02] & (Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE >> this.A00)) != 0;
        A06();
        return returnValue;
    }

    public final boolean A0B(int i) {
        int numBytes = this.A02;
        int oldByteOffset = i / 8;
        int i2 = this.A02 + oldByteOffset;
        int newBitOffset = (this.A00 + i) - (oldByteOffset * 8);
        if (newBitOffset > 7) {
            i2++;
            newBitOffset -= 8;
        }
        int i3 = numBytes + 1;
        while (i3 <= i2 && i2 < this.A01) {
            if (A02(i3)) {
                i2++;
                int numBytes2 = A04[5].charAt(21);
                if (numBytes2 == 117) {
                    throw new RuntimeException();
                }
                String[] strArr = A04;
                strArr[2] = "qNIfVaT7niohBV4nPcXHWNnwvet2BOdk";
                strArr[6] = "8WraZM4RorbcJSgLTXU1u2Z8JWtChySX";
                i3 += 2;
            }
            i3++;
        }
        if (i2 >= this.A01) {
            return i2 == this.A01 && newBitOffset == 0;
        }
        return true;
    }
}
