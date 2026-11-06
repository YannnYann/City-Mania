package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ga, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1609Ga implements InterfaceC2763kr {
    public static byte[] A03;
    public static String[] A04 = {"WE91vPqiHLcyJwrbQHRJcIvZwn5D9l", "3LK2x46Pp3Ld9onr8DyN9Ggm", "60IU9PqapOW3gkaytJRkZEg3", "UqNMzTGRyBNLAx", "QjYmXRpW4", "DeQ01HErfJf7NLfnuVX6corDAbYDzPur", "bhlqPTI7mETXQlgoFXHPJBBhjQPpzoup", "oYTMQ3SHL"};
    public final /* synthetic */ C1741Lh A00;
    public final /* synthetic */ GT A01;
    public final /* synthetic */ boolean A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-16, 11, 19, 22, 15, 14, -54, 30, 25, -54, 14, 25, 33, 24, 22, 25, 11, 14, -54, 11, -54, 23, 15, 14, 19, 11, -40};
    }

    static {
        A01();
    }

    public C1609Ga(GT gt, C1741Lh c1741Lh, boolean z) {
        this.A01 = gt;
        this.A00 = c1741Lh;
        this.A02 = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2763kr
    public final void AEJ() {
        if (this.A01.A0f != null) {
            this.A01.A0f.A0J();
            this.A01.A0f = null;
        }
        AdErrorType adErrorType = AdErrorType.CACHE_FAILURE_ERROR;
        String strA00 = A00(0, 27, 110);
        this.A01.A0h.A0F().A3j(C3101qS.A01(this.A01.A00), adErrorType.getErrorCode(), strA00);
        if (this.A01.A0J != null) {
            GT gt = this.A01;
            String[] strArr = A04;
            String errorMessage = strArr[4];
            if (errorMessage.length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A04[6] = "7cQ3648pyLFx7h83cxUuTBVDS0jRS450";
            gt.A0J.AEr(C2947nt.A01(adErrorType, strA00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2763kr
    public final void AEU() {
        this.A01.A0f = this.A00;
        if (this.A02 && this.A01.A0C != null) {
            C13967d c13967d = this.A01.A0C;
            String[] strArr = A04;
            if (strArr[4].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[4] = "vb7V14ygc";
            strArr2[7] = "eJXYUqUMt";
            c13967d.A0K();
        }
        if (this.A01.A0J != null) {
            if (this.A01.A0H.equals(EnumC2931nc.A04) && !this.A01.A0r()) {
                this.A01.A0J.AFu();
            }
            if (this.A02) {
                if (!C2888mv.A1s(this.A01.A0h) || this.A01.A13() == null || !this.A01.A13().A2Q()) {
                    this.A01.A0J.ADm();
                } else {
                    this.A01.A0Q = M1.A01(this.A01.A0h, this.A01.A13(), 4, new C1610Gb(this));
                }
            }
        }
    }
}
