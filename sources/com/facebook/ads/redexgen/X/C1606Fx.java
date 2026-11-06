package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1606Fx implements InterfaceC3284tP {
    public static byte[] A01;
    public static String[] A02 = {"yUnSsugZEqBvOWeWThYJXSUWJr98hEn9", "v1Zq", "vxAHZYDX9w6ucwOVSplT3", "JJMQVo6GPYWEzjGHy5WTa", "lME5sv3YYwuy9JAOW9qVgD8", "DlJJS3tIuTCvZ0MdUSHO9FzR8ufOm18", "kywp41vHVnWBiZX0SE6DEwI4oCFMz", "7CWOaxJQPrz5qAknrW7tkHM6WZbECHWN"};
    public final /* synthetic */ AnonymousClass78 A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 100);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{79, 73, 95, 72, 101, 88, 79, 92, 92, 95, 72, 95, 94, 101, 89, 86, 83, 89, 81, 101, 83, 91, 88, 101, 84, 91, 76, 83, 93, 91, 78, 83, 85, 84};
    }

    static {
        A01();
    }

    public C1606Fx(AnonymousClass78 anonymousClass78) {
        this.A00 = anonymousClass78;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGC(String str) {
        this.A00.A0E.setProgress(100);
        ((C1602Ft) this.A00).A07 = false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGE(String str) {
        ((C1602Ft) this.A00).A07 = true;
        this.A00.A0H.setUrl(str);
        if (this.A00.A00 > 1) {
            this.A00.A0K(A00(0, 34, 94));
        }
        AnonymousClass78.A02(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGf(int i) {
        if (((C1602Ft) this.A00).A07) {
            AnonymousClass78 anonymousClass78 = this.A00;
            if (A02[6].length() == 8) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[2] = "ozb06X96Ky3QCfknnucaT";
            strArr[3] = "ZNoDxQJp8ccLn1qnPdtqa";
            anonymousClass78.A0E.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGi(String str) {
        this.A00.A0H.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGl() {
        this.A00.A0D.AEH(14);
    }
}
