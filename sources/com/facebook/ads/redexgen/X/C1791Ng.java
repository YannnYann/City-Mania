package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import android.util.SparseIntArray;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ng, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1791Ng implements InterfaceC2278cu {
    public static String[] A05 = {"WrPJ0pg2mPJfrspahLmz5pjFVZ3GhqoW", "XFEX4XZYlFg40morts9AHvey8KOZtdLm", "6cuKepiJY3YuoKcwF9RqxVJry7zuXWia", "FhTxBa1JVVSZU0W7vi0M8MQjQwVICFNT", "5t1v8XDPU0UxAmsbKSZNGz4o0pupsy3y", "sc1mKX", "4t0AqRJOupFITXPu5dRmgnMWkOT1YaYH", "0ivFdIyTIrvJN3IRKWLvTn9YwUe91U3g"};
    public final int A00;
    public final /* synthetic */ C1790Nf A04;
    public final C1768Mj A03 = new C1768Mj(new byte[5]);
    public final SparseArray<InterfaceC2287d3> A01 = new SparseArray<>();
    public final SparseIntArray A02 = new SparseIntArray();

    public C1791Ng(C1790Nf c1790Nf, int i) {
        this.A04 = c1790Nf;
        this.A00 = i;
    }

    private C2283cz A00(C1769Mk c1769Mk, int i) {
        int iA09 = c1769Mk.A09();
        int descriptorTag = iA09 + i;
        int i2 = -1;
        String strTrim = null;
        ArrayList arrayList = null;
        while (true) {
            int iA092 = c1769Mk.A09();
            String[] strArr = A05;
            if (strArr[1].charAt(14) == strArr[6].charAt(14)) {
                throw new RuntimeException();
            }
            A05[3] = "FRrIYo9gZZwdZZnKdS5xpGv7sNAFUJd3";
            if (iA092 >= descriptorTag) {
                break;
            }
            int descriptorsStartPosition = c1769Mk.A0I();
            int descriptorLength = c1769Mk.A09() + c1769Mk.A0I();
            if (descriptorLength > descriptorTag) {
                break;
            }
            if (descriptorsStartPosition == 5) {
                long jA0Q = c1769Mk.A0Q();
                if (jA0Q == 1094921523) {
                    i2 = Sdk.SDKError.Reason.EMPTY_TPAT_ERROR_VALUE;
                } else if (jA0Q == 1161904947) {
                    i2 = Sdk.SDKError.Reason.INVALID_CONFIG_RESPONSE_VALUE;
                } else if (jA0Q == 1094921524) {
                    i2 = 172;
                } else if (jA0Q == 1212503619) {
                    i2 = 36;
                }
            } else if (descriptorsStartPosition == 106) {
                i2 = Sdk.SDKError.Reason.EMPTY_TPAT_ERROR_VALUE;
            } else if (descriptorsStartPosition == 122) {
                i2 = Sdk.SDKError.Reason.INVALID_CONFIG_RESPONSE_VALUE;
            } else if (descriptorsStartPosition == 127) {
                if (c1769Mk.A0I() == 21) {
                    i2 = 172;
                }
            } else if (descriptorsStartPosition == 123) {
                i2 = Sdk.SDKError.Reason.CONFIG_REFRESH_FAILED_VALUE;
            } else if (descriptorsStartPosition == 10) {
                String strA0W = c1769Mk.A0W(3);
                if (A05[7].charAt(23) != 85) {
                    String[] strArr2 = A05;
                    strArr2[1] = "86rcz2fFTzPsI86Gjcev7r1TLV4z3OrO";
                    strArr2[6] = "Q16PsPIOBdkA1kpc6X8ekK9PiWV3jtDj";
                    strTrim = strA0W.trim();
                } else {
                    A05[3] = "FoFLSaMdUolFLraf7Ybm8uTRjuWnz4Vo";
                    strTrim = strA0W.trim();
                }
            } else if (descriptorsStartPosition == 89) {
                i2 = 89;
                arrayList = new ArrayList();
                while (c1769Mk.A09() < descriptorLength) {
                    String dvbLanguage = c1769Mk.A0W(3).trim();
                    int iA0I = c1769Mk.A0I();
                    byte[] bArr = new byte[4];
                    c1769Mk.A0k(bArr, 0, 4);
                    arrayList.add(new C2282cy(dvbLanguage, iA0I, bArr));
                }
            } else if (descriptorsStartPosition == 111) {
                i2 = 257;
            }
            c1769Mk.A0g(descriptorLength - c1769Mk.A09());
        }
        c1769Mk.A0f(descriptorTag);
        return new C2283cz(i2, strTrim, arrayList, Arrays.copyOfRange(c1769Mk.A0l(), iA09, descriptorTag));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0149 A[PHI: r1 r2 r8 r9
      0x0149: PHI (r1v30 com.facebook.ads.redexgen.X.cz) = (r1v25 com.facebook.ads.redexgen.X.cz), (r1v34 com.facebook.ads.redexgen.X.cz) binds: [B:53:0x01d1, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x0149: PHI (r2v15 'tableId' int) = (r2v7 'tableId' int), (r2v16 'tableId' int) binds: [B:53:0x01d1, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x0149: PHI (r8v9 'programNumber' int) = (r8v6 'programNumber' int), (r8v11 'programNumber' int) binds: [B:53:0x01d1, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x0149: PHI (r9v7 'esInfoLength' int) = (r9v3 'esInfoLength' int), (r9v8 'esInfoLength' int) binds: [B:53:0x01d1, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x014b A[PHI: r1 r2 r9
      0x014b: PHI (r1v26 com.facebook.ads.redexgen.X.cz) = (r1v25 com.facebook.ads.redexgen.X.cz), (r1v30 com.facebook.ads.redexgen.X.cz), (r1v34 com.facebook.ads.redexgen.X.cz) binds: [B:53:0x01d1, B:33:0x0149, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x014b: PHI (r2v8 'tableId' int) = (r2v7 'tableId' int), (r2v15 'tableId' int), (r2v16 'tableId' int) binds: [B:53:0x01d1, B:33:0x0149, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x014b: PHI (r9v4 'esInfoLength' int) = (r9v3 'esInfoLength' int), (r9v7 'esInfoLength' int), (r9v8 'esInfoLength' int) binds: [B:53:0x01d1, B:33:0x0149, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2278cu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A5j(com.facebook.ads.redexgen.X.C1769Mk r14) {
        /*
            Method dump skipped, instruction units count: 679
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1791Ng.A5j(com.facebook.ads.redexgen.X.Mk):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2278cu
    public final void AAo(C1777Ms c1777Ms, InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
    }
}
