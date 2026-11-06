package com.facebook.ads.redexgen.X;

import android.view.View;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2624iZ {
    public static byte[] A05;
    public int A00;
    public int A01;
    public boolean A02;
    public boolean A03;
    public final /* synthetic */ J7 A04;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{13, 1, 76, 98, 78, 78, 83, 69, 72, 79, 64, 85, 68, 28, 111, 99, 46, 15, 34, 58, 44, 54, 55, 5, 49, 44, 46, 6, 45, 39, 126, 91, 87, 26, 33, 22, 27, 30, 19, 74, 116, 91, 86, 93, 90, 71, 124, 91, 83, 90, 78, 88, 101, 90, 70, 92, 65, 92, 90, 91, 8};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A05(View view) {
        int iA05 = this.A04.A04.A05();
        if (iA05 >= 0) {
            A04(view);
            return;
        }
        this.A01 = this.A04.A1o(view);
        if (this.A02) {
            int iA07 = (this.A04.A04.A07() - iA05) - this.A04.A04.A0D(view);
            this.A00 = this.A04.A04.A07() - iA07;
            if (iA07 > 0) {
                int iA0E = this.A00 - this.A04.A04.A0E(view);
                int iA0B = this.A04.A04.A0B();
                int iMin = iA0E - (Math.min(this.A04.A04.A0G(view) - iA0B, 0) + iA0B);
                if (iMin < 0) {
                    this.A00 += Math.min(iA07, -iMin);
                    return;
                }
                return;
            }
            return;
        }
        int iA0G = this.A04.A04.A0G(view);
        int iA0B2 = iA0G - this.A04.A04.A0B();
        this.A00 = iA0G;
        if (iA0B2 > 0) {
            int iA072 = (this.A04.A04.A07() - Math.min(0, (this.A04.A04.A07() - iA05) - this.A04.A04.A0D(view))) - (this.A04.A04.A0E(view) + iA0G);
            if (iA072 < 0) {
                this.A00 -= Math.min(iA0B2, -iA072);
            }
        }
    }

    public C2624iZ(J7 j7) {
        this.A04 = j7;
        A03();
    }

    public final void A02() {
        int iA0B;
        if (this.A02) {
            iA0B = this.A04.A04.A07();
        } else {
            iA0B = this.A04.A04.A0B();
        }
        this.A00 = iA0B;
    }

    public final void A03() {
        this.A01 = -1;
        this.A00 = Integer.MIN_VALUE;
        this.A02 = false;
        this.A03 = false;
    }

    public final void A04(View view) {
        if (this.A02) {
            this.A00 = this.A04.A04.A0D(view) + this.A04.A04.A05();
        } else {
            this.A00 = this.A04.A04.A0G(view);
        }
        this.A01 = this.A04.A1o(view);
    }

    public final boolean A06(View view, C2660jB c2660jB) {
        C2646ix c2646ix = (C2646ix) view.getLayoutParams();
        return !c2646ix.A02() && c2646ix.A00() >= 0 && c2646ix.A00() < c2660jB.A03();
    }

    public final String toString() {
        return A00(40, 21, 73) + this.A01 + A00(0, 14, 93) + this.A00 + A00(14, 17, 63) + this.A02 + A00(31, 9, 11) + this.A03 + '}';
    }
}
