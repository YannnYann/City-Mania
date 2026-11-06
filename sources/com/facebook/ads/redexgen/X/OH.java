package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.ironsource.mediationsdk.metadata.a;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OH implements InterfaceC2068Yv {
    public static byte[] A0C;
    public static String[] A0D = {"F9tU3fP4bS75Ai6N0xcHreCr1t", "e0mcG9nK", "uPW5Tfa1SV", "2zghnPZ5MvpUZv9vym", "bDS3GVUL9EkDIh7pewT1jUPQV6vbxBj8", "SJTtxKjmk6RM84gHd2FPzBanjkvoN1bO", "uq2IBIssOIBH5LGogXLo5bvXyy9LVYIy", "s0E918xjklYSc5ojfCo8j66VkU"};
    public static final InterfaceC2072Yz A0E;
    public int A00;
    public long A01;
    public long A02;
    public InterfaceC2069Yw A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final int A07;
    public final C1768Mj A08;
    public final C1769Mk A09;
    public final C1769Mk A0A;
    public final OG A0B;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
            if (A0D[4].charAt(0) != 'b') {
                throw new RuntimeException();
            }
            A0D[1] = "uIPObzg7";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{-115, -95, -84, -90, -81, -78, -83, -91, -92, 96, -127, -124, -108, -109, 96, -77, -76, -78, -91, -95, -83};
    }

    static {
        A04();
        A0E = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.OI
            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final InterfaceC2068Yv[] A5w() {
                return OH.A07();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
                return AbstractC2071Yy.A01(this, uri, map);
            }
        };
    }

    public OH() {
        this(0);
    }

    public OH(int i) {
        this.A07 = (i & 2) != 0 ? i | 1 : i;
        this.A0B = new OG(true);
        this.A09 = new C1769Mk(a.o);
        this.A00 = -1;
        this.A01 = -1L;
        this.A0A = new C1769Mk(10);
        this.A08 = new C1768Mj(this.A0A.A0l());
    }

    public static int A00(int i, long j) {
        return (int) (((((long) i) * 8) * 1000000) / j);
    }

    private int A01(Q9 q9) throws IOException {
        int i = 0;
        while (true) {
            q9.AI6(this.A0A.A0l(), 0, 10);
            this.A0A.A0f(0);
            if (this.A0A.A0K() != 4801587) {
                break;
            }
            this.A0A.A0g(3);
            int length = this.A0A.A0H();
            int firstFramePosition = length + 10;
            i += firstFramePosition;
            q9.A4X(length);
        }
        q9.AK3();
        q9.A4X(i);
        if (this.A01 == -1) {
            this.A01 = i;
        }
        return i;
    }

    private QI A02(long j, boolean z) {
        return new QI(j, this.A01, A00(this.A00, this.A0B.A0J()), this.A00, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A05(long r9, boolean r11) {
        /*
            r8 = this;
            boolean r0 = r8.A05
            if (r0 == 0) goto L5
            return
        L5:
            int r0 = r8.A07
            r5 = 1
            r0 = r0 & r5
            r6 = 0
            if (r0 == 0) goto L25
            int r0 = r8.A00
            if (r0 <= 0) goto L25
            r7 = 1
        L11:
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r7 == 0) goto L27
            com.facebook.ads.redexgen.X.OG r0 = r8.A0B
            long r3 = r0.A0J()
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L27
            if (r11 != 0) goto L27
            return
        L25:
            r7 = 0
            goto L11
        L27:
            if (r7 == 0) goto L45
            com.facebook.ads.redexgen.X.OG r0 = r8.A0B
            long r3 = r0.A0J()
            int r7 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            java.lang.String[] r3 = com.facebook.ads.redexgen.X.OH.A0D
            r0 = 4
            r3 = r3[r0]
            r0 = 0
            char r3 = r3.charAt(r0)
            r0 = 98
            if (r3 == r0) goto L50
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L45:
            com.facebook.ads.redexgen.X.Yw r3 = r8.A03
            com.facebook.ads.redexgen.X.Q4 r0 = new com.facebook.ads.redexgen.X.Q4
            r0.<init>(r1)
            r3.AKP(r0)
            goto L69
        L50:
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.OH.A0D
            java.lang.String r3 = "OEHF76Qkx8"
            r0 = 2
            r4[r0] = r3
            if (r7 == 0) goto L45
            com.facebook.ads.redexgen.X.Yw r1 = r8.A03
            int r0 = r8.A07
            r0 = r0 & 2
            if (r0 == 0) goto L62
            r6 = 1
        L62:
            com.facebook.ads.redexgen.X.QI r0 = r8.A02(r9, r6)
            r1.AKP(r0)
        L69:
            r8.A05 = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.OH.A05(long, boolean):void");
    }

    private void A06(Q9 q9) throws IOException {
        if (this.A04) {
            return;
        }
        this.A00 = -1;
        q9.AK3();
        if (q9.A9Q() == 0) {
            A01(q9);
        }
        int currentFrameSize = 0;
        if (A0D[6].charAt(1) != 'q') {
            throw new RuntimeException();
        }
        A0D[5] = "N5VSOvNSp6UcrBwxQjBkSgFK0Xta8zYN";
        long j = 0;
        while (true) {
            try {
                if (!q9.AI7(this.A0A.A0l(), 0, 2, true)) {
                    break;
                }
                this.A0A.A0f(0);
                if (OG.A0F(this.A0A.A0M())) {
                    if (!q9.AI7(this.A0A.A0l(), 0, 4, true)) {
                        break;
                    }
                    this.A08.A08(14);
                    int iA04 = this.A08.A04(13);
                    if (iA04 <= 6) {
                        this.A04 = true;
                        throw L9.A01(A03(0, 21, 4), null);
                    }
                    j += (long) iA04;
                    currentFrameSize++;
                    if (currentFrameSize == 1000 || !q9.A4Y(iA04 - 6, true)) {
                        break;
                    }
                } else {
                    currentFrameSize = 0;
                    break;
                }
            } catch (EOFException unused) {
            }
        }
        q9.AK3();
        if (currentFrameSize > 0) {
            this.A00 = (int) (j / ((long) currentFrameSize));
        } else {
            this.A00 = -1;
        }
        this.A04 = true;
    }

    public static /* synthetic */ InterfaceC2068Yv[] A07() {
        return new InterfaceC2068Yv[]{new OH()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A03 = interfaceC2069Yw;
        this.A0B.A6B(interfaceC2069Yw, new C2286d2(0, 1));
        interfaceC2069Yw.A6x();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        AbstractC1747Ln.A02(this.A03);
        long inputLength = q9.A90();
        if (((this.A07 & 2) == 0 && ((this.A07 & 1) == 0 || inputLength == -1)) ? false : true) {
            A06(q9);
        }
        int i = q9.read(this.A09.A0l(), 0, a.o);
        boolean canUseConstantBitrateSeeking = i == -1;
        A05(inputLength, canUseConstantBitrateSeeking);
        if (canUseConstantBitrateSeeking) {
            return -1;
        }
        this.A09.A0f(0);
        this.A09.A0e(i);
        boolean z = this.A06;
        if (A0D[1].length() != 8) {
            throw new RuntimeException();
        }
        A0D[6] = "AqaLiJXQzgm3pUXyquw54MLj08tQrNbC";
        if (!z) {
            this.A0B.AI3(this.A02, 4);
            this.A06 = true;
        }
        this.A0B.A5j(this.A09);
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AKO(long j, long j2) {
        this.A06 = false;
        this.A0B.AKN();
        this.A02 = j2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        int iA01 = A01(q9);
        int frameSize = iA01;
        int syncBytes = 0;
        int validFramesCount = 0;
        do {
            q9.AI6(this.A0A.A0l(), 0, 2);
            this.A0A.A0f(0);
            int startPosition = this.A0A.A0M();
            if (!OG.A0F(startPosition)) {
                validFramesCount = 0;
                syncBytes = 0;
                frameSize++;
                q9.AK3();
                q9.A4X(frameSize);
            } else {
                validFramesCount++;
                if (validFramesCount >= 4 && syncBytes > 188) {
                    return true;
                }
                q9.AI6(this.A0A.A0l(), 0, 4);
                this.A08.A08(14);
                int headerPosition = this.A08.A04(13);
                if (headerPosition <= 6) {
                    validFramesCount = 0;
                    syncBytes = 0;
                    frameSize++;
                    q9.AK3();
                    q9.A4X(frameSize);
                } else {
                    int startPosition2 = headerPosition - 6;
                    q9.A4X(startPosition2);
                    syncBytes += headerPosition;
                }
            }
        } while (frameSize - iA01 < 8192);
        return false;
    }
}
