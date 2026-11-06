package com.facebook.ads.redexgen.X;

import android.content.pm.PackageManager;
import android.util.Base64;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class GL extends AbstractRunnableC3004oq {
    public static byte[] A02;
    public final /* synthetic */ C2970oH A00;
    public final /* synthetic */ C2973oK A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{10, 75, 89, 68, 71, 72, 72, 67, 84, 89, 77, 67, 95, 101, 68, 11, 69, 78, 95, 92, 68, 89, 64, 11, 72, 68, 69, 69, 78, 72, 95, 66, 68, 69};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() throws Exception {
        this.A01.A00 = System.currentTimeMillis();
        if (AbstractC3099qQ.A00(this.A01.A05) == EnumC3098qP.A07) {
            this.A01.A0A();
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String strA00 = A00(13, 21, 92);
            this.A01.A05.A0F().A3t(C3101qS.A01(this.A01.A01), adErrorType.getErrorCode(), strA00, adErrorType.isPublicError());
            this.A01.A0E(new C2947nt(adErrorType, strA00));
            return;
        }
        C2821lp.A08(this.A01.A05);
        AbstractC2748kb.A07(this.A01.A05);
        boolean z = true;
        Map<String, String> mapA0A = this.A00.A0A(C2850mJ.A00().A01(this.A01.A05, true).A8Z(this.A00.A05()));
        this.A01.A03 = mapA0A;
        try {
            PackageManager packageManager = this.A01.A05.getPackageManager();
            if (packageManager != null) {
                mapA0A.put(A00(1, 12, 113), new String(Base64.encode((this.A01.A05.getPackageName() + A00(0, 1, 93) + packageManager.getInstallerPackageName(this.A01.A05.getPackageName())).getBytes(), 2)));
            }
        } catch (Exception unused) {
        }
        try {
            if (this.A00.A07() != EnumC2950nx.A03 && this.A00.A07() != EnumC2950nx.A05 && this.A00.A07() != EnumC2950nx.A04 && this.A00.A07() != null) {
                z = false;
            }
            this.A01.A05.A0F().A59();
            C2139af.A02(z, this.A01.A05).AIB(this.A01.A07, new C2159az().A05(this.A01.A03).A08(), this.A01.A03(C3101qS.A00(), this.A00));
        } catch (Exception e) {
            AdErrorType adErrorType2 = AdErrorType.AD_REQUEST_FAILED;
            String message = e.getMessage();
            this.A01.A05.A0F().A3t(C3101qS.A01(this.A01.A01), adErrorType2.getErrorCode(), message, adErrorType2.isPublicError());
            this.A01.A0E(C2947nt.A01(adErrorType2, message));
        }
    }

    public GL(C2973oK c2973oK, C2970oH c2970oH) {
        this.A01 = c2973oK;
        this.A00 = c2970oH;
    }
}
