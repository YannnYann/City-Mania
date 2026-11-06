package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2273cp {
    public static String[] A0D = {"DTulKQrrWb7WgzZwh16YoEcpy778VgMy", "8EjtzI3HlIz4Pm9zhd0onx8Z3l7fT0K4", "hZG7PFSqDvHFx4aZzCCs", "NrBUNAbcM2tXV0XazOUf6pBtZmmB7BuO", "rw6GjiBqQQJEVkZ86xi8", "BAZaFrCayruuOD7F2KUN0A6FB01Uk5HF", "HWz5uYK1hcLDuQI2yRRFXcETfaJzrjnP", "uIyZjA4SaSm7DVUQlHbIfXLJsnmilllF"};
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final ZP A0C;

    public C2273cp(ZP zp) {
        this.A0C = zp;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void A00(int i) {
        if (this.A04 == -9223372036854775807L) {
            return;
        }
        boolean z = this.A0B;
        this.A0C.AKC(this.A04, z ? 1 : 0, (int) (this.A01 - this.A03), i, null);
    }

    public static boolean A01(int i) {
        return (32 <= i && i <= 35) || i == 39;
    }

    public static boolean A02(int i) {
        return i < 32 || i == 40;
    }

    public final void A03() {
        this.A07 = false;
        this.A06 = false;
        this.A05 = false;
        this.A0A = false;
        this.A09 = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A04(long r6, int r8, int r9, long r10, boolean r12) {
        /*
            r5 = this;
            r3 = 0
            r5.A06 = r3
            r5.A05 = r3
            r5.A02 = r10
            r5.A00 = r3
            r5.A01 = r6
            boolean r0 = A02(r9)
            r1 = 1
            if (r0 != 0) goto L2e
            boolean r0 = r5.A0A
            if (r0 == 0) goto L21
            boolean r0 = r5.A09
            if (r0 != 0) goto L21
            if (r12 == 0) goto L1f
            r5.A00(r8)
        L1f:
            r5.A0A = r3
        L21:
            boolean r0 = A01(r9)
            if (r0 == 0) goto L2e
            boolean r0 = r5.A09
            r0 = r0 ^ r1
            r5.A05 = r0
            r5.A09 = r1
        L2e:
            r0 = 16
            if (r9 < r0) goto L76
            r4 = 21
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2273cp.A0D
            r0 = 3
            r1 = r2[r0]
            r0 = 0
            r2 = r2[r0]
            r0 = 3
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L70
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2273cp.A0D
            java.lang.String r1 = "ZCFeQwj13391vHgWRN0b9uu4saTnirie"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "T77fmyWcZ5yZAw0CyZibU1NLloD5WIOg"
            r0 = 0
            r2[r0] = r1
            if (r9 > r4) goto L76
            r0 = 1
        L56:
            r5.A08 = r0
            boolean r0 = r5.A08
            if (r0 != 0) goto L86
            r4 = 9
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2273cp.A0D
            r0 = 2
            r1 = r2[r0]
            r0 = 4
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L78
        L70:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L76:
            r0 = 0
            goto L56
        L78:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2273cp.A0D
            java.lang.String r1 = "4Ocv8JF3GKDeC4mKXjD2s8n1gM1kadkJ"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "fjNjuBzyWMVUxDoBQ51YAFtOMAzxYHsV"
            r0 = 1
            r2[r0] = r1
            if (r9 > r4) goto L87
        L86:
            r3 = 1
        L87:
            r5.A07 = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2273cp.A04(long, int, int, long, boolean):void");
    }

    public final void A05(long j, int i, boolean z) {
        if (this.A09 && this.A06) {
            this.A0B = this.A08;
            this.A09 = false;
            return;
        }
        boolean z2 = this.A05;
        String[] strArr = A0D;
        if (strArr[3].charAt(3) == strArr[0].charAt(3)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0D;
        strArr2[7] = "0flequyMyfE5xt94RCUdjTeoAwKrmuTb";
        strArr2[5] = "aoZIho4nWCQ4EPCYRAggXfcopQb3mjtK";
        if (!z2 && !this.A06) {
            return;
        }
        if (z && this.A0A) {
            A00(i + ((int) (j - this.A01)));
        }
        this.A03 = this.A01;
        this.A04 = this.A02;
        this.A0B = this.A08;
        this.A0A = true;
    }

    public final void A06(byte[] bArr, int i, int i2) {
        if (this.A07) {
            int i3 = (i + 2) - this.A00;
            if (i3 < i2) {
                int headerOffset = bArr[i3];
                this.A06 = (headerOffset & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0;
                this.A07 = false;
                return;
            }
            this.A00 += i2 - i;
        }
    }
}
