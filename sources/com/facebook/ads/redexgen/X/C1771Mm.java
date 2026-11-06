package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1771Mm implements NN {
    public static String[] A08 = {"PPmQFLdbc7Vlo7qleGwmNW1Ez6r2Gc9E", "AjjL0fVeg9JS5", "gXSfPRV6EPfFZVe6rFDJuR6uHnoCEKGv", "bk5YG8xz5DjG7t6ohO8HaEe", "tU0h9SY5BxB6IZeFXbxG", "ngXQIvduBnbEJ5H6hgcgQ2bsSzGu6GFR", "BIrkD39lSVa", "nxRNg1NVc48CdodXdSwWFqBetUAulFto"};
    public int A00;
    public int A01;
    public NK A02;
    public NN A04;
    public InterfaceC2356eB A05;
    public boolean A07;
    public NN A03 = new TA();
    public InterfaceC2365eK A06 = InterfaceC2365eK.A00;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.NN
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C14177y A5r() {
        TE teA5r;
        if (this.A04 != null) {
            NN nn = this.A04;
            String[] strArr = A08;
            if (strArr[5].charAt(6) != strArr[0].charAt(6)) {
                throw new RuntimeException();
            }
            A08[2] = "CBInl5umrgZZ3FAIIAgqwfju7KbCyNwG";
            teA5r = nn.A5r();
        } else {
            teA5r = null;
        }
        C14177y c14177yA01 = A01(teA5r, this.A00, this.A01);
        if (A08[7].length() != 32) {
            return c14177yA01;
        }
        String[] strArr2 = A08;
        strArr2[1] = "RjOeKnMek0dl8";
        strArr2[6] = "jyEGoXvnHHA";
        return c14177yA01;
    }

    private C14177y A01(TE te, int i, int i2) {
        C1779Mu c1779MuA5q;
        InterfaceC2356eB interfaceC2356eB = (InterfaceC2356eB) AbstractC1747Ln.A01(this.A05);
        if (this.A07 || te == null) {
            c1779MuA5q = null;
        } else if (this.A02 != null) {
            c1779MuA5q = this.A02.A5q();
        } else {
            c1779MuA5q = new C1780Mv().A00(interfaceC2356eB).A5q();
        }
        return new C14177y(interfaceC2356eB, te, this.A03.A5r(), c1779MuA5q, this.A06, i, null, i2, null);
    }

    public final LS A02() {
        return null;
    }

    public final C1771Mm A03(int i) {
        this.A00 = i;
        return this;
    }

    public final C1771Mm A04(NN nn) {
        this.A03 = nn;
        return this;
    }

    public final C1771Mm A05(NN nn) {
        this.A04 = nn;
        return this;
    }

    public final C1771Mm A06(InterfaceC2356eB interfaceC2356eB) {
        this.A05 = interfaceC2356eB;
        return this;
    }

    public final C14177y A07() {
        return A01(this.A04 != null ? this.A04.A5r() : null, this.A00 | 1, -1000);
    }
}
