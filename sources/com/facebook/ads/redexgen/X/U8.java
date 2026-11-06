package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class U8 implements InterfaceC1703Jt {
    public static byte[] A05;
    public static String[] A06 = {"EQvdruYLxTDiWyNOhenvQ2afYrxJTL5D", "1CELPUEYQmweIKZYqHblcQN", "Qyt0hZyK6WAxXiYqPw90O1wELTqz9PzO", "wssYaw1PYjXDFvrNQBbao08KssjvD7ow", "5hwC4o8BhLjr3fFgxvSf1R", "rgl6ZuQUBOYIfxF6Chm90e8tVud3RCYy", "mHLEuJfGv4I7TWa81XzCpAmHz29imtfA", "jqNmgRKprS0bfipYRJ9soaMo1"};
    public static final InterfaceC1702Js<U8> A07;
    public static final String A08;
    public static final String A09;
    public int A00;
    public final int A01;
    public final int A02;
    public final String A03;
    public final VC[] A04;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 39);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A05 = new byte[]{76, 15, 3, 1, 14, 5, 2, 9, 8, 76, 5, 2, 76, 3, 2, 9, 76, 56, 30, 13, 15, 7, 43, 30, 3, 25, 28, 86, 76, 75, 79, 72, 64, 28, 26, 9, 11, 3, 72, 123, 124, 116, 40, 46, 61, 63, 55, 124, 108, 117, 124, 61, 50, 56, 124, 123, 54, 53, 24, 23, 23, 20, 3, 20, 31, 5, 81, 37, 3, 16, 18, 26, 54, 3, 30, 4, 1, 90, 87, 88, 81, 67, 87, 81, 83, 69, 44, 49, 50, 59, 126, 56, 50, 63, 57, 45, 114, 105, 99};
    }

    static {
        A05();
        A08 = N1.A0h(0);
        A09 = N1.A0h(1);
        A07 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.U9
            @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
            public final InterfaceC1703Jt A7F(Bundle bundle) {
                return U8.A01(bundle);
            }
        };
    }

    public U8(String str, VC... vcArr) {
        AbstractC1747Ln.A07(vcArr.length > 0);
        this.A03 = str;
        this.A04 = vcArr;
        this.A01 = vcArr.length;
        int iA01 = L8.A01(vcArr[0].A0W);
        this.A02 = iA01 == -1 ? L8.A01(vcArr[0].A0S) : iA01;
        A04();
    }

    public U8(VC... vcArr) {
        this(A02(0, 0, 19), vcArr);
    }

    public static int A00(int i) {
        return i | 16384;
    }

    public static /* synthetic */ U8 A01(Bundle bundle) {
        List listA01;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A08);
        if (parcelableArrayList == null) {
            listA01 = XR.A01();
        } else {
            InterfaceC1702Js<VC> interfaceC1702Js = VC.A0b;
            if (A06[3].charAt(3) == 'n') {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[4] = "kxVstqoe40upD9pEm8C8QW";
            strArr[1] = "CnVQAruXPcMxLneosLS85Et";
            listA01 = C1753Lt.A01(interfaceC1702Js, parcelableArrayList);
        }
        String id = bundle.getString(A09, A02(0, 0, 19));
        return new U8(id, (VC[]) listA01.toArray(new VC[0]));
    }

    public static String A03(String str) {
        return (str == null || str.equals(A02(96, 3, 32))) ? A02(0, 0, 19) : str;
    }

    private void A04() {
        String strA03 = A03(this.A04[0].A0V);
        int iA00 = A00(this.A04[0].A0E);
        for (int i = 1; i < this.A04.length; i++) {
            String language = this.A04[i].A0V;
            if (!strA03.equals(A03(language))) {
                String str = this.A04[0].A0V;
                String str2 = this.A04[i].A0V;
                String language2 = A02(77, 9, 17);
                A06(language2, str, str2, i);
                return;
            }
            if (iA00 != A00(this.A04[i].A0E)) {
                String binaryString = Integer.toBinaryString(this.A04[0].A0E);
                String binaryString2 = Integer.toBinaryString(this.A04[i].A0E);
                String language3 = A02(86, 10, Sdk.SDKError.Reason.TPAT_ERROR_VALUE);
                A06(language3, binaryString, binaryString2, i);
                return;
            }
        }
    }

    public static void A06(String str, String str2, String str3, int i) {
        MV.A08(A02(67, 10, 86), A02(0, 0, 19), new IllegalStateException(A02(57, 10, 86) + str + A02(0, 30, 75) + str2 + A02(39, 17, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE) + str3 + A02(30, 9, 79) + i + A02(56, 1, 56)));
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A07(com.facebook.ads.redexgen.X.VC r3) {
        /*
            r2 = this;
            r1 = 0
        L1:
            com.facebook.ads.redexgen.X.VC[] r0 = r2.A04
            int r0 = r0.length
            if (r1 >= r0) goto L10
            com.facebook.ads.redexgen.X.VC[] r0 = r2.A04
            r0 = r0[r1]
            if (r3 != r0) goto Ld
            return r1
        Ld:
            int r1 = r1 + 1
            goto L1
        L10:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.U8.A07(com.facebook.ads.redexgen.X.VC):int");
    }

    public final VC A08(int i) {
        return this.A04[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        String[] strArr = A06;
        if (strArr[4].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A06[7] = "LY2ZyCGtHfQquYaBGbQVgLAG2";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        U8 u8 = (U8) obj;
        return this.A03.equals(u8.A03) && Arrays.equals(this.A04, u8.A04);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            int result = this.A03.hashCode();
            this.A00 = (((17 * 31) + result) * 31) + Arrays.hashCode(this.A04);
        }
        int result2 = this.A00;
        return result2;
    }
}
