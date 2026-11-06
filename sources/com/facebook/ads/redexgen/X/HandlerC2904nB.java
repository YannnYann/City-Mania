package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HandlerC2904nB extends Handler {
    public static byte[] A04;
    public static final String A05;
    public final Context A00;
    public final AudienceNetworkRemoteServiceApi.MessageHandler A01;
    public final AudienceNetworkRemoteServiceApi.PackageVerifier A02;
    public final C1634Gz A03;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A04 = new byte[]{101, 93, 97, 97, 93, 95, -105, -92, -92, -95, -76, -98, -88, -76, -101, -86, -93, -93, -102, -95, -76, -95, -92, -100, -100, -102, -103, -11, -10, -12, 1, -29, -26, 1, -21, -26, 1, -19, -25, -5, -118, -117, -119, -106, 121, -116, -123, 123, -125, 124, -106, -126, 124, -112, -59, -58, -60, -47, -59, -73, -60, -56, -69, -75, -73, -47, -73, -54, -58, -60, -77, -59, -34, -33, -35, -22, -34, -48, -35, -31, -44, -50, -48, -22, -34, -49, -42, -22, -31, -48, -35, -34, -44, -38, -39};
    }

    static {
        A04();
        A05 = HandlerC2904nB.class.getSimpleName();
    }

    public HandlerC2904nB(Context context, AudienceNetworkRemoteServiceApi.MessageHandler messageHandler, AudienceNetworkRemoteServiceApi.PackageVerifier packageVerifier) {
        super(Looper.getMainLooper());
        this.A00 = context;
        this.A02 = packageVerifier;
        this.A03 = C1634Gz.A00();
        this.A01 = messageHandler;
    }

    public static Bundle A00() {
        Bundle bundle = new Bundle();
        bundle.putString(A03(72, 23, 98), A03(0, 6, 6));
        bundle.putString(A03(54, 18, 73), new JSONObject().toString());
        return bundle;
    }

    private C1709Jz A01(C1705Jv c1705Jv, String str) {
        C1709Jz c1709Jz = new C1709Jz(c1705Jv, this.A03, str);
        c1709Jz.A0G(c1705Jv.A0B(), c1705Jv.A07());
        return c1709Jz;
    }

    private C1706Jw A02(C1688Jc c1688Jc, String str) {
        C1706Jw c1706Jw = new C1706Jw(c1688Jc, this.A03, str);
        c1706Jw.A0J(c1688Jc.A05, c1688Jc.A02, c1688Jc.A08);
        return c1706Jw;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) throws Throwable {
        String strVerifyPackage;
        if (AbstractC2996oi.A02(this)) {
        }
        try {
            if (this.A01 != null && this.A01.handleMessage(msg)) {
                return;
            }
            Messenger messenger = msg.replyTo;
            if (msg.what == 1) {
                if (messenger != null) {
                    C1634Gz.A00().A07(2, null, A00(), messenger);
                    return;
                }
                return;
            }
            String callingAppPackage = msg.getData().getString(A03(27, 13, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
            if (callingAppPackage == null) {
                return;
            }
            C1643Hi c1643HiA05 = C2698jn.A05(this.A00, callingAppPackage);
            c1643HiA05.A0F().AKk(msg.getData().getBoolean(A03(6, 21, 44), false));
            if (this.A02 != null) {
                strVerifyPackage = this.A02.verifyPackage(this.A00, msg, msg.getData().getString(A03(40, 14, 14)));
            } else {
                strVerifyPackage = null;
            }
            if (strVerifyPackage == null) {
                if (messenger != null) {
                    C1634Gz.A00().A07(20, callingAppPackage, null, messenger);
                }
                c1643HiA05.A0F().AJ9();
                return;
            }
            switch (msg.what) {
                case 1010:
                    if (messenger != null) {
                        C2901n8 c2901n8A04 = C1634Gz.A00().A04(callingAppPackage);
                        if (c2901n8A04 == null) {
                            c2901n8A04 = C1634Gz.A00().A05(callingAppPackage, messenger, strVerifyPackage);
                        }
                        C1705Jv intAdModel = AbstractC2495gR.A04(c1643HiA05, msg.getData(), strVerifyPackage);
                        if (c2901n8A04.A00 == null) {
                            c2901n8A04.A00 = A01(intAdModel, callingAppPackage);
                        } else if (c2901n8A04.A00 instanceof C1709Jz) {
                            ((C1709Jz) c2901n8A04.A00).A0G(intAdModel.A0B(), intAdModel.A07());
                        }
                        C1634Gz.A00().A07(1011, callingAppPackage, A00(), messenger);
                        break;
                    }
                    break;
                case 1012:
                case 2002:
                    C1634Gz.A00().A08(callingAppPackage);
                    break;
                case 2000:
                    if (messenger != null) {
                        C2901n8 c2901n8A042 = C1634Gz.A00().A04(callingAppPackage);
                        if (c2901n8A042 == null) {
                            c2901n8A042 = C1634Gz.A00().A05(callingAppPackage, messenger, strVerifyPackage);
                        }
                        C1688Jc c1688JcA05 = AbstractC2495gR.A05(c1643HiA05, msg.getData(), strVerifyPackage);
                        if (c2901n8A042.A00 == null) {
                            c2901n8A042.A00 = A02(c1688JcA05, callingAppPackage);
                        } else if (c2901n8A042.A00 instanceof C1706Jw) {
                            C1706Jw c1706Jw = (C1706Jw) c2901n8A042.A00;
                            String adId = c1688JcA05.A05;
                            c1706Jw.A0J(adId, c1688JcA05.A02, c1688JcA05.A08);
                        }
                        C1634Gz.A00().A07(2001, callingAppPackage, A00(), messenger);
                        break;
                    }
                    break;
                case 2003:
                    InterfaceC2475g7 interfaceC2475g7A03 = C1634Gz.A00().A03(callingAppPackage);
                    if (interfaceC2475g7A03 instanceof C1706Jw) {
                        RewardData rewardDataA01 = AbstractC2496gS.A01(msg.getData());
                        C1706Jw c1706Jw2 = (C1706Jw) interfaceC2475g7A03;
                        if (rewardDataA01 != null) {
                            c1706Jw2.A0I(rewardDataA01);
                        }
                    }
                    break;
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
