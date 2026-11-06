package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2 extends AbstractC2225c3 {
    public static byte[] A05;
    public static String[] A06 = {"qTolDLT4M3FkrOwuqzZNZoCfFPRFBRve", "gVVF3gTOFjHtojPLGOl3qs4KvHZR8KsI", "5rrLBv2b9NEAZxDWDPdJ", "76ULxuL0WFOWgZvyR56rtX42L0Y3w5vy", "d1DuJoAD", "fQARIlvXH2yko2P6vXZwqvSZcHSOyX8r", "fWozkrPutuxwl9npR4RGNVFJW8duoeRl", "Vabxs5SUaULl3Zi2zbWqKdSJGUzgxMpw"};
    public final /* synthetic */ InterfaceC2909nG A00;
    public final /* synthetic */ C3102qT A01;
    public final /* synthetic */ C1 A02;
    public final /* synthetic */ String A03;
    public final /* synthetic */ List A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 127);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{64, 62, 79, 76, 82, 80, 66, 73, 60, 83, 15, 60, 64, 79, 66, 62, 81, 70, 83, 66, 58, 63, 69, 54, 67, 50, 52, 69, 58, 71, 54, 48, 52, 67, 54, 50, 69, 58, 71, 54, -11, -13, -10, -26};
    }

    static {
        A01();
    }

    public C2(C1 c1, String str, List list, C3102qT c3102qT, InterfaceC2909nG interfaceC2909nG) {
        this.A02 = c1;
        this.A03 = str;
        this.A04 = list;
        this.A01 = c3102qT;
        this.A00 = interfaceC2909nG;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2225c3
    public final void A03() {
        if (this.A02.A06.A0Z()) {
            return;
        }
        boolean zIsEmpty = TextUtils.isEmpty(this.A03);
        String[] strArr = A06;
        if (strArr[1].charAt(6) != strArr[0].charAt(6)) {
            throw new RuntimeException();
        }
        A06[5] = "ylNFu7EFE0xF1MMKNXv89byIVZdT7Hr7";
        if (zIsEmpty) {
            return;
        }
        for (C2647iy c2647iy : this.A04) {
            if (!this.A02.A03.get(c2647iy.A02())) {
                Map<String, String> mapA07 = new C3303ti(c2647iy.A08()).A05(this.A02.A02).A04(this.A01).A07();
                boolean z = this.A02.A07;
                String strA00 = A00(40, 4, 2);
                if (z) {
                    mapA07.put(A00(0, 20, 94), strA00);
                } else {
                    mapA07.put(A00(20, 20, 82), strA00);
                }
                this.A00.AC7(this.A03, mapA07);
                C2435fT.A07(this.A02.A00, this.A02.A04);
                this.A02.A03.put(c2647iy.A02(), true);
            }
        }
    }
}
