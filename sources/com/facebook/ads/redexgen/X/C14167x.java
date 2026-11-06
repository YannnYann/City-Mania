package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Comparator;
import java.util.TreeSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7x, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class C14167x implements InterfaceC1770Ml {
    public static byte[] A03;

    @MetaExoPlayerCustomization
    public long A00;

    @MetaExoPlayerCustomization
    public final long A01;

    @MetaExoPlayerCustomization
    public final TreeSet<C2366eL> A02 = new TreeSet<>(new Comparator() { // from class: com.facebook.ads.redexgen.X.eZ
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return C14167x.A00((C2366eL) obj, (C2366eL) obj2);
        }
    });

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 123);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{-9, 8, -5, -11, 6, -43, -13, -11, -6, -9};
    }

    public C14167x(long j) {
        this.A01 = j;
    }

    @MetaExoPlayerCustomization
    public static int A00(C2366eL c2366eL, C2366eL c2366eL2) {
        if (c2366eL.A00 - c2366eL2.A00 == 0) {
            return c2366eL.compareTo(c2366eL2);
        }
        return c2366eL.A00 < c2366eL2.A00 ? -1 : 1;
    }

    private void A03(InterfaceC2356eB interfaceC2356eB, long j) {
        AbstractC1778Mt.A02(A01(0, 10, 23));
        while (this.A00 + j > this.A01 && !this.A02.isEmpty()) {
            interfaceC2356eB.AJm(this.A02.first());
        }
        AbstractC1778Mt.A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2355eA
    public final void AH9(InterfaceC2356eB interfaceC2356eB, C2366eL c2366eL) {
        this.A02.add(c2366eL);
        this.A00 += c2366eL.A01;
        A03(interfaceC2356eB, 0L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2355eA
    public final void AHA(InterfaceC2356eB interfaceC2356eB, C2366eL c2366eL) {
        this.A02.remove(c2366eL);
        this.A00 -= c2366eL.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2355eA
    public final void AHB(InterfaceC2356eB interfaceC2356eB, C2366eL c2366eL, C2366eL c2366eL2) {
        AHA(interfaceC2356eB, c2366eL);
        AH9(interfaceC2356eB, c2366eL2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1770Ml
    public final void AHC(InterfaceC2356eB interfaceC2356eB, String str, long j, long j2) {
        if (j2 != -1) {
            A03(interfaceC2356eB, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1770Ml
    public final boolean AK1() {
        return true;
    }
}
