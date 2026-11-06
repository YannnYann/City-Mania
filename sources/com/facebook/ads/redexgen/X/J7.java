package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.facebook.ads.internal.androidx.support.v7.widget.LinearLayoutManager$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class J7 extends AbstractC2645iw implements InterfaceC2657j8 {
    public static byte[] A0F;
    public static String[] A0G = {"VKH6HNPW", "5SG7ZkmA1SrYT5HpW6e3lHPIEdQjCnoY", "GUFAcNFlkHbDslOxTlAKu2zM5da70L8W", "8EarDdUd0wjX", "ogiAdIZLqFL2ODTGKcli7xbzAuQZVFku", "k0c9canuweazyFazM74f3pFcokchiBr", "yJQv9VjGutzUoxdr6", "vBYUiSK7FkagYmvZS"};
    public int A00;
    public int A01;
    public int A02;
    public LinearLayoutManager$SavedState A03;
    public AbstractC2629ig A04;
    public boolean A05;
    public int A06;
    public C2626ib A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final C2624iZ A0D;
    public final C2625ia A0E;

    public static String A0f(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0h() {
        A0F = new byte[]{30, 25, 1, 22, 27, 30, 19, 87, 24, 5, 30, 18, 25, 3, 22, 3, 30, 24, 25, 77};
    }

    static {
        A0h();
    }

    public J7(Context context) {
        this(context, 1, false);
    }

    public J7(Context context, int i, boolean z) {
        this.A0A = false;
        this.A05 = false;
        this.A0C = false;
        this.A0B = true;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A03 = null;
        this.A0D = new C2624iZ(this);
        this.A0E = new C2625ia();
        this.A06 = 2;
        A3F(i);
        A0t(z);
        A2q(true);
    }

    private final int A0I(int i, C2653j4 c2653j4, C2660jB c2660jB) {
        if (A1T() == 0 || i == 0) {
            return 0;
        }
        this.A07.A0B = true;
        A3E();
        int absDy = i > 0 ? 1 : -1;
        int consumed = Math.abs(i);
        A0k(absDy, consumed, true, c2660jB);
        int i2 = this.A07.A07;
        int layoutDirection = A0L(c2653j4, this.A07, c2660jB, false);
        int i3 = i2 + layoutDirection;
        if (i3 < 0) {
            return 0;
        }
        int absDy2 = consumed > i3 ? absDy * i3 : i;
        int layoutDirection2 = -absDy2;
        this.A04.A0K(layoutDirection2);
        this.A07.A04 = absDy2;
        return absDy2;
    }

    private int A0J(int i, C2653j4 c2653j4, C2660jB c2660jB, boolean z) {
        int gap = this.A04.A07() - i;
        if (gap > 0) {
            int i2 = -A0I(-gap, c2653j4, c2660jB);
            int i3 = i + i2;
            if (z) {
                int gap2 = this.A04.A07();
                if (A0G[0].length() == 7) {
                    throw new RuntimeException();
                }
                A0G[0] = "DiKLRwr5Jced9h1IWYQQBSe";
                int gap3 = gap2 - i3;
                if (gap3 > 0) {
                    this.A04.A0K(gap3);
                    return gap3 + i2;
                }
            }
            return i2;
        }
        return 0;
    }

    private int A0K(int i, C2653j4 c2653j4, C2660jB c2660jB, boolean z) {
        int iA0B;
        int gap = i - this.A04.A0B();
        if (gap > 0) {
            int i2 = -A0I(gap, c2653j4, c2660jB);
            int i3 = i + i2;
            if (z && (iA0B = i3 - this.A04.A0B()) > 0) {
                this.A04.A0K(-iA0B);
                return i2 - iA0B;
            }
            return i2;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a6, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int A0L(com.facebook.ads.redexgen.X.C2653j4 r10, com.facebook.ads.redexgen.X.C2626ib r11, com.facebook.ads.redexgen.X.C2660jB r12, boolean r13) {
        /*
            r9 = this;
            int r6 = r11.A00
            int r0 = r11.A07
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r5) goto L16
            int r0 = r11.A00
            if (r0 >= 0) goto L13
            int r1 = r11.A07
            int r0 = r11.A00
            int r1 = r1 + r0
            r11.A07 = r1
        L13:
            r9.A0q(r10, r11)
        L16:
            int r4 = r11.A00
            int r0 = r11.A02
            int r4 = r4 + r0
            com.facebook.ads.redexgen.X.ia r3 = r9.A0E
        L1d:
            boolean r0 = r11.A09
            if (r0 != 0) goto L23
            if (r4 <= 0) goto L33
        L23:
            boolean r0 = r11.A05(r12)
            if (r0 == 0) goto L33
            r3.A00()
            r9.A3I(r10, r12, r11, r3)
            boolean r0 = r3.A01
            if (r0 == 0) goto L37
        L33:
            int r0 = r11.A00
            int r6 = r6 - r0
            return r6
        L37:
            int r2 = r11.A06
            int r1 = r3.A00
            int r0 = r11.A05
            int r1 = r1 * r0
            int r2 = r2 + r1
            r11.A06 = r2
            boolean r0 = r3.A03
            if (r0 == 0) goto L51
            com.facebook.ads.redexgen.X.ib r0 = r9.A07
            java.util.List<com.facebook.ads.redexgen.X.jE> r0 = r0.A08
            if (r0 != 0) goto L51
            boolean r0 = r12.A07()
            if (r0 != 0) goto L5b
        L51:
            int r1 = r11.A00
            int r0 = r3.A00
            int r1 = r1 - r0
            r11.A00 = r1
            int r0 = r3.A00
            int r4 = r4 - r0
        L5b:
            int r0 = r11.A07
            if (r0 == r5) goto L87
            int r1 = r11.A07
            int r0 = r3.A00
            int r1 = r1 + r0
            r11.A07 = r1
            int r0 = r11.A00
            if (r0 >= 0) goto L84
            int r8 = r11.A07
            int r7 = r11.A00
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.J7.A0G
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 7
            if (r1 == r0) goto La1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.J7.A0G
            java.lang.String r1 = "4Yaap7YPoeEmBfNVznjneaOXF1T3Chf"
            r0 = 5
            r2[r0] = r1
            int r8 = r8 + r7
            r11.A07 = r8
        L84:
            r9.A0q(r10, r11)
        L87:
            if (r13 == 0) goto L1d
            boolean r7 = r3.A02
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.J7.A0G
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 7
            if (r1 == r0) goto La1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.J7.A0G
            java.lang.String r1 = "BoRZmQ3r1kYFEVrzuprqJgVQBsgHE2ov"
            r0 = 1
            r2[r0] = r1
            if (r7 == 0) goto L1d
            goto L33
        La1:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.J7.A0L(com.facebook.ads.redexgen.X.j4, com.facebook.ads.redexgen.X.ib, com.facebook.ads.redexgen.X.jB, boolean):int");
    }

    private int A0M(C2660jB c2660jB) {
        if (A1T() != 0) {
            A3E();
            return AbstractC2664jF.A00(c2660jB, this.A04, A0d(!this.A0B, true), A0c(!this.A0B, true), this, this.A0B);
        }
        if (A0G[5].length() != 31) {
            throw new RuntimeException();
        }
        A0G[5] = "JS1EmTokFkofHdCiZDqGUekHou375gK";
        return 0;
    }

    private int A0N(C2660jB c2660jB) {
        if (A1T() == 0) {
            return 0;
        }
        A3E();
        return AbstractC2664jF.A02(c2660jB, this.A04, A0d(!this.A0B, true), A0c(!this.A0B, true), this, this.A0B, this.A05);
    }

    private int A0O(C2660jB c2660jB) {
        if (A1T() != 0) {
            A3E();
            return AbstractC2664jF.A01(c2660jB, this.A04, A0d(!this.A0B, true), A0c(!this.A0B, true), this, this.A0B);
        }
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[2] = "SnDsIEYZVkVP365fclIsQ2wSHS1GnuqA";
        strArr2[4] = "cd1sjhoNq3y2dBxKlbos6To2J3BafTHs";
        return 0;
    }

    private final int A0P(C2660jB c2660jB) {
        if (c2660jB.A06()) {
            return this.A04.A0C();
        }
        return 0;
    }

    private View A0Q() {
        return A0U(0, A1T());
    }

    private View A0R() {
        return A0U(A1T() - 1, -1);
    }

    private View A0S() {
        return A20(this.A05 ? 0 : A1T() - 1);
    }

    private View A0T() {
        return A20(this.A05 ? A1T() - 1 : 0);
    }

    private final View A0U(int i, int i2) {
        int next;
        int acceptableBoundsFlag;
        int preferredBoundsFlag;
        A3E();
        if (i2 > i) {
            next = 1;
        } else {
            next = i2 < i ? -1 : 0;
        }
        if (next == 0) {
            View viewA20 = A20(i);
            String[] strArr = A0G;
            String str = strArr[6];
            String str2 = strArr[7];
            int length = str.length();
            int next2 = str2.length();
            if (length != next2) {
                throw new RuntimeException();
            }
            A0G[5] = "tEP4S10y6AtQbDA9ff3H424KLTnX0k7";
            return viewA20;
        }
        int preferredBoundsFlag2 = this.A04.A0G(A20(i));
        int next3 = this.A04.A0B();
        if (preferredBoundsFlag2 < next3) {
            acceptableBoundsFlag = 16644;
            preferredBoundsFlag = 16388;
        } else {
            acceptableBoundsFlag = 4161;
            preferredBoundsFlag = 4097;
        }
        int next4 = this.A00;
        if (next4 == 0) {
            return super.A04.A00(i, i2, acceptableBoundsFlag, preferredBoundsFlag);
        }
        return super.A05.A00(i, i2, acceptableBoundsFlag, preferredBoundsFlag);
    }

    private final View A0V(int i, int i2, boolean z, boolean z2) {
        int i3;
        A3E();
        int i4 = 0;
        if (z) {
            i3 = 24579;
        } else {
            i3 = 320;
        }
        if (z2) {
            i4 = 320;
        }
        int i5 = this.A00;
        int acceptableBoundsFlag = A0G[1].charAt(30);
        if (acceptableBoundsFlag != 111) {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[2] = "NnwW0AnvRBQDKBAe7Vp9NN4SqY6y39Zg";
        strArr[4] = "snWQRfIRwdJNOSPMdDWVpUmegwlUrdsl";
        if (i5 == 0) {
            return super.A04.A00(i, i2, i3, i4);
        }
        return super.A05.A00(i, i2, i3, i4);
    }

    private View A0W(C2653j4 c2653j4, C2660jB c2660jB) {
        return A3D(c2653j4, c2660jB, 0, A1T(), c2660jB.A03());
    }

    private View A0X(C2653j4 c2653j4, C2660jB c2660jB) {
        return A3D(c2653j4, c2660jB, A1T() - 1, -1, c2660jB.A03());
    }

    private View A0Y(C2653j4 c2653j4, C2660jB c2660jB) {
        return this.A05 ? A0Q() : A0R();
    }

    private View A0Z(C2653j4 c2653j4, C2660jB c2660jB) {
        return this.A05 ? A0R() : A0Q();
    }

    private View A0a(C2653j4 c2653j4, C2660jB c2660jB) {
        return this.A05 ? A0W(c2653j4, c2660jB) : A0X(c2653j4, c2660jB);
    }

    private View A0b(C2653j4 c2653j4, C2660jB c2660jB) {
        return this.A05 ? A0X(c2653j4, c2660jB) : A0W(c2653j4, c2660jB);
    }

    private View A0c(boolean z, boolean z2) {
        if (this.A05) {
            return A0V(0, A1T(), z, z2);
        }
        return A0V(A1T() - 1, -1, z, z2);
    }

    private View A0d(boolean z, boolean z2) {
        if (this.A05) {
            return A0V(A1T() - 1, -1, z, z2);
        }
        return A0V(0, A1T(), z, z2);
    }

    private final C2626ib A0e() {
        return new C2626ib();
    }

    private void A0g() {
        if (this.A00 == 1 || !A3K()) {
            this.A05 = this.A0A;
            return;
        }
        boolean z = !this.A0A;
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[6] = "rvopS3hSB7itRsuyG";
        strArr2[7] = "9RTUShXs4ZXrU4n03";
        this.A05 = z;
    }

    private void A0i(int i, int i2) {
        this.A07.A00 = this.A04.A07() - i2;
        this.A07.A03 = this.A05 ? -1 : 1;
        this.A07.A01 = i;
        this.A07.A05 = 1;
        this.A07.A06 = i2;
        this.A07.A07 = Integer.MIN_VALUE;
    }

    private void A0j(int i, int i2) {
        this.A07.A00 = i2 - this.A04.A0B();
        this.A07.A01 = i;
        this.A07.A03 = this.A05 ? 1 : -1;
        this.A07.A05 = -1;
        this.A07.A06 = i2;
        this.A07.A07 = Integer.MIN_VALUE;
    }

    private void A0k(int i, int i2, boolean z, C2660jB c2660jB) {
        int iA0B;
        this.A07.A09 = A0u();
        this.A07.A02 = A0P(c2660jB);
        this.A07.A05 = i;
        if (i == 1) {
            this.A07.A02 += this.A04.A08();
            View viewA0S = A0S();
            C2626ib c2626ib = this.A07;
            if (!this.A05) {
                i = 1;
            }
            c2626ib.A03 = i;
            this.A07.A01 = A1o(viewA0S) + this.A07.A03;
            this.A07.A06 = this.A04.A0D(viewA0S);
            iA0B = this.A04.A0D(viewA0S) - this.A04.A07();
        } else {
            View viewA0T = A0T();
            this.A07.A02 += this.A04.A0B();
            this.A07.A03 = this.A05 ? 1 : -1;
            this.A07.A01 = A1o(viewA0T) + this.A07.A03;
            this.A07.A06 = this.A04.A0G(viewA0T);
            iA0B = (-this.A04.A0G(viewA0T)) + this.A04.A0B();
        }
        this.A07.A00 = i2;
        if (z) {
            C2626ib c2626ib2 = this.A07;
            int scrollingOffset = c2626ib2.A00;
            c2626ib2.A00 = scrollingOffset - iA0B;
        }
        this.A07.A07 = iA0B;
        if (A0G[0].length() == 7) {
            throw new RuntimeException();
        }
        A0G[1] = "rmKnvh8FAT7bzRdUkYGsCRYa1fX1DRoz";
    }

    private void A0l(C2624iZ c2624iZ) {
        A0i(c2624iZ.A01, c2624iZ.A00);
    }

    private void A0m(C2624iZ c2624iZ) {
        A0j(c2624iZ.A01, c2624iZ.A00);
    }

    private void A0n(C2653j4 c2653j4, int i) {
        int iA1T = A1T();
        if (i < 0) {
            return;
        }
        int iA06 = this.A04.A06() - i;
        if (this.A05) {
            for (int i2 = 0; i2 < iA1T; i2++) {
                View viewA20 = A20(i2);
                int childCount = this.A04.A0G(viewA20);
                if (childCount >= iA06) {
                    int childCount2 = this.A04.A0I(viewA20);
                    if (childCount2 >= iA06) {
                    }
                }
                A0p(c2653j4, 0, i2);
                return;
            }
            return;
        }
        for (int i3 = iA1T - 1; i3 >= 0; i3--) {
            View viewA202 = A20(i3);
            int childCount3 = this.A04.A0G(viewA202);
            if (childCount3 >= iA06) {
                int childCount4 = this.A04.A0I(viewA202);
                if (childCount4 >= iA06) {
                }
            }
            int childCount5 = iA1T - 1;
            A0p(c2653j4, childCount5, i3);
            return;
        }
    }

    private void A0o(C2653j4 c2653j4, int i) {
        if (i < 0) {
            return;
        }
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        A0G[0] = "66";
        int iA1T = A1T();
        if (this.A05) {
            for (int i2 = iA1T - 1; i2 >= 0; i2--) {
                View viewA20 = A20(i2);
                int limit = this.A04.A0D(viewA20);
                if (limit <= i) {
                    AbstractC2629ig abstractC2629ig = this.A04;
                    String[] strArr2 = A0G;
                    String str = strArr2[6];
                    String str2 = strArr2[7];
                    int childCount = str.length();
                    int limit2 = str2.length();
                    if (childCount != limit2) {
                        int limit3 = abstractC2629ig.A0H(viewA20);
                        if (limit3 <= i) {
                        }
                    } else {
                        A0G[3] = "uDZbJl3GZvnd0";
                        int limit4 = abstractC2629ig.A0H(viewA20);
                        if (limit4 <= i) {
                        }
                    }
                }
                int limit5 = iA1T - 1;
                A0p(c2653j4, limit5, i2);
                return;
            }
            return;
        }
        for (int i3 = 0; i3 < iA1T; i3++) {
            View viewA202 = A20(i3);
            int iA0D = this.A04.A0D(viewA202);
            int childCount2 = A0G[3].length();
            if (childCount2 == 28) {
                throw new RuntimeException();
            }
            A0G[1] = "ET87P0AumYMcjI6vylu4qFXoEmTHeXod";
            if (iA0D <= i) {
                int limit6 = this.A04.A0H(viewA202);
                if (limit6 <= i) {
                }
            }
            A0p(c2653j4, 0, i3);
            return;
        }
    }

    private void A0p(C2653j4 c2653j4, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 > i) {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                A2H(i3, c2653j4);
            }
            return;
        }
        while (i > i2) {
            A2H(i, c2653j4);
            i--;
        }
    }

    private void A0q(C2653j4 c2653j4, C2626ib c2626ib) {
        if (!c2626ib.A0B || c2626ib.A09) {
            return;
        }
        int i = c2626ib.A05;
        String[] strArr = A0G;
        if (strArr[6].length() == strArr[7].length()) {
            String[] strArr2 = A0G;
            strArr2[2] = "M7iaeQoExhHh03f7x1XNzmreS2Lq1zJK";
            strArr2[4] = "3weclwG7n9RXAySrMV3Jn51LrKgutG4n";
            if (i == -1) {
                int i2 = c2626ib.A07;
                if (A0G[1].charAt(30) == 'o') {
                    A0G[3] = "CiNTyTfZO3PW6tP";
                    A0n(c2653j4, i2);
                    return;
                }
            } else {
                A0o(c2653j4, c2626ib.A07);
                return;
            }
        }
        throw new RuntimeException();
    }

    private void A0r(C2653j4 c2653j4, C2660jB c2660jB, int scrapExtraEnd, int scrapExtraEnd2) {
        if (!c2660jB.A08() || A1T() == 0 || c2660jB.A07() || !A2x()) {
            return;
        }
        int iA0E = 0;
        int scrapExtraStart = 0;
        List<AbstractC2663jE> listA0K = c2653j4.A0K();
        int i = listA0K.size();
        int iA1o = A1o(A20(0));
        for (int scrapSize = 0; scrapSize < i; scrapSize++) {
            AbstractC2663jE abstractC2663jE = listA0K.get(scrapSize);
            if (!abstractC2663jE.A0n()) {
                int direction = 1;
                if ((abstractC2663jE.A0T() < iA1o) != this.A05) {
                    direction = -1;
                }
                if (direction == -1) {
                    iA0E += this.A04.A0E(abstractC2663jE.A0H);
                } else {
                    scrapExtraStart += this.A04.A0E(abstractC2663jE.A0H);
                }
            }
        }
        this.A07.A08 = listA0K;
        if (iA0E > 0) {
            A0j(A1o(A0T()), scrapExtraEnd);
            this.A07.A02 = iA0E;
            this.A07.A00 = 0;
            this.A07.A04();
            A0L(c2653j4, this.A07, c2660jB, false);
        }
        if (scrapExtraStart > 0) {
            A0i(A1o(A0S()), scrapExtraEnd2);
            this.A07.A02 = scrapExtraStart;
            this.A07.A00 = 0;
            this.A07.A04();
            A0L(c2653j4, this.A07, c2660jB, false);
        }
        this.A07.A08 = null;
    }

    private void A0s(C2653j4 c2653j4, C2660jB c2660jB, C2624iZ c2624iZ) {
        if (A0w(c2660jB, c2624iZ)) {
            return;
        }
        boolean zA0v = A0v(c2653j4, c2660jB, c2624iZ);
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        A0G[3] = "XDJ2jDWhUW9a7iN";
        if (zA0v) {
            return;
        }
        c2624iZ.A02();
        c2624iZ.A01 = this.A0C ? c2660jB.A03() - 1 : 0;
    }

    private final void A0t(boolean z) {
        A2p(null);
        if (z == this.A0A) {
            return;
        }
        this.A0A = z;
        A28();
    }

    private final boolean A0u() {
        return this.A04.A09() == 0 && this.A04.A06() == 0;
    }

    private boolean A0v(C2653j4 c2653j4, C2660jB c2660jB, C2624iZ c2624iZ) {
        View viewA0b;
        int iA0B;
        if (A1T() == 0) {
            return false;
        }
        View viewA1y = A1y();
        if (viewA1y != null && c2624iZ.A06(viewA1y, c2660jB)) {
            c2624iZ.A05(viewA1y);
            return true;
        }
        if (this.A08 != this.A0C) {
            return false;
        }
        if (c2624iZ.A02) {
            viewA0b = A0a(c2653j4, c2660jB);
        } else {
            viewA0b = A0b(c2653j4, c2660jB);
        }
        if (viewA0b == null) {
            return false;
        }
        c2624iZ.A04(viewA0b);
        if (!c2660jB.A07() && A2x()) {
            if (this.A04.A0G(viewA0b) >= this.A04.A07() || this.A04.A0D(viewA0b) < this.A04.A0B()) {
                if (c2624iZ.A02) {
                    iA0B = this.A04.A07();
                } else {
                    iA0B = this.A04.A0B();
                }
                c2624iZ.A00 = iA0B;
            }
        }
        return true;
    }

    private boolean A0w(C2660jB c2660jB, C2624iZ c2624iZ) {
        int startGap;
        if (c2660jB.A07() || this.A01 == -1) {
            return false;
        }
        if (this.A01 < 0 || this.A01 >= c2660jB.A03()) {
            this.A01 = -1;
            this.A02 = Integer.MIN_VALUE;
            return false;
        }
        c2624iZ.A01 = this.A01;
        if (this.A03 != null && this.A03.A01()) {
            c2624iZ.A02 = this.A03.A02;
            if (c2624iZ.A02) {
                c2624iZ.A00 = this.A04.A07() - this.A03.A00;
            } else {
                c2624iZ.A00 = this.A04.A0B() + this.A03.A00;
            }
            return true;
        }
        if (this.A02 == Integer.MIN_VALUE) {
            View viewA1z = A1z(this.A01);
            if (viewA1z != null) {
                if (this.A04.A0E(viewA1z) > this.A04.A0C()) {
                    c2624iZ.A02();
                    return true;
                }
                if (this.A04.A0G(viewA1z) - this.A04.A0B() < 0) {
                    c2624iZ.A00 = this.A04.A0B();
                    c2624iZ.A02 = false;
                    return true;
                }
                int endGap = this.A04.A07() - this.A04.A0D(viewA1z);
                if (endGap < 0) {
                    c2624iZ.A00 = this.A04.A07();
                    c2624iZ.A02 = true;
                    return true;
                }
                if (c2624iZ.A02) {
                    int startGap2 = this.A04.A0D(viewA1z);
                    AbstractC2629ig abstractC2629ig = this.A04;
                    String[] strArr = A0G;
                    String str = strArr[2];
                    String str2 = strArr[4];
                    int endGap2 = str.charAt(4);
                    if (endGap2 == str2.charAt(4)) {
                        throw new RuntimeException();
                    }
                    A0G[3] = "ZbIhQvVoqDIGDPkO0OlvW9zioDplzu";
                    startGap = startGap2 + abstractC2629ig.A05();
                } else {
                    startGap = this.A04.A0G(viewA1z);
                }
                c2624iZ.A00 = startGap;
            } else {
                if (A1T() > 0) {
                    View child = A20(0);
                    boolean z = this.A01 < A1o(child);
                    boolean z2 = this.A05;
                    if (A0G[1].charAt(30) != 'o') {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A0G;
                    strArr2[2] = "1tNDA9T9nSDYektAgKE77gOe81bMFJSk";
                    strArr2[4] = "TZYqXNdWGZVKxzfIQyf7YZEk7yb7IRTm";
                    c2624iZ.A02 = z == z2;
                }
                c2624iZ.A02();
            }
            return true;
        }
        c2624iZ.A02 = this.A05;
        if (this.A05) {
            c2624iZ.A00 = this.A04.A07() - this.A02;
        } else {
            c2624iZ.A00 = this.A04.A0B() + this.A02;
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public int A1g(int i, C2653j4 c2653j4, C2660jB c2660jB) {
        if (this.A00 == 1) {
            return 0;
        }
        return A0I(i, c2653j4, c2660jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public int A1h(int i, C2653j4 c2653j4, C2660jB c2660jB) {
        if (this.A00 == 0) {
            return 0;
        }
        int iA0I = A0I(i, c2653j4, c2660jB);
        String[] strArr = A0G;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A0G[3] = "CDnF1shpb";
        return iA0I;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final int A1r(C2660jB c2660jB) {
        return A0M(c2660jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final int A1s(C2660jB c2660jB) {
        return A0N(c2660jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final int A1t(C2660jB c2660jB) {
        return A0O(c2660jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final int A1u(C2660jB c2660jB) {
        return A0M(c2660jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final int A1v(C2660jB c2660jB) {
        return A0N(c2660jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final int A1w(C2660jB c2660jB) {
        return A0O(c2660jB);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final Parcelable A1x() {
        if (this.A03 != null) {
            return new WrappedParcelable(new LinearLayoutManager$SavedState(this.A03));
        }
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = new LinearLayoutManager$SavedState();
        if (A1T() > 0) {
            A3E();
            boolean didLayoutFromEnd = this.A08 ^ this.A05;
            linearLayoutManager$SavedState.A02 = didLayoutFromEnd;
            if (didLayoutFromEnd) {
                View refChild = A0S();
                linearLayoutManager$SavedState.A00 = this.A04.A07() - this.A04.A0D(refChild);
                linearLayoutManager$SavedState.A01 = A1o(refChild);
            } else {
                View viewA0T = A0T();
                linearLayoutManager$SavedState.A01 = A1o(viewA0T);
                linearLayoutManager$SavedState.A00 = this.A04.A0G(viewA0T) - this.A04.A0B();
            }
        } else {
            linearLayoutManager$SavedState.A00();
        }
        return new WrappedParcelable(linearLayoutManager$SavedState);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final View A1z(int i) {
        int firstChild = A1T();
        if (firstChild == 0) {
            return null;
        }
        int childCount = i - A1o(A20(0));
        if (childCount >= 0 && childCount < firstChild) {
            View viewA20 = A20(childCount);
            if (A1o(viewA20) == i) {
                return viewA20;
            }
        }
        return super.A1z(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public View A23(View view, int i, C2653j4 c2653j4, C2660jB c2660jB) {
        int iA3C;
        View viewA0Y;
        View nextCandidate;
        A0g();
        if (A1T() == 0 || (iA3C = A3C(i)) == Integer.MIN_VALUE) {
            return null;
        }
        A3E();
        A3E();
        int layoutDir = this.A04.A0C();
        A0k(iA3C, (int) (layoutDir * 0.33333334f), false, c2660jB);
        this.A07.A07 = Integer.MIN_VALUE;
        this.A07.A0B = false;
        A0L(c2653j4, this.A07, c2660jB, true);
        if (iA3C == -1) {
            viewA0Y = A0Z(c2653j4, c2660jB);
        } else {
            viewA0Y = A0Y(c2653j4, c2660jB);
        }
        if (iA3C == -1) {
            nextCandidate = A0T();
        } else {
            nextCandidate = A0S();
        }
        boolean zHasFocusable = nextCandidate.hasFocusable();
        if (A0G[0].length() == 7) {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[2] = "JGtMOr7ZHjmwUVfbInfaZmEhr0nxGN38";
        strArr[4] = "jCrgpf8bwQbyd1C9u6FfAt5OnK6gBhSa";
        if (zHasFocusable) {
            if (viewA0Y == null) {
                return null;
            }
            return nextCandidate;
        }
        return viewA0Y;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public C2646ix A24() {
        return new C2646ix(-2, -2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public void A2B(int i) {
        this.A01 = i;
        this.A02 = Integer.MIN_VALUE;
        if (this.A03 != null) {
            this.A03.A00();
        }
        A28();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final void A2F(int i, int i2, C2660jB c2660jB, InterfaceC2643iu interfaceC2643iu) {
        if (this.A00 != 0) {
            i = i2;
        }
        int delta = A1T();
        if (delta == 0 || i == 0) {
            return;
        }
        A3E();
        int i3 = i > 0 ? 1 : -1;
        int delta2 = Math.abs(i);
        A0k(i3, delta2, true, c2660jB);
        A3J(c2660jB, this.A07, interfaceC2643iu);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final void A2G(int i, InterfaceC2643iu interfaceC2643iu) {
        boolean z;
        int direction;
        if (this.A03 != null && this.A03.A01()) {
            z = this.A03.A02;
            direction = this.A03.A01;
        } else {
            A0g();
            z = this.A05;
            int i2 = this.A01;
            String[] strArr = A0G;
            if (strArr[6].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0G[1] = "j12HxmlCdcFNOCf90EDMVBFIs8rsuaoM";
            if (i2 == -1) {
                direction = z ? i - 1 : 0;
            } else {
                direction = this.A01;
            }
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.A06 && direction >= 0 && direction < i; i4++) {
            interfaceC2643iu.A4S(direction, 0);
            direction += i3;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final void A2J(Parcelable parcelable) {
        if (!(parcelable instanceof WrappedParcelable)) {
            return;
        }
        ClassLoader classLoader = getClass().getClassLoader();
        if (A0G[1].charAt(30) == 'o') {
            A0G[1] = "tHEWx5U9TGfOm0s3U2zrO5nR7UMaVIoI";
            if (classLoader == null) {
                return;
            }
            if (A0G[5].length() == 31) {
                A0G[3] = "tm";
                Parcelable state = ((WrappedParcelable) parcelable).unwrap(classLoader);
                if (state instanceof LinearLayoutManager$SavedState) {
                    this.A03 = (LinearLayoutManager$SavedState) state;
                    A28();
                    return;
                }
                return;
            }
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final void A2U(AccessibilityEvent accessibilityEvent) {
        super.A2U(accessibilityEvent);
        if (A1T() > 0) {
            accessibilityEvent.setFromIndex(A39());
            int iA3A = A3A();
            if (A0G[3].length() == 28) {
                throw new RuntimeException();
            }
            A0G[3] = "9E5bhv9RVKulu";
            accessibilityEvent.setToIndex(iA3A);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00aa  */
    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A2Z(com.facebook.ads.redexgen.X.C2653j4 r10, com.facebook.ads.redexgen.X.C2660jB r11) {
        /*
            Method dump skipped, instruction units count: 625
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.J7.A2Z(com.facebook.ads.redexgen.X.j4, com.facebook.ads.redexgen.X.jB):void");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public void A2d(C2660jB c2660jB) {
        super.A2d(c2660jB);
        this.A03 = null;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A0D.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final void A2m(C7O c7o, C2653j4 c2653j4) {
        super.A2m(c7o, c2653j4);
        if (this.A09) {
            A2Y(c2653j4);
            c2653j4.A0Q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public void A2o(C7O c7o, C2660jB c2660jB, int i) {
        J5 linearSmoothScroller = new J5(c7o.getContext());
        linearSmoothScroller.A0H(i);
        A2c(linearSmoothScroller);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final void A2p(String str) {
        if (this.A03 == null) {
            super.A2p(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final boolean A2u() {
        if (A1V() != 1073741824 && A1f() != 1073741824) {
            boolean zA2r = A2r();
            if (A0G[0].length() == 7) {
                throw new RuntimeException();
            }
            A0G[0] = "ZYU5Lu8KJdo1W8";
            if (zA2r) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final boolean A2v() {
        return this.A00 == 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public final boolean A2w() {
        return this.A00 == 1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    public boolean A2x() {
        return this.A03 == null && this.A08 == this.A0C;
    }

    public final int A38() {
        View child = A0V(0, A1T(), true, false);
        if (child == null) {
            return -1;
        }
        return A1o(child);
    }

    public final int A39() {
        View child = A0V(0, A1T(), false, true);
        if (child == null) {
            return -1;
        }
        return A1o(child);
    }

    public final int A3A() {
        View child = A0V(A1T() - 1, -1, false, true);
        if (child == null) {
            return -1;
        }
        return A1o(child);
    }

    public final int A3B() {
        return this.A00;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0061, code lost:
    
        if (r4 == 1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006b, code lost:
    
        if (r4 == 1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0072, code lost:
    
        if (A3K() == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0074, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0075, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A3C(int r8) {
        /*
            r7 = this;
            r6 = -1
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1
            switch(r8) {
                case 1: goto L4d;
                case 2: goto L40;
                case 17: goto L38;
                case 33: goto L30;
                case 66: goto L2a;
                case 130: goto L8;
                default: goto L7;
            }
        L7:
            return r5
        L8:
            int r4 = r7.A00
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.J7.A0G
            r0 = 1
            r1 = r1[r0]
            r0 = 30
            char r1 = r1.charAt(r0)
            r0 = 111(0x6f, float:1.56E-43)
            if (r1 == r0) goto L1f
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.J7.A0G
            java.lang.String r1 = "6DQtaB3lJkGKNvmH8s9QQc68TsOBLDE"
            r0 = 3
            r2[r0] = r1
            if (r4 != r3) goto L29
            r5 = 1
        L29:
            return r5
        L2a:
            int r0 = r7.A00
            if (r0 != 0) goto L2f
            r5 = 1
        L2f:
            return r5
        L30:
            int r0 = r7.A00
            if (r0 != r3) goto L35
        L34:
            return r6
        L35:
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L34
        L38:
            int r0 = r7.A00
            if (r0 != 0) goto L3d
        L3c:
            return r6
        L3d:
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L3c
        L40:
            int r0 = r7.A00
            if (r0 != r3) goto L45
            return r3
        L45:
            boolean r0 = r7.A3K()
            if (r0 == 0) goto L4c
            return r6
        L4c:
            return r3
        L4d:
            int r4 = r7.A00
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.J7.A0G
            r0 = 6
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L64
            if (r4 != r3) goto L6e
        L63:
            return r6
        L64:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.J7.A0G
            java.lang.String r1 = "tdW2fzf"
            r0 = 3
            r2[r0] = r1
            if (r4 != r3) goto L6e
            goto L63
        L6e:
            boolean r0 = r7.A3K()
            if (r0 == 0) goto L75
            return r3
        L75:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.J7.A3C(int):int");
    }

    public View A3D(C2653j4 c2653j4, C2660jB c2660jB, int i, int i2, int i3) {
        A3E();
        View view = null;
        View view2 = null;
        int iA0B = this.A04.A0B();
        int boundsEnd = this.A04.A07();
        int boundsStart = i2 > i ? 1 : -1;
        while (i != i2) {
            View outOfBoundsMatch = A20(i);
            int iA1o = A1o(outOfBoundsMatch);
            if (iA1o >= 0 && iA1o < i3) {
                if (((C2646ix) outOfBoundsMatch.getLayoutParams()).A02()) {
                    if (view == null) {
                        view = outOfBoundsMatch;
                    }
                } else if (this.A04.A0G(outOfBoundsMatch) >= boundsEnd || this.A04.A0D(outOfBoundsMatch) < iA0B) {
                    if (view2 == null) {
                        view2 = outOfBoundsMatch;
                    }
                } else {
                    return outOfBoundsMatch;
                }
            }
            i += boundsStart;
        }
        return view2 != null ? view2 : view;
    }

    public final void A3E() {
        if (this.A07 == null) {
            this.A07 = A0e();
        }
        if (this.A04 == null) {
            this.A04 = AbstractC2629ig.A02(this, this.A00);
        }
    }

    public final void A3F(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(A0f(0, 20, 1) + i);
        }
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        A0G[1] = "wMuOUB68W5cmyVCUMue198JFnL9Wkeot";
        A2p(null);
        if (i == this.A00) {
            return;
        }
        this.A00 = i;
        this.A04 = null;
        A28();
    }

    public final void A3G(int i, int i2) {
        this.A01 = i;
        this.A02 = i2;
        if (this.A03 != null) {
            this.A03.A00();
        }
        A28();
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        A0G[3] = "tDl3kZGUKMTs";
    }

    public void A3H(C2653j4 c2653j4, C2660jB c2660jB, C2624iZ c2624iZ, int i) {
    }

    public void A3I(C2653j4 c2653j4, C2660jB c2660jB, C2626ib c2626ib, C2625ia c2625ia) {
        int iA1d;
        int right;
        int iA1b;
        int iA0F;
        View viewA03 = c2626ib.A03(c2653j4);
        if (viewA03 == null) {
            c2625ia.A01 = true;
            return;
        }
        C2646ix c2646ix = (C2646ix) viewA03.getLayoutParams();
        if (c2626ib.A08 == null) {
            if (this.A05 == (c2626ib.A05 == -1)) {
                A2L(viewA03);
            } else {
                A2N(viewA03, 0);
            }
        } else {
            boolean z = this.A05;
            int bottom = c2626ib.A05;
            if (z == (bottom == -1)) {
                A2K(viewA03);
            } else {
                A2M(viewA03, 0);
            }
        }
        A2O(viewA03, 0, 0);
        c2625ia.A00 = this.A04.A0E(viewA03);
        if (this.A00 == 1) {
            if (A3K()) {
                iA0F = A1e() - A1c();
                iA1b = iA0F - this.A04.A0F(viewA03);
            } else {
                iA1b = A1b();
                iA0F = this.A04.A0F(viewA03) + iA1b;
            }
            if (c2626ib.A05 == -1) {
                right = c2626ib.A06;
                iA1d = c2626ib.A06 - c2625ia.A00;
            } else {
                iA1d = c2626ib.A06;
                right = c2626ib.A06 + c2625ia.A00;
            }
        } else {
            iA1d = A1d();
            right = this.A04.A0F(viewA03) + iA1d;
            int bottom2 = c2626ib.A05;
            if (bottom2 == -1) {
                iA0F = c2626ib.A06;
                int i = c2626ib.A06;
                int bottom3 = c2625ia.A00;
                iA1b = i - bottom3;
            } else {
                iA1b = c2626ib.A06;
                int i2 = c2626ib.A06;
                int bottom4 = c2625ia.A00;
                iA0F = i2 + bottom4;
            }
        }
        A2P(viewA03, iA1b, iA1d, iA0F, right);
        if (c2646ix.A02() || c2646ix.A01()) {
            c2625ia.A03 = true;
        }
        c2625ia.A02 = viewA03.hasFocusable();
    }

    public void A3J(C2660jB c2660jB, C2626ib c2626ib, InterfaceC2643iu interfaceC2643iu) {
        int i = c2626ib.A01;
        if (i >= 0) {
            int pos = c2660jB.A03();
            if (i < pos) {
                int pos2 = c2626ib.A07;
                interfaceC2643iu.A4S(i, Math.max(0, pos2));
            }
        }
    }

    public final boolean A3K() {
        return A1X() == 1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2657j8
    public final PointF A5f(int i) {
        if (A1T() == 0) {
            return null;
        }
        int i2 = (i < A1o(A20(0))) != this.A05 ? -1 : 1;
        int i3 = this.A00;
        int firstChildPos = A0G[0].length();
        if (firstChildPos == 7) {
            throw new RuntimeException();
        }
        A0G[5] = "5EjIyJt0kzQOvAP28HqeuGPqaebz9kN";
        if (i3 == 0) {
            return new PointF(i2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        return new PointF(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i2);
    }
}
