package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor;
import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class PN implements InterfaceC2130aW {
    public final /* synthetic */ MatroskaExtractor A00;

    public PN(MatroskaExtractor matroskaExtractor) {
        this.A00 = matroskaExtractor;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2130aW
    public final void A5B(int i, int i2, Q9 q9) throws IOException {
        this.A00.A0U(i, i2, q9);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2130aW
    public final void A6w(int i) throws L9 {
        this.A00.A0S(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2130aW
    public final void A7A(int i, double d) throws L9 {
        this.A00.A0T(i, d);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2130aW
    public final int A8V(int i) {
        return this.A00.A0R(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2130aW
    public final void AAv(int i, long j) throws L9 {
        this.A00.A0V(i, j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2130aW
    public final boolean ABE(int i) {
        return this.A00.A0Y(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2130aW
    public final void ALS(int i, long j, long j2) throws L9 {
        this.A00.A0W(i, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2130aW
    public final void ALd(int i, String str) throws L9 {
        this.A00.A0X(i, str);
    }
}
