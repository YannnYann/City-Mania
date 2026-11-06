package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class FO implements InterfaceC3054ph {
    public static String[] A01 = {"wVxcSe1Kq7cjaY7pe0RSbTz", "FHAp3uqSwhTPmPBnPiOpZ0uuvyVoNlmB", "WJo8Xtk520eMkjIPeuW", "jGe28gQZyh8B", "fT8eiK1RgJ6pEbMjJqiMXW297yRUMt7S", "", "taFZOsIdth8RXeTJ0nTwVM5OCW0QM28s", "9KsdTapHWpk"};
    public final /* synthetic */ FM A00;

    public FO(FM fm) {
        this.A00 = fm;
    }

    public /* synthetic */ FO(FM fm, FQ fq) {
        this(fm);
    }

    public final /* synthetic */ void A00(int i) {
        this.A00.A0d.setToolbarActionMode(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() {
        this.A00.A0M();
        if (!this.A00.A0Z.get()) {
            final int iA00 = this.A00.A00();
            if (!this.A00.A0m()) {
                C2420fE c2420fEA32 = this.A00.A0N.A32();
                if (A01[2].length() == 6) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[1] = "uczS3dZuRhe1TiaRS8o3kGUFuatPDfCD";
                strArr[6] = "NlyPgAKCyhZnZjS8XDVmhF79X3XQAmKL";
                long jA00 = c2420fEA32.A0L().A00();
                if (jA00 > 0) {
                    this.A00.A0M.postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.re
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.A01.A00(iA00);
                        }
                    }, jA00);
                    return;
                } else {
                    this.A00.A0d.setToolbarActionMode(iA00);
                    return;
                }
            }
            this.A00.A0d.setToolbarActionMode(iA00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
        if (!this.A00.A0m() || !(this.A00.A0d instanceof C1595Fl)) {
            if (this.A00.A0O.A0A() > 0) {
                FM fm = this.A00;
                if (A01[2].length() == 6) {
                    throw new RuntimeException();
                }
                A01[3] = "4Z2";
                if (f == fm.A0O.A0A()) {
                    this.A00.A0d.setToolbarActionMode(8);
                    return;
                }
                return;
            }
            return;
        }
        int totalSecs = this.A00.A0O.A0C();
        ((C1595Fl) this.A00.A0d).A0H((int) f, totalSecs);
    }
}
