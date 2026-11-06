package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.AlertDialog;
import android.widget.EditText;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.google.android.gms.ads.AdSize;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1608Fz implements InterfaceC3129qu {
    public static byte[] A04;
    public C1642Hh A00;
    public C2830ly A01;
    public InterfaceC2214bs A02;
    public final Executor A03;

    static {
        A06();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A04 = new byte[]{107, 110, 110, 104, 109, 96, 104, 106, 111, 107, 106, 105, 110, 104, 107, 64, 75, 69, 66, 65, 71, 70, 64, 66, 74, 74, 71, 70, 65, 70, 64, 79, 69, 79, 67, 69, 79, 66, 70, 79, 79, 65, 79, 70, 71, 10, 79, 20, 16, 68, 79, 23, 71, 16, 68, 65, 66, 67, 65, 66, 64, 23, 64, 21, 64, 70, 18, 65, 70, 65, 16, 67, 20, 21, 68, 69, 21, 68, 116, 86, 89, 84, 82, 91, 30, 50, 42, 115, 60, 39, 59, 54, 33, 32, 115, 63, 60, 52, 58, 61, 115, 50, 32, 115, 42, 60, 38, 115, 39, 60, 115, 55, 54, 49, 38, 52, 108, 115, 27, 60, 36, 115, 55, 60, 115, 42, 60, 38, 115, 33, 54, 35, 33, 60, 55, 38, 48, 54, 115, 39, 59, 54, 115, 58, 32, 32, 38, 54, 108, 83, 101, 110, 100, 32, 82, 101, 112, 111, 114, 116, 52, 11, 2, 23, 67, 43, 2, 19, 19, 6, 13, 6, 7, 92, 27, 25, 25, 31, 9, 9, 37, 14, 21, 17, 31, 20, 14, 12, 25, 8, 10, 2, 31, 20, 50, 4, 9, 42, 37, 32, 44, 39, 61, 22, 61, 32, 36, 44, 90, 85, 80, 92, 87, 77, 102, 77, 86, 82, 92, 87, 108, 96, 97, 105, 102, 104, 80, 102, 107, 32, 33, 55, 39, 54, 45, 52, 48, 45, 43, 42, 61, 53, 36, 49, 52, 49, 36, 49, 116, 112, 106, 122, 70, 112, 119, 127, 118, 106, 108, 122, 109, 64, 118, 123, 122, 113, 107, 118, 121, 118, 122, 109};
    }

    public C1608Fz(Executor executor, C2830ly c2830ly, C1643Hi c1643Hi) {
        this.A00 = c1643Hi.A02();
        this.A02 = C2139af.A01(this.A00);
        this.A03 = executor;
        this.A01 = c2830ly;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A02(String str) {
        C2159az c2159az = new C2159az();
        C2159az c2159az2 = new C2159az();
        C2159az c2159az3 = new C2159az();
        c2159az.put(A03(257, 15, 96), AbstractC2748kb.A00().A03());
        c2159az.put(A03(Sdk.SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 9, 112), A03(15, 15, 13));
        c2159az.put(A03(186, 11, 18), A03(0, 15, 38));
        c2159az.put(A03(174, 12, 5), A03(30, 48, 9));
        c2159az.put(A03(197, 11, 54), (System.currentTimeMillis() / 1000) + A03(0, 0, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE));
        String strA09 = this.A01.A09();
        if (strA09 != null) {
            c2159az3.put(A03(208, 12, 70), strA09);
        }
        c2159az2.put(A03(229, 11, 59), str);
        c2159az2.put(A03(248, 9, 102), AbstractC3077q4.A01(c2159az3));
        c2159az.A04(A03(240, 8, 47), AbstractC3077q4.A01(c2159az2));
        return c2159az;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(C2830ly c2830ly) {
        this.A01 = c2830ly;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3129qu
    public final void AH2() {
        Activity activityA00 = ActivityUtils.A00();
        if (activityA00 == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activityA00);
        builder.setTitle(A03(AdSize.WIDE_SKYSCRAPER_WIDTH, 14, 28));
        EditText editText = new EditText(activityA00);
        editText.setSingleLine(false);
        editText.setImeOptions(1073741824);
        editText.setHint(A03(84, 65, 44));
        editText.setMaxLines(2);
        editText.setMinLines(2);
        builder.setView(editText);
        builder.setNegativeButton(A03(78, 6, 72), new DialogInterfaceOnClickListenerC3126qr(this));
        builder.setPositiveButton(A03(149, 11, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE), new DialogInterfaceOnClickListenerC3127qs(this, editText));
        builder.create().show();
    }
}
