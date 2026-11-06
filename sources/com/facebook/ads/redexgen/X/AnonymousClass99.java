package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.99, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass99 implements TE {
    public long A00;
    public Uri A01 = Uri.EMPTY;
    public Map<String, List<String>> A02 = Collections.emptyMap();
    public final TE A03;

    public AnonymousClass99(TE te) {
        this.A03 = (TE) AbstractC1747Ln.A01(te);
    }

    public final long A00() {
        return this.A00;
    }

    public final Uri A01() {
        return this.A01;
    }

    public final Map<String, List<String>> A02() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final void A4T(InterfaceC1793Ni interfaceC1793Ni) {
        AbstractC1747Ln.A01(interfaceC1793Ni);
        this.A03.A4T(interfaceC1793Ni);
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final Map<String, List<String>> A9W() {
        return this.A03.A9W();
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final Uri AA2() {
        return this.A03.AA2();
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final long AHv(NX nx) throws IOException {
        this.A01 = nx.A06;
        this.A02 = Collections.emptyMap();
        long jAHv = this.A03.AHv(nx);
        this.A01 = (Uri) AbstractC1747Ln.A01(AA2());
        this.A02 = A9W();
        return jAHv;
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final void close() throws IOException {
        this.A03.close();
    }

    @Override // com.facebook.ads.redexgen.X.KR
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.A03.read(bArr, i, i2);
        if (i3 != -1) {
            this.A00 += (long) i3;
        }
        return i3;
    }
}
