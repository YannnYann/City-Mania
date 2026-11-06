package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ci, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2266ci {
    public static String[] A04 = {"FH7QfcEZGyvjBlIYHtv1m0qDr", "5Zl2dwblbkX6m8G166WzuMI2Ub9aKUHq", "E7nh1WR8P86jgbeK1FJQDa8Vw4em1h", "K3wrG2m6xhACXNATMrYnZq9Olq75yJin", "DCU3IqRwRRhIh", "X0FWhz9pDXt", "O3SkkilEjtUjYXGkQYvFa6FeWEKjSgkj", "oroUdAH2J0J"};
    public static final byte[] A05 = {0, 0, 1};
    public int A00;
    public int A01;
    public byte[] A02;
    public boolean A03;

    public C2266ci(int i) {
        this.A02 = new byte[i];
    }

    public final void A00() {
        this.A03 = false;
        this.A00 = 0;
        this.A01 = 0;
    }

    public final void A01(byte[] bArr, int i, int i2) {
        if (!this.A03) {
            return;
        }
        int i3 = i2 - i;
        int length = this.A02.length;
        if (A04[2].length() != 30) {
            throw new RuntimeException();
        }
        A04[3] = "GV7Yq15ZE6iqVCSYqSdqBHA6ixR9fJcn";
        int readLength = this.A00;
        if (length < readLength + i3) {
            byte[] bArr2 = this.A02;
            int i4 = this.A00;
            if (A04[0].length() != 25) {
                A04[6] = "hbLrfcvatORDSrDn2C3KvYG2coE3E3li";
                int readLength2 = (i4 + i3) * 1;
                this.A02 = Arrays.copyOf(bArr2, readLength2);
            } else {
                A04[6] = "tno0zaTLTLAKNutgeWkuviadQVo650E6";
                int readLength3 = (i4 + i3) * 2;
                this.A02 = Arrays.copyOf(bArr2, readLength3);
            }
        }
        byte[] bArr3 = this.A02;
        int readLength4 = this.A00;
        System.arraycopy(bArr, i, bArr3, readLength4, i3);
        int readLength5 = this.A00;
        this.A00 = readLength5 + i3;
    }

    public final boolean A02(int i, int i2) {
        if (this.A03) {
            this.A00 -= i2;
            if (this.A01 == 0 && i == 181) {
                this.A01 = this.A00;
            } else {
                this.A03 = false;
                return true;
            }
        } else if (i == 179) {
            this.A03 = true;
        }
        A01(A05, 0, A05.length);
        return false;
    }
}
