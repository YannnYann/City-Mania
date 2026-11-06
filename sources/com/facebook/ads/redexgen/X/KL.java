package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.View;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KL implements InterfaceC2401ev {
    public static byte[] A02;
    public static String[] A03 = {"iuD1Am5czCa4MMye", "gcECFoZ4kMj", "VbEWHR41ipzNZTdsnzBLSm9KpWNSPO68", "8haroAYsv73J79CcHBMVGUJPSuWBoF", "Cgc02UupeaYRNlOZ7cqHYIvfW0w", "E3EPi8nJQVjxwkGkPUQcK1wsbQ6s5nfw", "JigEA1pPhZ8", "b8nvHckQqbA7NUL6IeY5KDsLLhUs"};
    public final /* synthetic */ C13987f A00;
    public final /* synthetic */ Runnable A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{85, 83, 4, 89, 86, 81, 4, 0, 1, 34, 45, 45, 38, 49, 99, 42, 46, 51, 49, 38, 48, 48, 42, 44, 45, 99, 37, 42, 49, 38, 39, 117, 116, 88, 123, 116, 116, 127, 104, 86, 117, 125, 125, 115, 116, 125, 83, 119, 106, 104, 127, 105, 105, 115, 117, 116};
    }

    static {
        A01();
    }

    public KL(C13987f c13987f, Runnable runnable) {
        this.A00 = c13987f;
        this.A01 = runnable;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2401ev
    public final void AE8(MA ma) {
        this.A00.A02.A0F().A51();
        if (this.A00.A07 != null) {
            this.A00.A07.A0C();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2401ev
    public final void AE9(MA ma, View view) {
        this.A00.A02.A0F().A50(ma == ((KI) this.A00).A00);
        if (ma != ((KI) this.A00).A00) {
            return;
        }
        this.A00.A0G().removeCallbacks(this.A01);
        InterfaceC2393en interfaceC2393en = ((KI) this.A00).A01;
        ((KI) this.A00).A01 = ma;
        this.A00.A01 = view;
        if (!this.A00.A0C) {
            if (this.A00.A07 != null) {
                this.A00.A07.A0F(ma);
            }
        } else {
            if (this.A00.A07 != null) {
                this.A00.A07.A0E(view);
            }
            this.A00.A0P(interfaceC2393en);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2401ev
    public final void AEA(MA ma) {
        AbstractC2958o5.A05(A00(31, 25, 80), A00(8, 23, 9), A00(0, 8, 43));
        this.A00.A02.A0F().A53();
        if (this.A00.A07 != null) {
            this.A00.A07.A0D();
        }
        this.A00.A0N();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2401ev
    public final void AFQ(MA ma, C2947nt c2947nt) {
        this.A00.A02.A0F().A52(ma == ((KI) this.A00).A00, c2947nt.A03().getErrorCode());
        if (ma != ((KI) this.A00).A00) {
            return;
        }
        Handler handlerA0G = this.A00.A0G();
        String[] strArr = A03;
        if (strArr[5].charAt(5) == strArr[2].charAt(5)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[0] = "znwRtBHTWRiG9JFd";
        strArr2[3] = "283UGf3p8sskTzKjhuEOsJvvZH8jLe";
        handlerA0G.removeCallbacks(this.A01);
        this.A00.A0P(ma);
        this.A00.AEr(c2947nt);
    }
}
