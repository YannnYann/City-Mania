package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DH implements InterfaceC3419va {
    public static byte[] A01;
    public final /* synthetic */ C13655y A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{49, 55, 33, 54, 27, 42, 37, 50, 45, 35, 37, 48, 45, 43, 42, 27, 45, 37, 38};
    }

    public DH(C13655y c13655y) {
        this.A00 = c13655y;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AEL() {
        this.A00.A0o.A00(this.A00.A0r);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AEM() {
        this.A00.A0o.A01(this.A00.A0r);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AG5() {
        this.A00.A0S = false;
        if (this.A00.A08 != null) {
            this.A00.A08.setProgress(100);
        }
        AbstractC3111qc.A0P(this.A00.A08, 8);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3419va
    public final void AGE(String str) {
        this.A00.A0S = true;
        AbstractC3111qc.A0P(this.A00.A08, 0);
        if (this.A00.A07 != null) {
            this.A00.A07.setUrl(str);
        }
        if (!this.A00.A0P && this.A00.A02 > 1) {
            this.A00.A0P = true;
            this.A00.A12(A00(0, 19, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE));
        }
        C13655y.A03(this.A00);
    }
}
