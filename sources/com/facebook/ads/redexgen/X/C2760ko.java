package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ko, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2760ko {
    public static boolean A04;
    public static byte[] A05;
    public static final String A06;
    public final C2761kp A00;
    public final C2762kq A01;
    public final C1642Hh A02;
    public final InterfaceC2106a7 A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{46, 56, 19, 41, 52, 56, 62, 45, 63};
    }

    static {
        A01();
        A06 = C2760ko.class.getSimpleName();
    }

    public C2760ko(C1642Hh c1642Hh, AH ah, C2761kp c2761kp, C2762kq c2762kq) {
        this.A02 = c1642Hh;
        this.A03 = ah.A63(EnumC2092Zt.A06);
        this.A00 = c2761kp;
        this.A01 = c2762kq;
        this.A03.A4R(new C1651Hq(this));
        A02();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A02() {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (!this.A03.ABM()) {
                this.A02.A05().AB6();
                return;
            }
            String btExtras = this.A03.A8J().optString(A00(0, 9, 62));
            if (!TextUtils.isEmpty(btExtras)) {
                this.A00.A04(this.A02, btExtras);
                if (!A04 || C2888mv.A0h(this.A02)) {
                    A04 = true;
                    this.A01.A07();
                }
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
