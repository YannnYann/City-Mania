package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1551Dt implements InterfaceC3284tP {
    public static String[] A01 = {"HeXYzzVHXgk6bgJjKy0", "rKmN", "", "O3tf7rTF477MZ7pUh006k648oTogFZzz", "Dpar4kyY9ug2odYA0ztHjvNWX", "5qWRdhNhGKqpzdTHSrV6Tlitnd6", "OKu9IEVMVe0hYjCZAxwwuQcwxiigaAgU", "HFf4"};
    public final /* synthetic */ C1J A00;

    public C1551Dt(C1J c1j) {
        this.A00 = c1j;
    }

    public /* synthetic */ C1551Dt(C1J c1j, C1553Dv c1553Dv) {
        this(c1j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGC(String str) {
        if (this.A00.A03 != null) {
            this.A00.A03.setUrl(str);
        }
        if (this.A00.A04 != null) {
            this.A00.A04.setVisibility(8);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGE(String str) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGf(int i) {
        if (this.A00.A04 != null) {
            C1J c1j = this.A00;
            if (A01[2].length() != 0) {
                throw new RuntimeException();
            }
            A01[2] = "";
            c1j.A04.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGi(String str) {
        if (this.A00.A03 != null) {
            this.A00.A03.setTitle(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGl() {
        this.A00.A0C.AHs();
    }
}
