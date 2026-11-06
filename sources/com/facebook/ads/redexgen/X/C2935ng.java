package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ng, reason: case insensitive filesystem */
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
public final class C2935ng {
    public static byte[] A0I;
    public static String[] A0J = {"GN2Sf6ouZClDTvsjg8mXsRhcXFlXLCDE", "Cuy0P3tFjuNV2zE19XM86tRmtGQ9WEoR", "6mOzZFwIbVxd7XLgjoOaYFq0yg0488yx", "L2ghT39A39nFQ6dYA6YlTzD9O5Bza1a7", "VRbijnTBgoBE0rgFEXkhPPI9AZkHkvmJ", "0rrPs", "JSAkDEDufAz7UxAUB", "2fVaSxEsNUCVfNnYD58vA64DNpDbNeVE"};
    public static final C2959o6 A0K;
    public static final int A0L;
    public static final int A0M;
    public static final int[] A0N;
    public C3251ss A00;
    public C3320tz A01;
    public ViewOnClickListenerC1569El A02;
    public String A03;
    public boolean A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final LA A08;
    public final C2432fQ A09;
    public final C1643Hi A0A;
    public final InterfaceC2909nG A0B;
    public final C2917nO A0C;
    public final C3102qT A0D;
    public final InterfaceC3144r9 A0E;
    public final C2224c2 A0F;
    public final boolean A0G;
    public final boolean A0H;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final ImageView A03(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        Bitmap bitmapA01 = AbstractC3123qo.A01(EnumC3122qn.OTHER_SKIP);
        C1h.A08(bitmapA01, A0B(197, 30, 36));
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapA01, AbstractC3068pv.A0e, AbstractC3068pv.A0e, true);
        C1h.A08(bitmapCreateScaledBitmap, A0B(Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE, 23, 16));
        ImageView imageView = new ImageView(this.A0A);
        imageView.setImageBitmap(bitmapCreateScaledBitmap);
        imageView.setColorFilter(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(A0B(27, 9, 69)));
        imageView.setBackground(gradientDrawable);
        imageView.setPadding(AbstractC3068pv.A0y, AbstractC3068pv.A0y, AbstractC3068pv.A0y, AbstractC3068pv.A0y);
        imageView.setOnClickListener(new ViewOnClickListenerC2951ny(viewOnClickListenerC1569El));
        imageView.setLayoutParams(new FrameLayout.LayoutParams(AbstractC3068pv.A0H, AbstractC3068pv.A0H, 8388661));
        imageView.setVisibility(0);
        return imageView;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final LinearLayout A04() {
        LinearLayout linearLayout = new LinearLayout(this.A0A);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        int i = this.A05 * 44;
        ImageView imageView = new ImageView(this.A0A);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(i, i));
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        imageView.setBackground(gradientDrawable);
        imageView.setClipToOutline(true);
        String strA01 = this.A08.A35().A01();
        C1h.A08(strA01, A0B(292, 20, 106));
        if (strA01.length() > 0) {
            new AsyncTaskC1577Et(imageView, this.A0A).A04().A07(strA01);
        }
        linearLayout.addView(imageView);
        LinearLayout linearLayout2 = new LinearLayout(this.A0A);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginStart(AbstractC3068pv.A0X);
        linearLayout2.setLayoutParams(layoutParams);
        TextView textView = new TextView(this.A0A);
        String strA0G = this.A08.A32().A0J().A0G();
        String strA0B = A0B(0, 0, 78);
        if (strA0G == null) {
            strA0G = strA0B;
        }
        textView.setText(strA0G);
        textView.setTextColor(-1);
        textView.setTextSize(20.0f);
        textView.setIncludeFontPadding(false);
        textView.setTypeface(textView.getTypeface(), 1);
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(this.A0A);
        String strA0F = this.A08.A32().A0J().A0F();
        if (strA0F != null) {
            strA0B = strA0F;
        }
        String lowerCase = strA0B.toLowerCase(Locale.ROOT);
        C1h.A08(lowerCase, A0B(337, 16, 113));
        textView2.setText(lowerCase);
        textView2.setTextColor(Color.parseColor(A0B(45, 7, 19)));
        textView2.setTextSize(12.0f);
        textView2.setIncludeFontPadding(false);
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0D() {
        byte[] bArr = {-127, -114, -114, -114, -114, -114, -114, -114, -114, -123, -108, -104, -110, -110, -110, -110, -110, -110, -71, -52, -52, -58, -58, -58, -58, -58, -58, -121, -100, -108, -108, -108, -108, -108, -108, -108, -96, -74, -74, -83, -83, -83, -83, -83, -83, 85, 116, 98, 116, 101, 116, 106, -62, -59, -90, -41, -58, -49, -43, -82, -62, -49, -62, -56, -58, -45, -61, -63, -46, -60, -61, -50, -44, 1, -1, 16, 2, 7, 12, 2, -97, -85, -86, -80, -95, -76, -80, -78, -63, -76, -80, -61, -76, -107, -60, -69, -69, -94, -78, -63, -76, -76, -67, -112, -77, -110, -63, -76, -77, -72, -61, -101, -72, -67, -76, -94, -61, -80, -61, -72, -78, -91, -72, -76, -58, 119, 125, 125, 125, 120, -110, -95, -108, -112, -93, -108, -126, -110, -112, -101, -108, -109, 113, -104, -93, -100, -112, -97, 87, 93, 93, 93, 88, -60, -45, -58, -62, -43, -58, -73, -58, -45, -43, -54, -60, -62, -51, -88, -45, -62, -59, -54, -58, -49, -43, -80, -41, -58, -45, -51, -62, -38, -119, -113, -113, -113, -118, -75, -78, -59, -78, -109, -58, -65, -75, -67, -74, -86, -88, -73, -123, -84, -73, -80, -92, -77, -119, -75, -78, -80, -120, -79, -90, -78, -89, -88, -89, -116, -80, -92, -86, -88, 107, 113, 113, 113, 108, -104, -106, -91, 116, -99, -102, -106, -97, -91, -123, -96, -100, -106, -97, 89, 95, 95, 95, 90, -114, -116, -101, 107, -105, -120, 108, -107, -117, 106, -120, -103, -117, 119, -103, -106, -117, -100, -118, -101, -102, 79, 85, 85, 85, 80, -15, -17, -2, -49, -8, -18, -51, -21, -4, -18, -3, -50, -21, -2, -21, -78, -72, -72, -72, -77, -16, -18, -3, -39, -22, -16, -18, -46, -10, -22, -16, -18, -34, -5, -11, -79, -73, -73, -73, -78, -52, -55, -45, -44, -59, -50, -59, -46, -34, -52, -39, -34, -104, -34, -48, -35, -44, -47, -104, -40, -48, -49, -44, -32, -40, 4, -1, -36, -1, 7, -11, 2, -45, -15, 3, -11, -72, -66, -66, -66, -71, -88, -93, -87, -105, -100, 120, -107, -88, -107, -122, -103, -105, -93, -90, -104, -103, -90, -106, -119, -123, -105, -127, -126, -119, -116, -119, -108, -103, 99, -120, -123, -125, -117, -123, -110};
        if (A0J[1].charAt(5) == '0') {
            throw new RuntimeException();
        }
        A0J[6] = "QP2wMBMLjmxObTzbY";
        A0I = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final View A0H(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        this.A02 = viewOnClickListenerC1569El;
        this.A03 = viewOnClickListenerC1569El != null ? viewOnClickListenerC1569El.getClickUrl() : null;
        RelativeLayout relativeLayout = new RelativeLayout(this.A0A);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        int iGenerateViewId = View.generateViewId();
        LinearLayout linearLayoutA04 = A04();
        linearLayoutA04.setId(iGenerateViewId);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        layoutParams.setMargins(AbstractC3068pv.A0A, AbstractC3068pv.A0P, AbstractC3068pv.A0A, 0);
        relativeLayout.addView(linearLayoutA04, layoutParams);
        C7O c7oA05 = A05(viewOnClickListenerC1569El);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(3, iGenerateViewId);
        layoutParams2.setMargins(0, AbstractC3068pv.A0A, 0, 0);
        relativeLayout.addView(c7oA05, layoutParams2);
        View viewA0B = AbstractC3111qc.A0B(this.A0A, A0N);
        C1h.A08(viewA0B, A0B(153, 34, 66));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) (this.A0A.getResources().getDisplayMetrics().heightPixels * 0.4f));
        layoutParams3.addRule(12);
        relativeLayout.addView(viewA0B, layoutParams3);
        Integer numA08 = A08(relativeLayout);
        if (viewOnClickListenerC1569El != null) {
            viewOnClickListenerC1569El.setV2Design(true);
        }
        View viewA02 = A02(viewOnClickListenerC1569El);
        AbstractC3111qc.A0H(1001, viewA02);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        if (numA08 != null) {
            layoutParams4.addRule(2, numA08.intValue());
        } else {
            layoutParams4.addRule(12);
        }
        layoutParams4.setMargins(AbstractC3068pv.A0H, 0, AbstractC3068pv.A0H, AbstractC3068pv.A0D);
        relativeLayout.addView(viewA02, layoutParams4);
        A0E(relativeLayout, viewOnClickListenerC1569El);
        String[] strArr = A0J;
        if (strArr[4].charAt(23) != strArr[3].charAt(23)) {
            throw new RuntimeException();
        }
        A0J[6] = "xDpVTxiQh91ViluPZ";
        return relativeLayout;
    }

    static {
        A0D();
        A0K = new C2959o6(null);
        A0M = AbstractC3068pv.A0X;
        A0L = AbstractC3068pv.A05;
        A0N = new int[]{Color.parseColor(A0B(0, 9, 63)), Color.parseColor(A0B(9, 9, 67)), Color.parseColor(A0B(18, 9, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE)), Color.parseColor(A0B(36, 9, 94))};
    }

    public C2935ng(C1643Hi c1643Hi, LA la, C2917nO c2917nO, InterfaceC2909nG interfaceC2909nG, C2224c2 c2224c2, C3102qT c3102qT, InterfaceC3144r9 interfaceC3144r9) {
        C1h.A09(c1643Hi, A0B(80, 7, 29));
        C1h.A09(la, A0B(187, 10, 50));
        C1h.A09(interfaceC2909nG, A0B(52, 14, 66));
        C1h.A09(c2224c2, A0B(370, 18, 1));
        C1h.A09(c3102qT, A0B(353, 17, 21));
        C1h.A09(interfaceC3144r9, A0B(Sdk.SDKError.Reason.DEEPLINK_OPEN_FAILED_VALUE, 8, 65));
        this.A0A = c1643Hi;
        this.A08 = la;
        this.A0C = c2917nO;
        this.A0B = interfaceC2909nG;
        this.A0F = c2224c2;
        this.A0D = c3102qT;
        this.A0E = interfaceC3144r9;
        this.A05 = AbstractC2541hD.A00(this.A0A.getResources().getDisplayMetrics());
        C2432fQ c2432fQA0L = this.A08.A32().A0L();
        C1h.A08(c2432fQA0L, A0B(272, 20, 107));
        this.A09 = c2432fQA0L;
        this.A0H = this.A08.A3R();
        this.A0G = this.A08.A3N();
        this.A04 = true;
        this.A07 = this.A05 * 52;
        this.A06 = this.A05 * 12;
    }

    private final int A01(RelativeLayout relativeLayout) {
        C3255sw staticView = AbstractC3256sx.A02(this.A0A, EnumC3254sv.A02, this.A08);
        C1h.A08(staticView, A0B(87, 43, 48));
        staticView.setBackgroundColor(-2145637581);
        int iGenerateViewId = View.generateViewId();
        staticView.setId(iGenerateViewId);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        int i = AbstractC3068pv.A0L;
        int i2 = AbstractC3068pv.A00;
        int id = AbstractC3068pv.A00;
        layoutParams.setMargins(i, i2, id, AbstractC3068pv.A0A);
        staticView.setLayoutParams(layoutParams);
        relativeLayout.addView(staticView);
        staticView.bringToFront();
        return iGenerateViewId;
    }

    private final View A02(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        if (viewOnClickListenerC1569El == null) {
            return new View(this.A0A);
        }
        ViewParent parent = viewOnClickListenerC1569El.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(viewOnClickListenerC1569El);
        }
        viewOnClickListenerC1569El.setPadding(AbstractC3068pv.A0C, AbstractC3068pv.A0A, AbstractC3068pv.A0C, AbstractC3068pv.A0A);
        viewOnClickListenerC1569El.setTextSize(18.0f);
        viewOnClickListenerC1569El.setTextColor(-1);
        viewOnClickListenerC1569El.A0G(this.A08.A32().A0K());
        viewOnClickListenerC1569El.A0D();
        if (Build.VERSION.SDK_INT >= 28) {
            viewOnClickListenerC1569El.setTypeface(Typeface.create(Typeface.SANS_SERIF, 600, false));
        } else {
            viewOnClickListenerC1569El.setTypeface(Typeface.create(A0B(320, 17, 76), 0));
        }
        AbstractC3111qc.A0W(viewOnClickListenerC1569El, AbstractC3111qc.A06(this.A08.A31().A01().A04(), 30));
        viewOnClickListenerC1569El.setOnClickListener(new ViewOnClickListenerC2955o2(this, viewOnClickListenerC1569El));
        return viewOnClickListenerC1569El;
    }

    private final C7O A05(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        C7O c7o = new C7O(this.A0A);
        final C1643Hi c1643Hi = this.A0A;
        final int i = 2;
        c7o.setLayoutManager(new J7(c1643Hi, i) { // from class: com.facebook.ads.redexgen.X.7R
            public static byte[] A08;
            public static String[] A09 = {"9kLr1WrXsHa3M9TgBHJLOPgxVi9eEaJd", "Hwn1FtZhFEuRGdjcAAiQHbIVkVtzWoXw", "N2FY1RSHagDHrat2sORkMClT1qQJyzT4", "9U5bRn3oIic4od7Lo5Amo88ct05Vzg8U", "e4fPsoc1p5Z5", "BImFMNmrLCZsBrFcKWswQEbzCM1iKCVV", "wO483yQGExLL395Cz2XsuwqkNSOlOT89", "eVpW8ZKHpbYC3WRWTmcpsPIycNmj53gw"};
            public int[] A03;
            public View[] A04;
            public boolean A02 = false;
            public int A00 = -1;
            public final SparseIntArray A07 = new SparseIntArray();
            public final SparseIntArray A06 = new SparseIntArray();
            public AbstractC2623iY A01 = new J9();
            public final Rect A05 = new Rect();

            public static String A04(int i2, int i3, int i4) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i2, i2 + i3);
                for (int i5 = 0; i5 < bArrCopyOfRange.length; i5++) {
                    bArrCopyOfRange[i5] = (byte) ((bArrCopyOfRange[i5] - i4) - 46);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A09() {
                A08 = new byte[]{117, -57, -70, -58, -54, -66, -57, -70, -56, 117, -117, -34, -37, -52, -39, -34, -117, -51, -32, -33, -117, -78, -35, -44, -49, -73, -52, -28, -38, -32, -33, -72, -52, -39, -52, -46, -48, -35, -117, -45, -52, -34, -117, -38, -39, -41, -28, -117, 98, -75, -78, -93, -80, -75, 112, -22, 8, 21, 21, 22, 27, -57, 13, 16, 21, 11, -57, 26, 23, 8, 21, -57, 26, 16, 33, 12, -57, 13, 22, 25, -57, 23, 25, 12, -57, 19, 8, 32, 22, 28, 27, -57, 23, 22, 26, 16, 27, 16, 22, 21, -43, -57, -76, -46, -33, -33, -32, -27, -111, -41, -38, -33, -43, -111, -28, -31, -46, -33, -111, -28, -38, -21, -42, -111, -41, -32, -29, -111, -31, -29, -42, -111, -35, -46, -22, -32, -26, -27, -111, -31, -32, -28, -38, -27, -38, -32, -33, -97, -111, -70, -27, -111, -38, -28, -111, -33, -32, -27, -111, -44, -46, -44, -39, -42, -43, -99, -111, -33, -32, -27, -111, -38, -33, -111, -27, -39, -42, -111, -46, -43, -46, -31, -27, -42, -29, -97, -111, -63, -32, -28, -85, -120, -77, -86, -91, -115, -94, -70, -80, -74, -75, -114, -94, -81, -94, -88, -90, -77, 122, -91, -106, -98, 81, -110, -91, 81, -95, -96, -92, -102, -91, -102, -96, -97, 81, -113, -84, -99, -86, 92, -97, -85, -79, -86, -80, 92, -81, -92, -85, -79, -88, -96, 92, -98, -95, 92, -99, -80, 92, -88, -95, -99, -81, -80, 92, 109, 106, 92, -116, -82, -85, -78, -91, -96, -95, -96, 92};
                if (A09[4].length() != 12) {
                    throw new RuntimeException();
                }
                A09[4] = "puXpivvk6aYt";
            }

            /* JADX WARN: Failed to parse debug info
            java.lang.ArrayIndexOutOfBoundsException
             */
            /* JADX WARN: Removed duplicated region for block: B:49:0x0109  */
            /* JADX WARN: Removed duplicated region for block: B:50:0x010b  */
            /* JADX WARN: Removed duplicated region for block: B:53:0x0113  */
            @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2645iw
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final android.view.View A23(android.view.View r27, int r28, com.facebook.ads.redexgen.X.C2653j4 r29, com.facebook.ads.redexgen.X.C2660jB r30) {
                /*
                    Method dump skipped, instruction units count: 526
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7R.A23(android.view.View, int, com.facebook.ads.redexgen.X.j4, com.facebook.ads.redexgen.X.jB):android.view.View");
            }

            /* JADX WARN: Failed to parse debug info
            java.lang.ArrayIndexOutOfBoundsException
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v1 */
            /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
            /* JADX WARN: Type inference failed for: r0v58 */
            @Override // com.facebook.ads.redexgen.X.J7
            public final void A3I(C2653j4 c2653j4, C2660jB c2660jB, C2626ib c2626ib, C2625ia c2625ia) {
                int iMakeMeasureSpec;
                int iA0y;
                View viewA03;
                int iA0A = ((J7) this).A04.A0A();
                ?? r0 = 0;
                boolean z = iA0A != 1073741824;
                int i2 = A1T() > 0 ? this.A03[this.A00] : 0;
                if (z) {
                    A08();
                }
                boolean z2 = c2626ib.A03 == 1;
                int i3 = 0;
                int i4 = 0;
                int iA02 = this.A00;
                if (!z2) {
                    iA02 = A02(c2653j4, c2660jB, c2626ib.A01) + A03(c2653j4, c2660jB, c2626ib.A01);
                }
                while (i3 < this.A00 && c2626ib.A05(c2660jB) && iA02 > 0) {
                    int i5 = c2626ib.A01;
                    int iA03 = A03(c2653j4, c2660jB, i5);
                    if (iA03 > this.A00) {
                        throw new IllegalArgumentException(A04(208, 17, 3) + i5 + A04(0, 10, 39) + iA03 + A04(10, 38, 61) + this.A00 + A04(48, 7, 20));
                    }
                    iA02 -= iA03;
                    if (iA02 < 0 || (viewA03 = c2626ib.A03(c2653j4)) == null) {
                        break;
                    }
                    i4 += iA03;
                    this.A04[i3] = viewA03;
                    i3++;
                }
                if (i3 == 0) {
                    c2625ia.A01 = true;
                    return;
                }
                int i6 = 0;
                float f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                int i7 = i3;
                A0F(c2653j4, c2660jB, i3, i4, z2);
                int i8 = 0;
                while (i8 < i7) {
                    View view = this.A04[i8];
                    if (c2626ib.A08 == null) {
                        if (z2) {
                            A2L(view);
                        } else {
                            A2N(view, r0);
                        }
                    } else if (z2) {
                        A2K(view);
                    } else {
                        A2M(view, r0);
                    }
                    A2Q(view, this.A05);
                    A0E(view, iA0A, r0);
                    int iA0E = ((J7) this).A04.A0E(view);
                    if (iA0E > i6) {
                        i6 = iA0E;
                    }
                    float fA0F = (((J7) this).A04.A0F(view) * 1.0f) / ((J8) view.getLayoutParams()).A01;
                    if (fA0F > f) {
                        f = fA0F;
                    }
                    i8++;
                    r0 = 0;
                }
                if (z) {
                    A0A(f, i2);
                    i6 = 0;
                    for (int i9 = 0; i9 < i7; i9++) {
                        View view2 = this.A04[i9];
                        A0E(view2, 1073741824, true);
                        int iA0E2 = ((J7) this).A04.A0E(view2);
                        if (iA0E2 > i6) {
                            i6 = iA0E2;
                        }
                    }
                }
                for (int i10 = 0; i10 < i7; i10++) {
                    View view3 = this.A04[i10];
                    if (((J7) this).A04.A0E(view3) != i6) {
                        J8 j8 = (J8) view3.getLayoutParams();
                        Rect rect = j8.A03;
                        int i11 = rect.top + rect.bottom + j8.topMargin + j8.bottomMargin;
                        int i12 = rect.left + rect.right + j8.leftMargin + j8.rightMargin;
                        int iA00 = A00(j8.A00, j8.A01);
                        if (((J7) this).A00 == 1) {
                            iMakeMeasureSpec = AbstractC2645iw.A0y(iA00, 1073741824, i12, j8.width, false);
                            iA0y = View.MeasureSpec.makeMeasureSpec(i6 - i11, 1073741824);
                        } else {
                            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6 - i12, 1073741824);
                            iA0y = AbstractC2645iw.A0y(iA00, 1073741824, i11, j8.height, false);
                        }
                        A0D(view3, iMakeMeasureSpec, iA0y, true);
                    }
                }
                c2625ia.A00 = i6;
                int iA1b = 0;
                int iA0F = 0;
                int iA1d = 0;
                int iA0F2 = 0;
                if (((J7) this).A00 == 1) {
                    if (c2626ib.A05 == -1) {
                        iA0F2 = c2626ib.A06;
                        iA1d = iA0F2 - i6;
                    } else {
                        iA1d = c2626ib.A06;
                        iA0F2 = iA1d + i6;
                    }
                } else if (c2626ib.A05 == -1) {
                    iA0F = c2626ib.A06;
                    iA1b = iA0F - i6;
                } else {
                    iA1b = c2626ib.A06;
                    iA0F = iA1b + i6;
                }
                for (int i13 = 0; i13 < i7; i13++) {
                    View view4 = this.A04[i13];
                    J8 j82 = (J8) view4.getLayoutParams();
                    if (((J7) this).A00 != 1) {
                        iA1d = A1d() + this.A03[j82.A00];
                        iA0F2 = ((J7) this).A04.A0F(view4) + iA1d;
                    } else if (A3K()) {
                        iA0F = A1b() + this.A03[this.A00 - j82.A00];
                        iA1b = iA0F - ((J7) this).A04.A0F(view4);
                    } else {
                        iA1b = A1b() + this.A03[j82.A00];
                        iA0F = ((J7) this).A04.A0F(view4) + iA1b;
                    }
                    if (A09[4].length() != 12) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A09;
                    strArr[3] = "jDY10Pv22uFpeMvX0V6i142gwywCcC9J";
                    strArr[5] = "FV7lsl9dkYLhGTz220Rnt8nJefodQa6Z";
                    A2P(view4, iA1b, iA1d, iA0F, iA0F2);
                    if (j82.A02() || j82.A01()) {
                        c2625ia.A03 = true;
                    }
                    c2625ia.A02 |= view4.hasFocusable();
                }
                Arrays.fill(this.A04, (Object) null);
            }

            static {
                A09();
            }

            {
                A0C(i);
            }

            private final int A00(int i2, int i3) {
                if (((J7) this).A00 == 1 && A3K()) {
                    return this.A03[this.A00 - i2] - this.A03[(this.A00 - i2) - i3];
                }
                return this.A03[i2 + i3] - this.A03[i2];
            }

            private int A01(C2653j4 c2653j4, C2660jB c2660jB, int i2) {
                if (!c2660jB.A07()) {
                    return this.A01.A02(i2, this.A00);
                }
                int iA0F = c2653j4.A0F(i2);
                if (iA0F == -1) {
                    Log.w(A04(191, 17, 19), A04(55, 47, Sdk.SDKError.Reason.TPAT_ERROR_VALUE) + i2);
                    return 0;
                }
                AbstractC2623iY abstractC2623iY = this.A01;
                int adapterPosition = this.A00;
                return abstractC2623iY.A02(iA0F, adapterPosition);
            }

            private int A02(C2653j4 c2653j4, C2660jB c2660jB, int i2) {
                if (!c2660jB.A07()) {
                    return this.A01.A01(i2, this.A00);
                }
                int cached = this.A06.get(i2, -1);
                if (cached != -1) {
                    return cached;
                }
                int iA0F = c2653j4.A0F(i2);
                if (iA0F == -1) {
                    Log.w(A04(191, 17, 19), A04(102, 89, 67) + i2);
                    return 0;
                }
                AbstractC2623iY abstractC2623iY = this.A01;
                String[] strArr = A09;
                if (strArr[3].charAt(7) == strArr[5].charAt(7)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A09;
                strArr2[3] = "JLTNjPrw2Gir3uiEgJ7pvKx1kutZQE6G";
                strArr2[5] = "hHzcc7Wnn6r2KSuYqxenyoprhCz5yDXw";
                return abstractC2623iY.A01(iA0F, this.A00);
            }

            private int A03(C2653j4 c2653j4, C2660jB c2660jB, int i2) {
                if (!c2660jB.A07()) {
                    return this.A01.A00(i2);
                }
                int cached = this.A07.get(i2, -1);
                if (cached != -1) {
                    return cached;
                }
                int iA0F = c2653j4.A0F(i2);
                if (iA0F == -1) {
                    Log.w(A04(191, 17, 19), A04(102, 89, 67) + i2);
                    return 1;
                }
                return this.A01.A00(iA0F);
            }

            private void A05() {
                int iA1T = A1T();
                for (int i2 = 0; i2 < iA1T; i2++) {
                    J8 j8 = (J8) A20(i2).getLayoutParams();
                    int iA00 = j8.A00();
                    SparseIntArray sparseIntArray = this.A07;
                    int childCount = j8.A05();
                    sparseIntArray.put(iA00, childCount);
                    SparseIntArray sparseIntArray2 = this.A06;
                    int childCount2 = j8.A04();
                    sparseIntArray2.put(iA00, childCount2);
                }
            }

            private void A06() {
                this.A07.clear();
                this.A06.clear();
            }

            private void A07() {
                if (this.A04 == null || this.A04.length != this.A00) {
                    this.A04 = new View[this.A00];
                }
            }

            private void A08() {
                int iA1U;
                if (A3B() == 1) {
                    iA1U = (A1e() - A1c()) - A1b();
                } else {
                    iA1U = (A1U() - A1a()) - A1d();
                }
                A0B(iA1U);
            }

            private void A0A(float f, int i2) {
                int contentSize = Math.round(this.A00 * f);
                A0B(Math.max(contentSize, i2));
            }

            private void A0B(int i2) {
                this.A03 = A0H(this.A03, this.A00, i2);
            }

            private final void A0C(int i2) {
                if (i2 == this.A00) {
                    return;
                }
                this.A02 = true;
                if (i2 >= 1) {
                    this.A00 = i2;
                    this.A01.A04();
                    A28();
                    return;
                }
                throw new IllegalArgumentException(A04(Sdk.SDKError.Reason.AD_LOAD_FAIL_PLACEMENT_ID_MISMATCH_VALUE, 42, 14) + i2);
            }

            private void A0D(View view, int i2, int i3, boolean z) {
                boolean zA2z;
                C2646ix lp = (C2646ix) view.getLayoutParams();
                if (z) {
                    zA2z = A30(view, i2, i3, lp);
                } else {
                    zA2z = A2z(view, i2, i3, lp);
                }
                if (zA2z) {
                    view.measure(i2, i3);
                }
            }

            private void A0E(View view, int i2, boolean z) {
                int horizontalInsets;
                int availableSpaceInOther;
                J8 j8 = (J8) view.getLayoutParams();
                Rect decorInsets = j8.A03;
                int horizontalInsets2 = decorInsets.top + decorInsets.bottom + j8.topMargin + j8.bottomMargin;
                int availableSpaceInOther2 = decorInsets.left + decorInsets.right + j8.leftMargin + j8.rightMargin;
                int verticalInsets = A00(j8.A00, j8.A01);
                if (((J7) this).A00 == 1) {
                    availableSpaceInOther = AbstractC2645iw.A0y(verticalInsets, i2, availableSpaceInOther2, j8.width, false);
                    horizontalInsets = AbstractC2645iw.A0y(((J7) this).A04.A0C(), A1V(), horizontalInsets2, j8.height, true);
                } else {
                    horizontalInsets = AbstractC2645iw.A0y(verticalInsets, i2, horizontalInsets2, j8.height, false);
                    availableSpaceInOther = AbstractC2645iw.A0y(((J7) this).A04.A0C(), A1f(), availableSpaceInOther2, j8.width, true);
                }
                A0D(view, availableSpaceInOther, horizontalInsets, z);
            }

            private void A0F(C2653j4 c2653j4, C2660jB c2660jB, int i2, int i3, boolean z) {
                int i4;
                int i5;
                if (z) {
                    i4 = 0;
                    i5 = 1;
                } else {
                    i4 = i2 - 1;
                    i2 = -1;
                    i5 = -1;
                }
                int span = 0;
                while (i4 != i2) {
                    View[] viewArr = this.A04;
                    int end = A09[1].charAt(30);
                    if (end == 81) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A09;
                    strArr[2] = "wc6X17K8mmpBkT5fmZtkYbasceXjZ8mX";
                    strArr[0] = "9dmp1WHzjZH9IdBMCA9s1jprMiBM5vHe";
                    View view = viewArr[i4];
                    J8 j8 = (J8) view.getLayoutParams();
                    int start = A1o(view);
                    j8.A01 = A03(c2653j4, c2660jB, start);
                    j8.A00 = span;
                    int start2 = j8.A01;
                    span += start2;
                    i4 += i5;
                }
            }

            private void A0G(C2653j4 c2653j4, C2660jB c2660jB, C2624iZ c2624iZ, int i2) {
                boolean layingOutInPrimaryDirection = i2 == 1;
                int indexLimit = A02(c2653j4, c2660jB, c2624iZ.A01);
                if (layingOutInPrimaryDirection) {
                    while (indexLimit > 0 && c2624iZ.A01 > 0) {
                        c2624iZ.A01--;
                        indexLimit = A02(c2653j4, c2660jB, c2624iZ.A01);
                    }
                    return;
                }
                int span = c2660jB.A03();
                int span2 = span - 1;
                int i3 = c2624iZ.A01;
                while (i3 < span2) {
                    int pos = A02(c2653j4, c2660jB, i3 + 1);
                    if (pos <= indexLimit) {
                        break;
                    }
                    i3++;
                    indexLimit = pos;
                }
                c2624iZ.A01 = i3;
            }

            public static int[] A0H(int[] iArr, int i2, int i3) {
                if (iArr == null || iArr.length != i2 + 1 || iArr[iArr.length - 1] != i3) {
                    int i4 = i2 + 1;
                    if (A09[4].length() != 12) {
                        throw new RuntimeException();
                    }
                    A09[7] = "vv0iURAO3icFnXXnJM2cqXJ9vsdvavs7";
                    iArr = new int[i4];
                }
                iArr[0] = 0;
                int i5 = i3 / i2;
                int i6 = i3 % i2;
                int i7 = 0;
                int i8 = 0;
                for (int i9 = 1; i9 <= i2; i9++) {
                    int itemSize = i5;
                    i8 += i6;
                    if (i8 > 0) {
                        int additionalSize = i2 - i8;
                        String[] strArr = A09;
                        String str = strArr[3];
                        String str2 = strArr[5];
                        int sizePerSpanRemainder = str.charAt(7);
                        int sizePerSpan = str2.charAt(7);
                        if (sizePerSpanRemainder == sizePerSpan) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A09;
                        strArr2[3] = "UgNCdvS81XDUHVgyrMOuBJ3R26L0EHoV";
                        strArr2[5] = "R99erQkTVJdSQMxqSAGNSgs10WAqnjdh";
                        if (additionalSize < i6) {
                            itemSize++;
                            i8 -= i2;
                        }
                    }
                    i7 += itemSize;
                    iArr[i9] = i7;
                }
                return iArr;
            }

            @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2645iw
            public final int A1g(int i2, C2653j4 c2653j4, C2660jB c2660jB) {
                A08();
                A07();
                return super.A1g(i2, c2653j4, c2660jB);
            }

            @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2645iw
            public final int A1h(int i2, C2653j4 c2653j4, C2660jB c2660jB) {
                A08();
                A07();
                return super.A1h(i2, c2653j4, c2660jB);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final int A1p(C2653j4 c2653j4, C2660jB c2660jB) {
                if (((J7) this).A00 == 1) {
                    return this.A00;
                }
                if (c2660jB.A03() < 1) {
                    return 0;
                }
                return A01(c2653j4, c2660jB, c2660jB.A03() - 1) + 1;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final int A1q(C2653j4 c2653j4, C2660jB c2660jB) {
                if (((J7) this).A00 == 0) {
                    return this.A00;
                }
                if (c2660jB.A03() >= 1) {
                    return A01(c2653j4, c2660jB, c2660jB.A03() - 1) + 1;
                }
                if (A09[1].charAt(30) == 'Q') {
                    throw new RuntimeException();
                }
                A09[1] = "NQCGZE4snc0oLCx9Bq0iC7KiMR7a21PL";
                return 0;
            }

            @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2645iw
            public final C2646ix A24() {
                if (((J7) this).A00 == 0) {
                    return new J8(-2, -1);
                }
                return new J8(-1, -2);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final C2646ix A25(Context context, AttributeSet attributeSet) {
                return new J8(context, attributeSet);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final C2646ix A26(ViewGroup.LayoutParams layoutParams) {
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    return new J8((ViewGroup.MarginLayoutParams) layoutParams);
                }
                return new J8(layoutParams);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final void A2I(Rect rect, int i2, int i3) {
                int height;
                int horizontalPadding;
                if (this.A03 == null) {
                    super.A2I(rect, i2, i3);
                }
                int height2 = A1b() + A1c();
                int iA1d = A1d();
                int horizontalPadding2 = A1a();
                int usedWidth = iA1d + horizontalPadding2;
                int horizontalPadding3 = ((J7) this).A00;
                if (horizontalPadding3 == 1) {
                    int verticalPadding = rect.height();
                    int horizontalPadding4 = A1Y();
                    horizontalPadding = AbstractC2645iw.A0x(i3, verticalPadding + usedWidth, horizontalPadding4);
                    int[] iArr = this.A03;
                    int verticalPadding2 = this.A03.length;
                    int usedHeight = iArr[verticalPadding2 - 1];
                    int verticalPadding3 = A1Z();
                    height = AbstractC2645iw.A0x(i2, usedHeight + height2, verticalPadding3);
                } else {
                    int verticalPadding4 = rect.width();
                    int horizontalPadding5 = A1Z();
                    height = AbstractC2645iw.A0x(i2, verticalPadding4 + height2, horizontalPadding5);
                    int[] iArr2 = this.A03;
                    int horizontalPadding6 = this.A03.length;
                    int i4 = iArr2[horizontalPadding6 - 1] + usedWidth;
                    int iA1Y = A1Y();
                    int verticalPadding5 = A09[6].charAt(16);
                    if (verticalPadding5 != 122) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A09;
                    strArr[2] = "IoRO1mUlIQsql7b5CtjKORAXMJVODzQ4";
                    strArr[0] = "l7qj1AW0tDX7BLad8OKHlCOG6KOG3ICn";
                    horizontalPadding = AbstractC2645iw.A0x(i3, i4, iA1Y);
                }
                A2E(height, horizontalPadding);
            }

            @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2645iw
            public final void A2Z(C2653j4 c2653j4, C2660jB c2660jB) {
                if (c2660jB.A07()) {
                    A05();
                }
                super.A2Z(c2653j4, c2660jB);
                A06();
            }

            /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void A2b(com.facebook.ads.redexgen.X.C2653j4 r14, com.facebook.ads.redexgen.X.C2660jB r15, android.view.View r16, com.facebook.ads.redexgen.X.C2589i0 r17) {
                /*
                    r13 = this;
                    r2 = r16
                    android.view.ViewGroup$LayoutParams r3 = r2.getLayoutParams()
                    boolean r0 = r3 instanceof com.facebook.ads.redexgen.X.J8
                    r1 = r17
                    if (r0 != 0) goto L10
                    r13.A2R(r2, r1)
                    return
                L10:
                    com.facebook.ads.redexgen.X.J8 r3 = (com.facebook.ads.redexgen.X.J8) r3
                    int r0 = r3.A00()
                    int r7 = r13.A01(r14, r15, r0)
                    int r0 = r13.A00
                    r2 = 1
                    if (r0 != 0) goto L4f
                    int r5 = r3.A04()
                    int r6 = r3.A05()
                    int r0 = r13.A00
                    if (r0 <= r2) goto L70
                    int r4 = r3.A05()
                    java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7R.A09
                    r0 = 4
                    r0 = r2[r0]
                    int r2 = r0.length()
                    r0 = 12
                    if (r2 == r0) goto L42
                    java.lang.RuntimeException r0 = new java.lang.RuntimeException
                    r0.<init>()
                    throw r0
                L42:
                    java.lang.String[] r3 = com.facebook.ads.redexgen.X.C7R.A09
                    java.lang.String r2 = "3PRF4lQlon0k2h16Lcqf7CajCjyMOWkl"
                    r0 = 7
                    r3[r0] = r2
                    int r0 = r13.A00
                    if (r4 != r0) goto L70
                    r9 = 1
                    goto L71
                L4f:
                    int r9 = r3.A04()
                    int r10 = r3.A05()
                    int r0 = r13.A00
                    if (r0 <= r2) goto L6e
                    int r2 = r3.A05()
                    int r0 = r13.A00
                    if (r2 != r0) goto L6e
                    r11 = 1
                L64:
                    r8 = 1
                    r12 = 0
                    com.facebook.ads.redexgen.X.hy r0 = com.facebook.ads.redexgen.X.C2587hy.A00(r7, r8, r9, r10, r11, r12)
                    r1.A0Q(r0)
                    goto L7a
                L6e:
                    r11 = 0
                    goto L64
                L70:
                    r9 = 0
                L71:
                    r8 = 1
                    r10 = 0
                    com.facebook.ads.redexgen.X.hy r0 = com.facebook.ads.redexgen.X.C2587hy.A00(r5, r6, r7, r8, r9, r10)
                    r1.A0Q(r0)
                L7a:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7R.A2b(com.facebook.ads.redexgen.X.j4, com.facebook.ads.redexgen.X.jB, android.view.View, com.facebook.ads.redexgen.X.i0):void");
            }

            @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2645iw
            public final void A2d(C2660jB c2660jB) {
                super.A2d(c2660jB);
                this.A02 = false;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final void A2e(C7O c7o2) {
                this.A01.A04();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final void A2i(C7O c7o2, int i2, int i3) {
                this.A01.A04();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final void A2j(C7O c7o2, int i2, int i3) {
                this.A01.A04();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final void A2k(C7O c7o2, int i2, int i3, int i4) {
                this.A01.A04();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final void A2l(C7O c7o2, int i2, int i3, Object obj) {
                this.A01.A04();
            }

            @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2645iw
            public final boolean A2x() {
                return ((J7) this).A03 == null && !this.A02;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
            public final boolean A33(C2646ix c2646ix) {
                return c2646ix instanceof J8;
            }

            @Override // com.facebook.ads.redexgen.X.J7
            public final View A3D(C2653j4 c2653j4, C2660jB c2660jB, int i2, int i3, int i4) {
                A3E();
                View view = null;
                View view2 = null;
                int i5 = ((J7) this).A04.A0B();
                int iA07 = ((J7) this).A04.A07();
                int position = i3 > i2 ? 1 : -1;
                while (i2 != i3) {
                    View viewA20 = A20(i2);
                    int iA1o = A1o(viewA20);
                    if (A09[4].length() != 12) {
                        throw new RuntimeException();
                    }
                    A09[1] = "0gQBPdkOj6jC0BNk2pjE6k0ltAEPixhi";
                    if (iA1o >= 0 && iA1o < i4 && A02(c2653j4, c2660jB, iA1o) == 0) {
                        if (((C2646ix) viewA20.getLayoutParams()).A02()) {
                            if (view == null) {
                                view = viewA20;
                            }
                        } else if (((J7) this).A04.A0G(viewA20) >= iA07 || ((J7) this).A04.A0D(viewA20) < i5) {
                            if (view2 == null) {
                                view2 = viewA20;
                            }
                        } else {
                            return viewA20;
                        }
                    }
                    i2 += position;
                }
                return view2 != null ? view2 : view;
            }

            @Override // com.facebook.ads.redexgen.X.J7
            public final void A3H(C2653j4 c2653j4, C2660jB c2660jB, C2624iZ c2624iZ, int i2) {
                super.A3H(c2653j4, c2660jB, c2624iZ, i2);
                A08();
                if (c2660jB.A03() > 0 && !c2660jB.A07()) {
                    A0G(c2653j4, c2660jB, c2624iZ, i2);
                }
                A07();
            }

            /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
            @Override // com.facebook.ads.redexgen.X.J7
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void A3J(com.facebook.ads.redexgen.X.C2660jB r7, com.facebook.ads.redexgen.X.C2626ib r8, com.facebook.ads.redexgen.X.InterfaceC2643iu r9) {
                /*
                    r6 = this;
                    int r4 = r6.A00
                    r3 = 0
                L3:
                    int r0 = r6.A00
                    if (r3 >= r0) goto L63
                    boolean r5 = r8.A05(r7)
                    java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7R.A09
                    r0 = 7
                    r1 = r1[r0]
                    r0 = 15
                    char r1 = r1.charAt(r0)
                    r0 = 104(0x68, float:1.46E-43)
                    if (r1 == r0) goto L49
                    java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7R.A09
                    java.lang.String r1 = "eKvfQ3MVY0jgH25E8smk48nzEk1UMoSe"
                    r0 = 1
                    r2[r0] = r1
                    if (r5 == 0) goto L63
                    if (r4 <= 0) goto L63
                    int r2 = r8.A01
                    r1 = 0
                    int r0 = r8.A07
                    int r0 = java.lang.Math.max(r1, r0)
                    r9.A4S(r2, r0)
                    com.facebook.ads.redexgen.X.iY r0 = r6.A01
                    int r0 = r0.A00(r2)
                    int r4 = r4 - r0
                    int r5 = r8.A01
                    java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7R.A09
                    r0 = 6
                    r1 = r1[r0]
                    r0 = 16
                    char r1 = r1.charAt(r0)
                    r0 = 122(0x7a, float:1.71E-43)
                    if (r1 == r0) goto L4f
                L49:
                    java.lang.RuntimeException r0 = new java.lang.RuntimeException
                    r0.<init>()
                    throw r0
                L4f:
                    java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7R.A09
                    java.lang.String r1 = "68Sjli68Q4mnkM1aaKbbiIL5wgTi3Uio"
                    r0 = 3
                    r2[r0] = r1
                    java.lang.String r1 = "WGMWaAcffFDLcnaicXdDZfaUrMcy3ekZ"
                    r0 = 5
                    r2[r0] = r1
                    int r0 = r8.A03
                    int r5 = r5 + r0
                    r8.A01 = r5
                    int r3 = r3 + 1
                    goto L3
                L63:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7R.A3J(com.facebook.ads.redexgen.X.jB, com.facebook.ads.redexgen.X.ib, com.facebook.ads.redexgen.X.iu):void");
            }
        });
        c7o.setPadding(AbstractC3068pv.A06, 0, AbstractC3068pv.A06, A0L);
        c7o.setClipToPadding(false);
        c7o.A1n(new CN());
        C1643Hi c1643Hi2 = this.A0A;
        List<C2963oA> listA1v = this.A08.A1v();
        C1h.A08(listA1v, A0B(246, 26, 8));
        InterfaceC2909nG interfaceC2909nG = this.A0B;
        C2224c2 c2224c2 = this.A0F;
        C3102qT c3102qT = this.A0D;
        String strA37 = this.A08.A37();
        C1h.A08(strA37, A0B(Sdk.SDKError.Reason.INVALID_CSB_DATA_VALUE, 19, 18));
        c7o.setAdapter(new CP(c1643Hi2, listA1v, interfaceC2909nG, c2224c2, c3102qT, strA37, this.A08.A33(), new C13033o(this, viewOnClickListenerC1569El)));
        return c7o;
    }

    private final Integer A08(RelativeLayout relativeLayout) {
        Integer numA09 = null;
        if (this.A08.A3F()) {
            numA09 = A09(relativeLayout);
        }
        if (this.A08.A3U()) {
            A01(relativeLayout);
        }
        if (!this.A08.A3F() && !this.A08.A3U() && !this.A08.A3T()) {
            return A0A(relativeLayout);
        }
        return numA09;
    }

    private final Integer A09(RelativeLayout relativeLayout) {
        this.A00 = AbstractC3256sx.A01(this.A0A, false, this.A08, this.A0C, this.A0E, EnumC3254sv.A02, AbstractC3253su.A00(this.A08));
        C3251ss creditLine = this.A00;
        if (creditLine == null) {
            return null;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        layoutParams.setMargins(AbstractC3068pv.A00, AbstractC3068pv.A00, AbstractC3068pv.A0L, AbstractC3068pv.A0A);
        int iGenerateViewId = View.generateViewId();
        creditLine.setId(iGenerateViewId);
        creditLine.setLayoutParams(layoutParams);
        relativeLayout.addView(creditLine);
        creditLine.bringToFront();
        return Integer.valueOf(iGenerateViewId);
    }

    private final Integer A0A(RelativeLayout relativeLayout) {
        this.A01 = new C3320tz(this.A0A, this.A08, this.A0E, this.A0C, 0L, 16, null);
        C3320tz helper = this.A01;
        if (helper == null) {
            return null;
        }
        LinearLayout linearLayoutA0A = helper.A0A();
        int iGenerateViewId = View.generateViewId();
        linearLayoutA0A.setId(iGenerateViewId);
        relativeLayout.addView(linearLayoutA0A);
        linearLayoutA0A.bringToFront();
        return Integer.valueOf(iGenerateViewId);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A0E(android.widget.RelativeLayout r12, com.facebook.ads.redexgen.X.ViewOnClickListenerC1569El r13) {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2935ng.A0E(android.widget.RelativeLayout, com.facebook.ads.redexgen.X.El):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A0F(ViewOnClickListenerC1569El viewOnClickListenerC1569El, String str, int i, int i2) {
        if (viewOnClickListenerC1569El != null) {
            String str2 = str;
            if (A0J[2].charAt(26) == 'V') {
                throw new RuntimeException();
            }
            A0J[6] = "TU4oie8fUqrnHMiCu";
            if (str2 == null || str2.length() == 0) {
                return;
            }
            HashMap map = new HashMap();
            map.put(A0B(73, 7, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE), String.valueOf(i));
            map.put(A0B(66, 7, 65), String.valueOf(i2));
            viewOnClickListenerC1569El.A0F();
            viewOnClickListenerC1569El.setClickUrl(str, map);
        }
    }

    public final ViewOnClickListenerC1569El A0I() {
        return this.A02;
    }

    public final void A0J() {
        C3251ss c3251ss = this.A00;
        if (c3251ss != null) {
            c3251ss.A0O();
        }
        C3320tz c3320tz = this.A01;
        if (c3320tz != null) {
            c3320tz.A0B();
        }
    }

    public final void A0K(boolean z) {
        C3251ss c3251ss = this.A00;
        if (c3251ss != null) {
            c3251ss.A0P();
        }
        C3320tz c3320tz = this.A01;
        if (c3320tz != null) {
            c3320tz.A0C();
        }
    }

    public final void A0L(boolean z) {
        this.A04 = z;
    }
}
