package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnTouchListenerC3422vd implements View.OnTouchListener {
    public static byte[] A01;
    public final /* synthetic */ EE A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 29);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{83, 85, 67, 84, 121, 69, 74, 79, 69, 77, 121, 79, 71, 68, 26, 28, 10, 29, 48, 4, 10, 22, 31, 14, 11, 48, 12, 3, 6, 12, 4, 48, 6, 14, 13};
    }

    public ViewOnTouchListenerC3422vd(EE ee) {
        this.A00 = ee;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
                if (!this.A00.A0P && this.A00.A0i != null && this.A00.A0i.isAcceptingText()) {
                    this.A00.A0P = true;
                    this.A00.A0w(A00(14, 21, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE));
                    break;
                }
                break;
            case 1:
                EE.A04(this.A00);
                if (!this.A00.A0O && this.A00.A03 >= 5) {
                    this.A00.A0O = true;
                    this.A00.A0w(A00(0, 14, 59));
                    break;
                }
                break;
        }
        return false;
    }
}
