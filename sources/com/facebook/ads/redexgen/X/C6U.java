package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.vungle.ads.internal.protos.Sdk;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6U, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C6U extends FrameLayout implements InterfaceC3145rA, InterfaceC1554Dw, C1L {
    public static byte[] A0K;
    public static String[] A0L = {"Ky6zrcoV7NYtZpO3AnBVhERgUe61TP4A", com.ironsource.Nc.e, "MIS71VG0t7feKobdqgnq1TwubiJ1N09z", "nEwmQOfqxRkjYDAAu8TY0n89Pulsb82", "nm6mhrtocmSPL4qM7u9wOkkvqXPHcra", "ADTrDSFqqVysA22fSklmKPGMwsWvvDiN", "oNlgPu", "28CTXOUAXLtNi6XFaROwO0buCKC9QIVi"};
    public C2683jY A00;
    public InterfaceC2689je A01;
    public C2E A02;
    public C1J A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public final LA A08;
    public final C1643Hi A09;
    public final InterfaceC2909nG A0A;
    public final C2917nO A0B;
    public final ViewOnSystemUiVisibilityChangeListenerC3097qO A0C;
    public final C3102qT A0D;
    public final InterfaceC3144r9 A0E;
    public final InterfaceC3200s3 A0F;
    public final C3449w4 A0G;
    public final C1930Tb A0H;
    public final AbstractC2225c3 A0I;
    public final C2224c2 A0J;

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0D() {
        A0K = new byte[]{-88, -43, -43, -46, -43, -125, -58, -43, -56, -60, -41, -52, -47, -54, -125, -58, -46, -47, -55, -52, -54, -125, -83, -74, -78, -79, 4, 22, 22, 8, 23, 2, 7, 18, 26, 17, 15, 18, 4, 7, 2, 6, 18, 16, 19, 15, 8, 23, 8, -95, -90, -97, -89, -84, -93, -94, -99, -97, -94, -107, -102, -109, -101, -96, -105, -106, -111, -109, -106, -111, -101, -96, -106, -105, -86, -115, -110, -117, -109, -104, -113, -114, -119, -117, -114, -119, -98, -103, -98, -117, -106, -90, -85, -92, -84, -79, -88, -89, -94, -73, -84, -80, -88, -94, -74, -77, -88, -79, -73, 7, 16, 13, 7, 15, 3, 23, 19, 25, 22, 7, 9, -97, -88, -98, -99, -101, -84, -98, 25, 23, 9, 22, 7, 16, 13, 7, 15, -37, -50, -54, -36, -60, -41, -54, -58, -55, -34, -60, -39, -44, -60, -40, -51, -44, -36};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStop() {
    }

    static {
        A0D();
    }

    public C6U(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, LA la, InterfaceC3200s3 interfaceC3200s3, int i) {
        super(c1643Hi);
        this.A01 = new EA(this);
        this.A0I = new E9(this);
        this.A04 = true;
        this.A09 = c1643Hi;
        this.A0A = interfaceC2909nG;
        this.A0E = interfaceC3144r9;
        this.A08 = la;
        this.A0F = interfaceC3200s3;
        C1930Tb c1930TbA02 = M1.A02(la.A1r());
        if (c1930TbA02 == null) {
            this.A0H = new C1930Tb(this.A09, la, interfaceC2909nG, i);
            this.A05 = false;
        } else {
            this.A0H = c1930TbA02;
            this.A05 = true;
        }
        this.A0B = this.A0H.A0M();
        this.A0D = this.A0H.A0N();
        this.A0H.A0i(new E8(this));
        AbstractC3111qc.A0H(IronSourceError.AUCTION_ERROR_DECRYPTION, this.A0H.A0Q());
        if (this.A08.A2B()) {
            this.A0G = new C3449w4(this.A09, this.A0A, this.A08, new C2771kz(this.A09), this.A0B, this.A0E, this.A0F, new E7(this));
            this.A0G.A0N();
            this.A0H.A0Q().setOnTouchListener(new ViewOnTouchListenerC3445w0(this));
            addView(this.A0G, new FrameLayout.LayoutParams(-1, -1));
        } else {
            this.A0G = null;
        }
        ViewGroup mediaView = getMediaView();
        this.A0J = new C2224c2(mediaView, 1, new WeakReference(this.A0I), this.A09);
        this.A0J.A0W(this.A08.A1J());
        this.A0J.A0X(this.A08.A1K());
        this.A0H.A0l(this.A0J);
        this.A0C = new ViewOnSystemUiVisibilityChangeListenerC3097qO(this);
        this.A0C.A05(EnumC3096qN.A03);
        setBackgroundColor(0);
        if (C2888mv.A1z(c1643Hi)) {
            c1643Hi.A0B().AM9(mediaView, la.A37(), false, false, true);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            boolean zA3E = la.A3E();
            String strA0B = A0B(91, 18, 26);
            String strA0B2 = A0B(59, 16, 9);
            String strA0B3 = A0B(75, 16, 1);
            String strA0B4 = A0B(49, 10, 21);
            if (zA3E) {
                jSONObject.put(strA0B4, true);
                jSONObject.put(strA0B3, 2);
                jSONObject.put(strA0B2, 0);
                jSONObject.put(strA0B, this.A08.A1Q());
            } else if (C3037pQ.A05(la.A1b())) {
                jSONObject.put(strA0B4, true);
                jSONObject.put(strA0B3, 2);
                jSONObject.put(strA0B2, 1);
                jSONObject.put(strA0B, this.A08.A1Q());
            }
            this.A0H.A0t(jSONObject);
        } catch (JSONException unused) {
            this.A0H.A0O().A04(AbstractC2811lf.A15, A0B(0, 26, 58));
        }
    }

    private void A0C() {
        C3184rn c3184rnA0F = new C3186rp(this.A09, this.A08.A32().A0J(), this.A08.A35()).A0A(this.A08.A31().A01()).A0F();
        addView(c3184rnA0F, new FrameLayout.LayoutParams(-1, -1));
        c3184rnA0F.A04(new E5(this));
    }

    private final void A0E() {
        this.A0H.A0e(this.A0G, new Runnable() { // from class: com.facebook.ads.redexgen.X.vz
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.close();
            }
        });
        this.A0H.A0j(this);
        this.A0H.A0n(A0B(26, 23, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE));
        if (!this.A05) {
            this.A09.A0F().A6f();
            this.A0H.A0a();
        } else {
            this.A09.A0F().A6g();
            if (A0L[6].length() != 6) {
                throw new RuntimeException();
            }
            A0L[5] = "8j5uXfZ95rl8UwGJAIvPTgfy7qu4v9pG";
            if (this.A0H.A0u()) {
                ALW();
                if (C2888mv.A1z(this.A09)) {
                    this.A09.A0B().AEc();
                }
            }
        }
        ViewGroup viewGroup = (ViewGroup) this.A0H.A0Q().getParent();
        if (viewGroup != null) {
            ViewGroup parent = this.A0H.A0Q();
            viewGroup.removeView(parent);
        }
        addView(this.A0H.A0Q(), new FrameLayout.LayoutParams(-1, -1));
        this.A0E.A4V(this, new RelativeLayout.LayoutParams(-1, -1));
        if (this.A08.A2C()) {
            this.A0C.A05(EnumC3096qN.A04);
        }
    }

    private void A0F(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (A0H(this.A08.A32().A0U(), str2)) {
            if (this.A03 == null) {
                this.A03 = new C1J(this.A09, this, this, this.A08.A1V());
                this.A0H.A0k(this.A03);
            }
            if (this.A03.A0P(str, str2, this.A0H.A0Q(), this.A0G)) {
                return;
            }
        }
        C3329u8 c3329u8 = new C3329u8(this.A09, this.A0F.A7x(), this.A0J, this.A0D, this.A0A, this.A08.A33(), this.A0E);
        c3329u8.A0A(this.A08);
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(str2)) {
            str2 = A0B(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, 9, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        }
        map.put(A0B(109, 12, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE), str2);
        c3329u8.A06(this.A08.A37(), str, map);
    }

    public static boolean A0G(String str) {
        return str != null && str.startsWith(A0B(Sdk.SDKError.Reason.TPAT_ERROR_VALUE, 7, 17));
    }

    public static boolean A0H(boolean z, String str) {
        return z && !A0G(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AAJ(String str) {
        A0F(this.A08.A32().A0K().A06(), str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AAK(String str, String str2) {
        A0F(str, str2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AAO() {
        this.A0E.A5C(this.A0F.A7L());
        C2499gV serverSideRewardHandler = new C2499gV(this.A09, this.A0F, this.A08.A1u(), this.A0E);
        serverSideRewardHandler.A06();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void ABU() {
        new Handler(Looper.getMainLooper()).post(new E6(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void ABc(Intent intent, Bundle bundle, C2683jY c2683jY) {
        C1930Tb.A0C().incrementAndGet();
        c2683jY.A0A(this.A01);
        this.A00 = c2683jY;
        A0E();
        if (this.A08.A32().A0X()) {
            A0C();
        } else {
            this.A0H.A0n(A0B(Sdk.SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 18, 60));
            this.A0H.A0d();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1L
    public final void AEF() {
        if (this.A06) {
            return;
        }
        this.A06 = true;
        if (this.A0G != null) {
            this.A0G.A0S(false);
        } else {
            this.A0H.A0b();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1L
    public final void AEG() {
        if (!this.A06) {
            return;
        }
        this.A06 = false;
        if (this.A0G != null) {
            this.A0G.A0T(false);
        } else {
            this.A0H.A0c();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AF3() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AF7() {
        if (this.A0G != null) {
            this.A0G.A0P();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AFy(boolean z) {
        if (this.A0G != null) {
            this.A0G.A0R(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGF(boolean z) {
        if (this.A03 != null && this.A03.A0N()) {
            return;
        }
        if (this.A0G != null) {
            this.A0G.A0S(z);
        }
        if (z) {
            this.A0H.A0W();
        } else {
            this.A0H.A0b();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGp(boolean z) {
        if (this.A0G != null) {
            this.A0G.A0T(z);
        }
        boolean z2 = this.A04;
        if (A0L[1].length() == 11) {
            throw new RuntimeException();
        }
        A0L[5] = "5WCDyt3aDRAQqvSthuq2O6x8YHnGvtvN";
        if (z2) {
            this.A04 = false;
        } else if (z) {
            this.A0H.A0V();
        } else {
            this.A0H.A0c();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AH6() {
        if (this.A0G != null) {
            this.A0G.A0Q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AHh(boolean z) {
        if (this.A0G != null) {
            this.A0G.A0U(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AHj(boolean z) {
        if (this.A0G != null) {
            this.A0G.A0V(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1L
    public final void AHq() {
        this.A0H.A0X();
    }

    @Override // com.facebook.ads.redexgen.X.C1L
    public final void AHr() {
        this.A0H.A0Y();
    }

    @Override // com.facebook.ads.redexgen.X.C1L
    public final void AHs() {
        if (this.A00 != null) {
            this.A00.finish(13);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AI1(String str) {
        String urlString = this.A08.A38(str);
        if (urlString == null) {
            return;
        }
        C3032pK.A0P(new C3032pK(), this.A09, AbstractC3036pP.A00(urlString), this.A08.A37());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AKD(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void ALW() {
        if (!this.A07) {
            this.A0J.A0U();
            this.A07 = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void close() {
        if (this.A00 == null) {
            return;
        }
        this.A09.A0F().ABl();
        this.A00.finish(4);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public String getCurrentClientToken() {
        return this.A08.A37();
    }

    private ViewGroup getMediaView() {
        if (this.A0G != null) {
            return this.A0G;
        }
        return this.A0H.A0Q();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        if (i == C1J.A0G && this.A03 != null && this.A03.A0N()) {
            this.A0H.A0X();
            return true;
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onDestroy() {
        if (C2888mv.A1z(this.A09)) {
            this.A09.A0B().ALo(getMediaView());
        }
        if (this.A0G != null) {
            this.A0G.A0O();
        }
        C1J c1j = this.A03;
        if (A0L[1].length() != 11) {
            A0L[5] = "SRL0HxTAO3DSX7iPSpOrRMBtrbnPv9l7";
            if (c1j != null) {
                C1J c1j2 = this.A03;
                if (A0L[7].charAt(0) == '2') {
                    String[] strArr = A0L;
                    strArr[3] = "1SaDU7XNnaCqvThqNLYAxOryFS3l42O";
                    strArr[4] = "uCT8AGgAcxCzSIZ8ROlOLns55KlJP06";
                    c1j2.A0K();
                    this.A03 = null;
                }
            }
            this.A0C.A03();
            this.A0A.ABt(this.A08.A37(), new C3303ti().A04(this.A0D).A05(this.A0J).A07());
            this.A01 = null;
            this.A02 = null;
            this.A00 = null;
            M1.A04(this.A08.A1r());
            C1930Tb.A0C().decrementAndGet();
            return;
        }
        throw new RuntimeException();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }

    public void setListener(InterfaceC3144r9 interfaceC3144r9) {
    }

    public void setRtfActionsJavascriptListener(C2E c2e) {
        this.A02 = c2e;
    }
}
