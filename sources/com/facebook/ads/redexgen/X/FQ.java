package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class FQ implements InterfaceC2689je {
    public static byte[] A01;
    public final /* synthetic */ FM A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 94);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-11, -2, 1, 5, -9, -15, 0, -13, 8, -15, -12, -13, 4};
    }

    public FQ(FM fm) {
        this.A00 = fm;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2689je
    public final boolean AAw() {
        if (this.A00.A0K) {
            if (this.A00.A0d.getToolbarActionMode() == 1) {
                this.A00.A0d.setToolbarActionMode(2);
                this.A00.A0Y();
            } else {
                int toolbarActionMode = this.A00.A0d.getToolbarActionMode();
                String strA00 = A00(0, 13, 52);
                if (toolbarActionMode == 0) {
                    this.A00.A0X.A0D(strA00);
                    this.A00.A0S.A04(EnumC2916nN.A07, null);
                    this.A00.A0V.A5C(this.A00.A0W.A8X());
                } else if (this.A00.A0C != null && this.A00.A0C.A0h()) {
                    this.A00.A0X.A0D(strA00);
                    this.A00.A0S.A04(EnumC2916nN.A07, null);
                    this.A00.A0V.A5C(this.A00.A0W.A8X());
                }
            }
            return true;
        }
        return false;
    }
}
