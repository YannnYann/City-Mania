package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.co, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2272co {
    public static String[] A0I = {"zorcH0HQPQgzHnkweoL4sf0jfX8i5q6J", "rVxqpu0T4ltanYXApGkISjx4fCHwA2iU", "crOs1I9rituf86jZV", "nQGbvGxlTAQsq5WIEo1XrHiZ1y0lEIUj", "iQe", "JAEFAkeJNOmxVKjiYawuVCOFrihrw", "rEUu1I8BajWKwbQCHk", "CO1NGipHaspfxNWwoT3crtaOgXOw7YVd"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final ZP A0F;
    public final boolean A0G;
    public final boolean A0H;
    public final SparseArray<ZD> A0D = new SparseArray<>();
    public final SparseArray<ZC> A0C = new SparseArray<>();
    public C2271cn A06 = new C2271cn();
    public C2271cn A07 = new C2271cn();
    public byte[] A0B = new byte[Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE];
    public final ZG A0E = new ZG(this.A0B, 0, 0);

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A05(byte[] bArr, int i, int i2) {
        if (this.A08) {
            int i3 = i2 - i;
            if (this.A0B.length < this.A00 + i3) {
                this.A0B = Arrays.copyOf(this.A0B, (this.A00 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.A0B, this.A00, i3);
            this.A00 += i3;
            this.A0E.A08(this.A0B, 0, this.A00);
            if (this.A0E.A0B(8)) {
                this.A0E.A06();
                int iA05 = this.A0E.A05(2);
                this.A0E.A07(5);
                if (this.A0E.A09()) {
                    this.A0E.A04();
                    if (this.A0E.A09()) {
                        int iA04 = this.A0E.A04();
                        if (!this.A0H) {
                            this.A08 = false;
                            this.A07.A03(iA04);
                            return;
                        }
                        if (this.A0E.A09()) {
                            int iA042 = this.A0E.A04();
                            if (this.A0C.indexOfKey(iA042) < 0) {
                                this.A08 = false;
                                return;
                            }
                            ZC zc = this.A0C.get(iA042);
                            ZD zd = this.A0D.get(zc.A01);
                            if (zd.A0D) {
                                if (!this.A0E.A0B(2)) {
                                    return;
                                } else {
                                    this.A0E.A07(2);
                                }
                            }
                            if (this.A0E.A0B(zd.A02)) {
                                boolean zA0A = false;
                                boolean z = false;
                                boolean zA0A2 = false;
                                int iA052 = this.A0E.A05(zd.A02);
                                if (!zd.A0C) {
                                    if (!this.A0E.A0B(1)) {
                                        return;
                                    }
                                    zA0A = this.A0E.A0A();
                                    if (zA0A) {
                                        ZG zg = this.A0E;
                                        if (A0I[5].length() == 21) {
                                            throw new RuntimeException();
                                        }
                                        A0I[5] = "IpXuah1Far9fzL3cOlu0";
                                        if (!zg.A0B(1)) {
                                            return;
                                        }
                                        zA0A2 = this.A0E.A0A();
                                        z = true;
                                    }
                                }
                                boolean z2 = this.A01 == 5;
                                int iA043 = 0;
                                if (z2) {
                                    if (!this.A0E.A09()) {
                                        return;
                                    } else {
                                        iA043 = this.A0E.A04();
                                    }
                                }
                                int iA053 = 0;
                                int iA03 = 0;
                                int iA032 = 0;
                                int iA033 = 0;
                                if (zd.A07 == 0) {
                                    if (!this.A0E.A0B(zd.A06)) {
                                        return;
                                    }
                                    iA053 = this.A0E.A05(zd.A06);
                                    if (zc.A02 && !zA0A) {
                                        if (!this.A0E.A09()) {
                                            return;
                                        } else {
                                            iA03 = this.A0E.A03();
                                        }
                                    }
                                } else if (zd.A07 == 1 && !zd.A0B) {
                                    if (!this.A0E.A09()) {
                                        return;
                                    }
                                    iA032 = this.A0E.A03();
                                    boolean z3 = zc.A02;
                                    String[] strArr = A0I;
                                    if (strArr[3].charAt(11) == strArr[7].charAt(11)) {
                                        throw new RuntimeException();
                                    }
                                    String[] strArr2 = A0I;
                                    strArr2[3] = "fR8fvJivqB2uRnCgnwS3dRrhYpBAVfIB";
                                    strArr2[7] = "Uh8RDC5mpi1TZBNrH7APOf2CdU3JNOiF";
                                    if (z3 && !zA0A) {
                                        if (!this.A0E.A09()) {
                                            return;
                                        } else {
                                            iA033 = this.A0E.A03();
                                        }
                                    }
                                }
                                this.A07.A04(zd, iA05, iA04, iA052, iA042, zA0A, z, zA0A2, z2, iA043, iA053, iA03, iA032, iA033);
                                this.A08 = false;
                            }
                        }
                    }
                }
            }
        }
    }

    public C2272co(ZP zp, boolean z, boolean z2) {
        this.A0F = zp;
        this.A0G = z;
        this.A0H = z2;
        A01();
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
        if (this.A05 == -9223372036854775807L) {
            return;
        }
        boolean z = this.A0A;
        this.A0F.AKC(this.A05, z ? 1 : 0, (int) (this.A02 - this.A04), i, null);
    }

    public final void A01() {
        this.A08 = false;
        this.A09 = false;
        this.A07.A02();
    }

    public final void A02(long j, int i, long j2) {
        this.A01 = i;
        this.A03 = j2;
        this.A02 = j;
        if (!this.A0G || this.A01 != 1) {
            if (!this.A0H) {
                return;
            }
            if (this.A01 != 5 && this.A01 != 1) {
                int i2 = this.A01;
                if (A0I[5].length() == 21) {
                    throw new RuntimeException();
                }
                A0I[2] = "ttXAM0";
                if (i2 != 2) {
                    return;
                }
            }
        }
        C2271cn c2271cn = this.A06;
        C2271cn newSliceHeader = this.A07;
        this.A06 = newSliceHeader;
        this.A07 = c2271cn;
        C2271cn newSliceHeader2 = this.A07;
        newSliceHeader2.A02();
        this.A00 = 0;
        this.A08 = true;
    }

    public final void A03(ZC zc) {
        this.A0C.append(zc.A00, zc);
    }

    public final void A04(ZD zd) {
        this.A0D.append(zd.A09, zd);
    }

    public final boolean A06() {
        return this.A0H;
    }

    public final boolean A07(long j, int i, boolean z, boolean z2) {
        boolean z3 = false;
        if (this.A01 == 9 || (this.A0H && this.A07.A00(this.A06))) {
            if (z && this.A09) {
                A00(i + ((int) (j - this.A02)));
            }
            this.A04 = this.A02;
            this.A05 = this.A03;
            this.A0A = false;
            this.A09 = true;
        }
        if (this.A0G) {
            z2 = this.A07.A05();
        }
        boolean z4 = this.A0A;
        if (this.A01 == 5 || (z2 && this.A01 == 1)) {
            z3 = true;
        }
        this.A0A = z4 | z3;
        boolean treatIFrameAsKeyframe = this.A0A;
        return treatIFrameAsKeyframe;
    }
}
