package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2269cl {
    public static String[] A08 = {"T34PjHqEzj1ctaGuLMlaLvf6D0KsR8a2", "WQjUFITf3", "l9UjtgDKnZ7sjoaKQhjopS5Obo", "DdtXO2QpGAK3d7grPxf6ESMPb1xlPLyq", "JP08pl", "zRIe8uD7prrSbDm9PBymph8MZXsLH", "Y43ym5tEohkn1qgNEEtErjdhf", "U6AeamgotpLOyTVpJJk3DDe"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final ZP A07;

    public C2269cl(ZP zp) {
        this.A07 = zp;
    }

    public final void A00() {
        this.A05 = false;
        this.A04 = false;
        this.A06 = false;
        this.A00 = -1;
    }

    public final void A01(int i, long j) {
        this.A00 = i;
        this.A06 = false;
        boolean z = true;
        this.A05 = i == 182 || i == 179;
        if (A08[6].length() == 9) {
            throw new RuntimeException();
        }
        A08[3] = "fo4XDTjRM6hqmIu9QsjgFOFyAGWhhWyT";
        if (i != 182) {
            z = false;
        }
        this.A04 = z;
        this.A01 = 0;
        this.A03 = j;
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
    public final void A02(long j, int i, boolean z) {
        if (this.A00 == 182 && z && this.A05) {
            long j2 = this.A03;
            String[] strArr = A08;
            if (strArr[1].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A08[0] = "M66inROcz26ZuKnRt8kTGrBut9qF88s2";
            if (j2 != -9223372036854775807L) {
                this.A07.AKC(this.A03, this.A06 ? 1 : 0, (int) (j - this.A02), i, null);
            }
        }
        if (this.A00 != 179) {
            this.A02 = j;
        }
    }

    public final void A03(byte[] bArr, int i, int i2) {
        if (this.A04) {
            int i3 = (i + 1) - this.A01;
            if (i3 < i2) {
                int headerOffset = bArr[i3];
                this.A06 = ((headerOffset & 192) >> 6) == 0;
                String[] strArr = A08;
                String str = strArr[5];
                String str2 = strArr[4];
                int length = str.length();
                int headerOffset2 = str2.length();
                if (length == headerOffset2) {
                    throw new RuntimeException();
                }
                A08[2] = "nMD11EbpAEAyrDpemBVmV7Uqp1";
                this.A04 = false;
                return;
            }
            this.A01 += i2 - i;
        }
    }
}
