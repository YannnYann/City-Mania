package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fo, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C1597Fo extends RelativeLayout implements InterfaceC3145rA {
    public static byte[] A0I;
    public static String[] A0J = {"jdLsEBPN4m13TBmuhmKdZ7uyfLXRVnuB", "60QdwQaHb2lPRSKwir3oed2vosbt5Ykg", "py51RT3OWHOcIqqKX30TE13M2", "UOHp7mfnJuQATv2s03AHCn", "E3pSmIwWfVFn1SAa6DNZILUc7MSAZ90O", "sdft4pP5YzHXBffREjqfqReYumFDbpa3", "a", "sYqcHRjjqqn6EvUv4DvTrXcJmQuDIPVa"};
    public int A00;
    public long A01;
    public long A02;
    public AbstractC1675Io A03;
    public JF A04;
    public JQ A05;
    public EnumC2990oc A06;
    public String A07;
    public String A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final Handler A0C;
    public final C2683jY A0D;
    public final C1643Hi A0E;
    public final InterfaceC2909nG A0F;
    public final C1599Fq A0G;
    public final Runnable A0H;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 29);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0I = new byte[]{-50, -50, -33, -60, -42, -44, -43, -48, -50, -32, -60, -55, -45, -48, -50, -58, -32, -43, -62, -61, -59, -57, -40, -51, -38, -51, -40, -35, -83, -47, -44, -48, -15, -12, -45, -1, -2, 4, -11, 8, 4, -25, 2, -15, 0, 0, -11, 2, -29, -26, -57, -8, -25, -16, -10, -49, -29, -16, -29, -23, -25, -12, -72, -56, -59, -51, -55, -69, -56, -85, -88, -94, -73, -57, -60, -52, -56, -70, -57, -76, -55, -50, -59, -70, -93, -74, -86, -83, -91, 105, 111, 111, 111, 106, -1, -1, 16, -5, 16, 21, 12, 1, -34, -25, -28, -34, -26, -38, -18, -22, -16, -19, -34, -32, -60, -51, -54, -58, -49, -43, -75, -48, -52, -58, -49, -97, -94, -91, -83, -98, -85, -98, -99, -104, -100, -91, -94, -100, -92, -104, -99, -98, -91, -102, -78, -104, -90, -84, -77, -72, -66, -81, -72, -66, -89, -92, -82, -81, -96, -87, -96, -83, -27, -42, -25, -24, -38, -70, -29, -40, -28, -39, -38, -39, -57, -69, -72, -89, -88, -82, -85, -99, -93, -93, -93, -98, -52, -70, -49, -66, -67, -94, -57, -52, -51, -70, -57, -68, -66, -84, -51, -70, -51, -66, -27, -41, -27, -27, -37, -31, -32, -47, -42, -25, -28, -45, -26, -37, -31, -32, -47, -33, -27, -63, -65, -79, -66, -81, -72, -75, -81, -73, -85, -78, -75, -72, -64, -79, -66, -79, -80};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStop() {
    }

    static {
        A04();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1597Fo(C2683jY c2683jY, C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG) {
        super(c1643Hi);
        C1h.A09(c2683jY, A03(20, 12, 71));
        C1h.A09(c1643Hi, A03(32, 16, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE));
        C1h.A09(interfaceC2909nG, A03(48, 14, 101));
        this.A0D = c2683jY;
        this.A0E = c1643Hi;
        this.A0F = interfaceC2909nG;
        this.A02 = -1L;
        this.A06 = EnumC2990oc.A05;
        this.A01 = -1L;
        this.A0C = new Handler(Looper.getMainLooper());
        this.A0H = new RunnableC3152rH(this);
        this.A0G = new C1599Fq(this);
    }

    private final int A00() {
        int topPaddingDp;
        int i = Resources.getSystem().getDisplayMetrics().heightPixels;
        int orientation = getResources().getConfiguration().orientation;
        if (orientation == 2) {
            topPaddingDp = AnonymousClass78.A0C;
        } else {
            topPaddingDp = AnonymousClass78.A0D;
        }
        int screenHeight = (int) (topPaddingDp * Resources.getSystem().getDisplayMetrics().density);
        return i - screenHeight;
    }

    private final void A05() {
        String str = this.A07;
        if (str != null && this.A09 && !this.A0A) {
            String strA03 = A03(102, 12, 94);
            String token = A03(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 18, 47);
            String strA032 = A03(72, 12, 56);
            String token2 = A03(0, 3, 110);
            HashMap data = C0X.A01(AnonymousClass25.A00(strA03, token), AnonymousClass25.A00(strA032, token2));
            this.A0F.ABr(str, data);
        }
    }

    private final void A06() {
        String str = this.A07;
        if (str != null && this.A02 > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.A02;
            String strA03 = A03(204, 19, 85);
            String token = String.valueOf(jCurrentTimeMillis);
            String strA032 = A03(72, 12, 56);
            String token2 = A03(0, 3, 110);
            this.A0F.ABq(str, C0X.A01(AnonymousClass25.A00(strA03, token), AnonymousClass25.A00(strA032, token2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A0C(String str) {
        J0 j0 = new J0(this.A05);
        j0.A09(true);
        if (this.A0B) {
            j0.A08(A00(), 1);
        } else if (this.A06 == EnumC2990oc.A06) {
            int heightPx = Resources.getSystem().getDisplayMetrics().heightPixels;
            j0.A08(heightPx, 2);
        }
        this.A02 = System.currentTimeMillis();
        J6 j6A0A = j0.A0A();
        C1h.A08(j6A0A, A03(84, 10, 36));
        Uri uriA00 = AbstractC3036pP.A00(str);
        C1h.A08(uriA00, A03(162, 24, 88));
        this.A0E.A0F().A5R();
        this.A0E.A0F().A5F(A03(3, 17, 100));
        j6A0A.A03(this.A0D.A05(), uriA00);
        if (this.A09 && this.A01 > 0) {
            this.A0C.postDelayed(this.A0H, this.A01);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A0D(String str) {
        if (this.A0A || !this.A09) {
            return;
        }
        this.A0A = true;
        this.A0C.removeCallbacks(this.A0H);
        String str2 = this.A07;
        if (str2 != null) {
            HashMap data = C0X.A01(AnonymousClass25.A00(A03(102, 12, 94), str), AnonymousClass25.A00(A03(72, 12, 56), A03(0, 3, 110)));
            new C3303ti(data).A03(this.A0E, this.A08);
            this.A0F.ACA(str2, data);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void ABc(Intent intent, Bundle bundle, C2683jY c2683jY) {
        C1h.A09(intent, A03(148, 6, 45));
        C1h.A09(c2683jY, A03(20, 12, 71));
        String launchUrl = intent.getStringExtra(A03(62, 10, 57));
        this.A08 = launchUrl;
        String url = A03(Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 11, 68);
        this.A07 = intent.getStringExtra(url);
        this.A0B = C2888mv.A2z(this.A0E);
        C2989ob c2989ob = EnumC2990oc.A02;
        String url2 = A03(94, 8, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE);
        this.A06 = c2989ob.A00(intent.getStringExtra(url2));
        String url3 = A03(Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 23, 28);
        String url4 = intent.getStringExtra(url3);
        this.A01 = url4 != null ? Long.parseLong(url4) : -1L;
        this.A09 = this.A01 > 0;
        String cctPackage = AbstractC1675Io.A03(this.A0E.getApplicationContext(), null);
        if (cctPackage == null || launchUrl == null) {
            c2683jY.finish(18);
            return;
        }
        this.A04 = new C1598Fp(this, launchUrl);
        C1643Hi c1643Hi = this.A0E;
        JF jf = this.A04;
        C1h.A06(jf);
        if (!AbstractC1675Io.A06(c1643Hi, cctPackage, jf)) {
            A0C(launchUrl);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGF(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGp(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AKD(Bundle bundle) {
        C1h.A09(bundle, A03(186, 18, 60));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public String getCurrentClientToken() {
        String str = this.A07;
        return str == null ? A03(0, 0, 31) : str;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        if (i != 94532) {
            return false;
        }
        boolean z = this.A0A;
        if (A0J[6].length() == 9) {
            throw new RuntimeException();
        }
        A0J[6] = "IZ";
        if (!z) {
            A05();
        }
        A06();
        this.A0E.A0F().A5E(A03(3, 17, 100));
        this.A0D.finish(0);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onDestroy() {
        this.A0C.removeCallbacks(this.A0H);
        AudienceNetworkActivity audienceNetworkActivityA05 = this.A0D.A05();
        if (audienceNetworkActivityA05 != null) {
            audienceNetworkActivityA05.finishActivity(94532);
        }
        JF jf = this.A04;
        if (jf != null) {
            try {
                this.A0E.unbindService(jf);
            } catch (Exception unused) {
            }
        }
    }

    public void setListener(InterfaceC3144r9 interfaceC3144r9) {
        C1h.A09(interfaceC3144r9, A03(154, 8, 30));
    }
}
