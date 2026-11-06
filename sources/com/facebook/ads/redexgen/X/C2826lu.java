package com.facebook.ads.redexgen.X;

import android.R;
import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.ironsource.InterfaceC3681k1;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lu, reason: case insensitive filesystem */
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
public final class C2826lu {
    public static byte[] A0Q;
    public static String[] A0R = {"1jj8SStxLaN5Gyjeaj", "QvgR6gjZKPqPLN", "apBsNQLtySqcFbdMMI9pw7irAJNoIH7N", "WFUEGw1tXvrGnX", "aQ2MrcVxSn6lZk2kOw3AV7hj7b4buGYQ", "Q9MDG20ve4CP8cK9zJz6gY5cXp", "NCbcrL", "iOvYt6PwRkqdpvQ5ar7yKU7mCg"};
    public static final C2829lx A0S;
    public static final int A0T;
    public static final List<String> A0U;
    public int A00;
    public int A01;
    public int A02;
    public View A03;
    public RelativeLayout A04;
    public C3061po A05;
    public C3251ss A06;
    public F8 A07;
    public C3275tG A08;
    public F4 A09;
    public C3320tz A0A;
    public C3333uC A0B;
    public C8 A0C;
    public C1466Am A0D;
    public List<C2647iy> A0E;
    public boolean A0F;
    public final SparseBooleanArray A0G;
    public final RelativeLayout A0H;
    public final LA A0I;
    public final C2435fT A0J;
    public final C1643Hi A0K;
    public final InterfaceC2909nG A0L;
    public final C2917nO A0M;
    public final C3102qT A0N;
    public final InterfaceC3144r9 A0O;
    public final C2224c2 A0P;

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Q, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 16);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A0Q = new byte[]{-38, -35, -67, -38, -19, -38, -69, -18, -25, -35, -27, -34, -30, -27, -58, -9, -26, -17, -11, -50, -30, -17, -30, -24, -26, -13, -79, -81, -64, -78, -63, -105, -69, -66, -64, -77, -63, -63, -73, -67, -68, -63, -29, -20, -23, -29, -21, -33, -13, -17, -11, -14, -29, -27, -85, -73, -74, -68, -83, -64, -68, -117, -102, -115, -119, -100, -115, 110, -99, -108, -108, 123, -117, -102, -115, -115, -106, 105, -116, 107, -102, -115, -116, -111, -100, 116, -111, -106, -115, 123, -100, -119, -100, -111, -117, 126, -111, -115, -97, 80, 86, 86, 86, 81, -70, -55, -68, -72, -53, -68, -99, -52, -61, -61, -86, -70, -55, -68, -68, -59, -104, -69, -102, -55, -68, -69, -64, -53, -93, -64, -59, -68, -83, -64, -68, -50, 127, -123, -123, -123, -128, -12, 3, -4, -4, -13, -6, -38, -3, -11, -11, -9, -4, -11, -42, -17, -4, -14, -6, -13, 0, -33, -35, -26, -35, -22, -31, -37, -91, -93, -78, -127, -86, -89, -93, -84, -78, -110, -83, -87, -93, -84, 102, 108, 108, 108, 103, -64, -59, -53, -68, -55, -72, -70, -53, -64, -51, -68, -102, -72, -55, -69, -96, -59, -67, -58, -93, -64, -54, -53, -104, -107, -102, -105, -32, -35, -25, -24, -39, -30, -39, -26, -7, 0, -9, -9, -85, -18, -20, -7, -7, -6, -1, -85, -19, -16, -85, -18, -20, -2, -1, -85, -1, -6, -85, -7, -6, -7, -72, -7, 0, -9, -9, -85, -1, 4, -5, -16, -85, -20, -7, -17, -3, -6, -12, -17, -71, 2, -12, -17, -14, -16, -1, -71, -35, -16, -9, -20, -1, -12, 1, -16, -41, -20, 4, -6, 0, -1, -71, -41, -20, 4, -6, 0, -1, -37, -20, -3, -20, -8, -2, -110, -111, 102, -110, -112, -109, -113, -120, -105, -120, -72, -87, -70, -83, -74, -68, -98, -79, -83, -65, -80, -95, -78, -91, -82, -76, -106, -87, -91, -73, -95, -94, -87, -84, -87, -76, -71, -125, -88, -91, -93, -85, -91, -78, -100, -103, -107, -110, -99, -120, -97, -110, -114, -96, -48, -51, -55, -58, -47, -68, -45, -58, -62, -44, -68, -47, -59, -46, -54, -65, -53, -66, -58, -55, -47, -46, -51, -48, -61, -67, -45, -48, -54, -14, -13, -18, -15, -28, -34, -12, -15, -21, -34, -10, -28, -31, -34, -27, -32, -21, -21, -31, -32, -30, -22, -80, -85, -79, -97, -92, -128, -99, -80, -99, -114, -95, -97, -85, -82, -96, -95, -82, -120, -127, 124, -119, 120, -123, -122, 116, 127, 114, 127, 124, -127, 126};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A0N(int i) {
        if (this.A04 != null) {
            return;
        }
        this.A01 = i;
        RelativeLayout relativeLayout = new RelativeLayout(this.A0K);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        C7O c7oA02 = A02();
        int i2 = AbstractC3068pv.A0P + AbstractC3137r2.A00;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        layoutParams.setMargins(0, i2, 0, 0);
        AbstractC3111qc.A0L(c7oA02);
        this.A02 = c7oA02.getId();
        relativeLayout.addView(c7oA02, layoutParams);
        int id = c7oA02.getId();
        if (this.A0E.size() > 1) {
            C3333uC c3333uC = new C3333uC(this.A0K, this.A0E.size());
            c3333uC.setDotsOnlyMode(true);
            c3333uC.setCurrentPosition(i);
            this.A0B = c3333uC;
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, AbstractC3068pv.A0A);
            layoutParams2.addRule(3, id);
            layoutParams2.setMargins(0, AbstractC3068pv.A0X, 0, AbstractC3068pv.A06);
            AbstractC3111qc.A0L(c3333uC);
            relativeLayout.addView(c3333uC, layoutParams2);
            id = c3333uC.getId();
        }
        LinearLayout linearLayoutA01 = A01();
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(3, id);
        relativeLayout.addView(linearLayoutA01, layoutParams3);
        this.A04 = relativeLayout;
        this.A0H.addView(relativeLayout);
        A0B();
        A0C(i, A07(345, 10, 25));
    }

    static {
        A0A();
        A0S = new C2829lx(null);
        A0T = AbstractC3068pv.A0g;
        A0U = AbstractC12550v.A0A(A07(210, 4, 28), A07(384, 22, 111), A07(375, 9, 78), A07(423, 14, 3));
    }

    public C2826lu(C1643Hi c1643Hi, RelativeLayout relativeLayout, LA la, InterfaceC2909nG interfaceC2909nG, C3102qT c3102qT, InterfaceC3144r9 interfaceC3144r9, C2917nO c2917nO, C2224c2 c2224c2, C2435fT c2435fT, SparseBooleanArray sparseBooleanArray) {
        C1h.A09(c1643Hi, A07(54, 7, 56));
        C1h.A09(relativeLayout, A07(Sdk.SDKError.Reason.MRAID_JS_CALL_EMPTY_VALUE, 10, 56));
        C1h.A09(la, A07(0, 12, 105));
        C1h.A09(interfaceC2909nG, A07(12, 14, 113));
        C1h.A09(c3102qT, A07(InterfaceC3681k1.a.b.f, 17, 44));
        C1h.A09(interfaceC3144r9, A07(Sdk.SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 8, 100));
        C1h.A09(c2917nO, A07(141, 20, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE));
        C1h.A09(c2224c2, A07(Sdk.SDKError.Reason.BLACK_SCREEN_DETECTION_ERROR_VALUE, 24, 48));
        C1h.A09(sparseBooleanArray, A07(26, 16, 62));
        this.A0K = c1643Hi;
        this.A0H = relativeLayout;
        this.A0I = la;
        this.A0L = interfaceC2909nG;
        this.A0N = c3102qT;
        this.A0O = interfaceC3144r9;
        this.A0M = c2917nO;
        this.A0P = c2224c2;
        this.A0J = c2435fT;
        this.A0G = sparseBooleanArray;
        this.A0E = AbstractC12550v.A09();
    }

    private final LinearLayout A01() {
        F4 f4;
        LinearLayout linearLayout = new LinearLayout(this.A0K);
        linearLayout.setOrientation(1);
        AbstractC3111qc.A0W(linearLayout, new ColorDrawable(-1));
        CE ce = new CE(this);
        Activity activityA0E = this.A0K.A0E();
        if (AbstractC2889mw.A02(this.A0K) || activityA0E == null) {
            f4 = new F4(this.A0K, ce);
        } else {
            f4 = new F4(this.A0K, activityA0E, ce);
        }
        this.A09 = f4;
        F8 $this$createBrowserSection_u24lambda_u2413 = new F8(this.A0K, this.A09, true);
        $this$createBrowserSection_u24lambda_u2413.setCloseButtonVisibility(8);
        this.A07 = $this$createBrowserSection_u24lambda_u2413;
        linearLayout.addView(this.A07, new LinearLayout.LayoutParams(-1, -2));
        this.A08 = new C3275tG(this.A0K, null, R.attr.progressBarStyleHorizontal);
        linearLayout.addView(this.A08, new LinearLayout.LayoutParams(-1, A0T));
        linearLayout.addView(this.A09, new LinearLayout.LayoutParams(-1, -1));
        return linearLayout;
    }

    private final C7O A02() {
        C7O recyclerView = new C7O(this.A0K);
        recyclerView.setLayoutManager(new J7(this.A0K, 0, false));
        C1643Hi c1643Hi = this.A0K;
        List<C2647iy> list = this.A0E;
        int i = this.A0K.getResources().getConfiguration().orientation;
        InterfaceC2909nG interfaceC2909nG = this.A0L;
        C3102qT c3102qT = this.A0N;
        String strA37 = this.A0I.A37();
        C1h.A08(strA37, A07(168, 19, 46));
        this.A0C = new C8(c1643Hi, list, i, interfaceC2909nG, c3102qT, strA37, this.A0P, this.A0J, null, this.A0G, this.A0I.A2J(), new C13013m(this));
        recyclerView.setAdapter(this.A0C);
        recyclerView.setPadding(0, AbstractC3068pv.A0U, 0, AbstractC3068pv.A0U);
        recyclerView.setClipToPadding(false);
        recyclerView.A1n(new CD());
        recyclerView.A1o(new CC(this));
        recyclerView.post(new RunnableC2827lv(recyclerView, this));
        return recyclerView;
    }

    @JvmStatic
    public static final String A08(Uri uri) {
        return A0S.A03(uri);
    }

    private final void A0B() {
        RelativeLayout relativeLayout = this.A04;
        if (relativeLayout == null) {
            return;
        }
        if (A0H()) {
            A0D(relativeLayout);
            A0E(relativeLayout);
        } else {
            A0F(relativeLayout);
        }
    }

    private final void A0C(int i, String str) {
        F4 f4;
        if (i < 0 || i >= this.A0E.size()) {
            return;
        }
        this.A01 = i;
        C2647iy c2647iy = this.A0E.get(i);
        C2420fE c2420fEA03 = c2647iy.A03();
        if (c2420fEA03 == null) {
            return;
        }
        C8 c8 = this.A0C;
        if (c8 != null) {
            c8.A0Q(i);
        }
        HashMap map = new HashMap(c2647iy.A08());
        map.put(A07(42, 12, 112), str);
        this.A0M.A04(EnumC2916nN.A0J, map);
        C2431fP c2431fPA0K = c2420fEA03.A0K();
        Uri uriA00 = null;
        String strA06 = c2431fPA0K != null ? c2431fPA0K.A06() : null;
        if (strA06 != null && (!AnonymousClass04.A02(strA06))) {
            try {
                uriA00 = AbstractC3036pP.A00(strA06);
            } catch (SecurityException e) {
                this.A0K.A08().ABz(A07(161, 7, 104), AbstractC2811lf.A2a, new C2812lg(e));
            }
            String strA03 = A0S.A03(uriA00);
            if (strA03 == null || !(!AnonymousClass04.A02(strA03)) || (f4 = this.A09) == null) {
                return;
            }
            f4.loadUrl(strA03);
        }
    }

    private final void A0D(RelativeLayout relativeLayout) {
        if (this.A0I.A3S() || this.A0I.A3O()) {
            C3251ss view = AbstractC3256sx.A01(this.A0K, true, this.A0I, this.A0M, this.A0O, EnumC3254sv.A03, AbstractC3253su.A00(this.A0I));
            C1h.A08(view, A07(104, 37, 71));
            this.A06 = view;
            AbstractC3111qc.A0H(1116, view);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(3, this.A02);
            layoutParams.addRule(11);
            layoutParams.setMargins(AbstractC3068pv.A00, AbstractC3068pv.A0U, AbstractC3068pv.A0A, AbstractC3068pv.A0X);
            view.setLayoutParams(layoutParams);
            relativeLayout.addView(view);
        }
    }

    private final void A0E(RelativeLayout relativeLayout) {
        if (this.A0I.A3U()) {
            C3255sw staticView = AbstractC3256sx.A02(this.A0K, EnumC3254sv.A03, this.A0I);
            C1h.A08(staticView, A07(61, 43, 24));
            this.A03 = staticView;
            AbstractC3111qc.A0H(1117, staticView);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(3, this.A02);
            layoutParams.addRule(9);
            layoutParams.setMargins(AbstractC3068pv.A0A, AbstractC3068pv.A0U, AbstractC3068pv.A00, AbstractC3068pv.A0X);
            staticView.setLayoutParams(layoutParams);
            relativeLayout.addView(staticView);
        }
    }

    private final void A0F(RelativeLayout relativeLayout) {
        C3320tz c3320tz = new C3320tz(this.A0K, this.A0I, this.A0O, this.A0M, 0L, 16, null);
        this.A0A = c3320tz;
        ViewGroup.LayoutParams layoutParams = c3320tz.A0A().getLayoutParams();
        C1h.A07(layoutParams, A07(Sdk.SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE, 79, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE));
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
        layoutParams2.removeRule(12);
        layoutParams2.addRule(3, this.A02);
        layoutParams2.topMargin = AbstractC3068pv.A0U;
        layoutParams2.bottomMargin = AbstractC3068pv.A00;
        relativeLayout.addView(c3320tz.A0A());
        c3320tz.A0A().bringToFront();
    }

    private final boolean A0H() {
        if (!this.A0I.A3S() && !this.A0I.A3O()) {
            boolean zA3U = this.A0I.A3U();
            String[] strArr = A0R;
            if (strArr[6].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0R;
            strArr2[6] = "AlMgz6";
            strArr2[0] = "9tjPu4ljTDSbz4cYTV";
            if (!zA3U) {
                return false;
            }
        }
        return true;
    }

    public final void A0J() {
        C3061po c3061po = this.A05;
        if (c3061po != null) {
            c3061po.A0D();
        }
        this.A05 = null;
        C1466Am c1466Am = this.A0D;
        if (c1466Am != null) {
            c1466Am.A07();
        }
        AbstractC3111qc.A0K(this.A0D);
        this.A0D = null;
        F4 f4 = this.A09;
        if (f4 != null) {
            ViewParent parent = f4.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(f4);
            }
            f4.stopLoading();
            f4.destroy();
        }
        this.A09 = null;
        this.A07 = null;
        this.A08 = null;
        this.A06 = null;
        C3320tz c3320tz = this.A0A;
        if (c3320tz != null) {
            c3320tz.A0B();
        }
        this.A0A = null;
        this.A04 = null;
    }

    public final void A0K() {
        F4 f4 = this.A09;
        if (f4 != null) {
            f4.onPause();
        }
        C3061po c3061po = this.A05;
        if (c3061po != null) {
            c3061po.A0E();
        }
        C3251ss c3251ss = this.A06;
        String[] strArr = A0R;
        if (strArr[3].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0R;
        strArr2[7] = "MMaUZVLQxd3AUHx8WG4dgRVAIo";
        strArr2[5] = "vBEp1ohY0IxmcoXh9tDowuYbEO";
        if (c3251ss != null) {
            c3251ss.A0P();
        }
        C3320tz c3320tz = this.A0A;
        if (c3320tz != null) {
            c3320tz.A0C();
        }
    }

    public final void A0L() {
        F4 f4 = this.A09;
        if (f4 != null) {
            f4.onResume();
        }
        C3061po c3061po = this.A05;
        if (c3061po != null) {
            c3061po.A0F();
        }
    }

    public final void A0M(int i) {
        A0C(i, A07(355, 20, 77));
    }

    public final void A0O(long j, long j2, InterfaceC12470n<AnonymousClass22> interfaceC12470n) {
        C1h.A09(interfaceC12470n, A07(301, 10, 19));
        RelativeLayout relativeLayout = this.A04;
        if (relativeLayout == null) {
            return;
        }
        long j3 = j - j2;
        if (j3 <= 0) {
            interfaceC12470n.AB0();
            String[] strArr = A0R;
            if (strArr[3].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0R;
            strArr2[2] = "SeW7s9f0ttwALx53nKPqTXmp33E1hmLI";
            strArr2[4] = "TUe4kjsYvlEfnvwjrAtJoqd1AXEAhSdV";
            return;
        }
        C1466Am c1466Am = new C1466Am(this.A0K, (int) j);
        c1466Am.A0A(AbstractC1576Es.A0g, AbstractC1576Es.A0f, true);
        AbstractC3111qc.A0L(c1466Am);
        this.A00 = c1466Am.getId();
        this.A0D = c1466Am;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, AbstractC3068pv.A0U);
        layoutParams.addRule(3, this.A02);
        layoutParams.addRule(14);
        layoutParams.setMargins(AbstractC3068pv.A0A, AbstractC3068pv.A00, AbstractC3068pv.A0A, AbstractC3068pv.A0U);
        relativeLayout.addView(c1466Am, layoutParams);
        C3333uC c3333uC = this.A0B;
        String strA07 = A07(Sdk.SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE, 79, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        if (c3333uC != null) {
            ViewGroup.LayoutParams layoutParams2 = c3333uC.getLayoutParams();
            C1h.A07(layoutParams2, strA07);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) layoutParams2;
            layoutParams3.removeRule(3);
            layoutParams3.addRule(3, this.A00);
            layoutParams3.topMargin = 0;
            c3333uC.setLayoutParams(layoutParams3);
        }
        C3251ss c3251ss = this.A06;
        if (c3251ss != null) {
            ViewGroup.LayoutParams layoutParams4 = c3251ss.getLayoutParams();
            C1h.A07(layoutParams4, strA07);
            RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) layoutParams4;
            layoutParams5.removeRule(3);
            layoutParams5.addRule(3, this.A00);
            layoutParams5.topMargin = 0;
            c3251ss.setLayoutParams(layoutParams5);
        }
        View view = this.A03;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams6 = view.getLayoutParams();
            C1h.A07(layoutParams6, strA07);
            RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) layoutParams6;
            layoutParams7.removeRule(3);
            layoutParams7.addRule(3, this.A00);
            layoutParams7.topMargin = 0;
            view.setLayoutParams(layoutParams7);
        }
        C3320tz c3320tz = this.A0A;
        if (c3320tz != null) {
            ViewGroup.LayoutParams layoutParams8 = c3320tz.A0A().getLayoutParams();
            C1h.A07(layoutParams8, strA07);
            RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) layoutParams8;
            layoutParams9.removeRule(3);
            layoutParams9.addRule(3, this.A00);
            layoutParams9.topMargin = 0;
            c3320tz.A0A().setLayoutParams(layoutParams9);
        }
        c1466Am.A09((int) j2);
        C3061po c3061po = new C3061po(j3, new CA(interfaceC12470n));
        c3061po.A0H(new CB(this, j2));
        this.A05 = c3061po;
        c3061po.A0G();
    }

    public final void A0P(List<C2647iy> list) {
        C1h.A09(list, A07(187, 23, 71));
        this.A0E = list;
    }
}
