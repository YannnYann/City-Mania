package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vU, reason: case insensitive filesystem */
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
public final class C3413vU {
    public static byte[] A0C;
    public static String[] A0D = {"j7QbJr5AIpIYO828wBTwpNsJEGDPP7q8", "tMzteZEfNFgBXyt7u8cronhNe4LC", "Zw6ipv3ALRtOoDrQ6Wdd", "KSNF1VtFdJkV4ApfmieoyehlzbGy2aYh", "", "YqSlfwJ5NLUvvLTrXrvFKS11MaPht1uN", "nnH2BntsxoVjTLTvZPeZ", "YmyUjId47jvF0zwXhqCNcmZjoUI1pU1X"};
    public static final C3406vN A0E;
    public int A00;
    public int A01;
    public RelativeLayout A02;
    public ViewOnClickListenerC1569El A03;
    public final Handler A04;
    public final View A05;
    public final LA A06;
    public final C2427fL A07;
    public final C1643Hi A08;
    public final C2917nO A09;
    public final InterfaceC3144r9 A0A;
    public final C3414vV A0B;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final LinearLayout A03() {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        C3346uP c3346uP = new C3346uP(this.A08);
        AbstractC3111qc.A0O(c3346uP, 0);
        c3346uP.setRadius(20);
        int i = (int) (70 * AbstractC3070px.A02);
        c3346uP.setLayoutParams(new LinearLayout.LayoutParams(i, i));
        AbstractC3111qc.A0L(c3346uP);
        AsyncTaskC1577Et asyncTaskC1577EtA04 = new AsyncTaskC1577Et(c3346uP, this.A08).A04();
        C1h.A08(asyncTaskC1577EtA04, A09(74, 21, 1));
        asyncTaskC1577EtA04.A07(this.A06.A35().A01());
        linearLayout.addView(c3346uP);
        LinearLayout linearLayout2 = new LinearLayout(this.A08);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(AbstractC3068pv.A0y, 0, 0, 0);
        linearLayout2.setLayoutParams(layoutParams);
        TextView textView = new TextView(this.A08);
        textView.setText(this.A07.A0H());
        textView.setTextSize(16.0f);
        textView.setLineSpacing((AbstractC3070px.A02 * 20.0f) - (AbstractC3070px.A02 * 16.0f), 1.0f);
        textView.setTextColor(-16777216);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(this.A08);
        textView2.setText(this.A07.A0G());
        textView2.setTextSize(14.0f);
        textView2.setLineSpacing((AbstractC3070px.A02 * 18.0f) - (AbstractC3070px.A02 * 14.0f), 1.0f);
        textView2.setTextColor(Color.parseColor(A09(7, 7, 86)));
        textView2.setMaxLines(1);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final LinearLayout A05(ViewOnClickListenerC1569El viewOnClickListenerC1569El, EnumC3407vO enumC3407vO, int i, C3346uP c3346uP, C3346uP c3346uP2) {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AbstractC3068pv.A0e, AbstractC3068pv.A0h, AbstractC3068pv.A0e, AbstractC3068pv.A0h);
        linearLayout.setClickable(true);
        linearLayout.setOnClickListener(new ViewOnClickListenerC3412vT(viewOnClickListenerC1569El));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(AbstractC3070px.A02 * 20.0f);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.addView(A03(), new LinearLayout.LayoutParams(-1, -2));
        List<C2962o9> listA02 = this.A06.A32().A0L().A02();
        C1h.A06(listA02);
        if (true ^ listA02.isEmpty()) {
            LinearLayout linearLayoutA08 = A08(listA02);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, AbstractC3068pv.A0L);
            layoutParams.setMargins(0, AbstractC3068pv.A0e, 0, 0);
            linearLayout.addView(linearLayoutA08, layoutParams);
        }
        LinearLayout linearLayoutA06 = A06(enumC3407vO, i, c3346uP, c3346uP2);
        if (linearLayoutA06 != null) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.setMargins(0, AbstractC3068pv.A0e, 0, 0);
            linearLayout.addView(linearLayoutA06, layoutParams2);
        }
        return linearLayout;
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A0C = new byte[]{-128, -114, -111, -108, -110, -93, -113, 122, -115, -103, -114, -121, -114, -112, -105, -85, -89, -85, -89, -85, -89, -99, -102, -83, -102, 123, -82, -89, -99, -91, -98, -30, -32, -17, -68, -33, -56, -32, -17, -36, -33, -36, -17, -36, -93, -87, -87, -87, -92, 114, 72, 116, 115, 121, 106, 125, 121, -66, -103, -78, -65, -75, -67, -74, -61, -62, -95, -66, -56, -55, -70, -61, -70, -57, 112, 113, 75, 111, 99, 105, 103, 85, 107, 124, 103, 77, 112, 113, 121, 112, 42, 48, 48, 48, 43};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A0G(RelativeLayout relativeLayout, int i, ViewOnClickListenerC1569El viewOnClickListenerC1569El, EnumC3407vO enumC3407vO, C3346uP c3346uP, C3346uP c3346uP2) {
        AbstractC3111qc.A0K(c3346uP);
        AbstractC3111qc.A0K(c3346uP2);
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, -2);
        layoutParams.addRule(14);
        layoutParams.setMargins(AbstractC3068pv.A0m, (int) (AbstractC3070px.A04.heightPixels * 0.18f), AbstractC3068pv.A0m, 0);
        linearLayout.setLayoutParams(layoutParams);
        AbstractC3111qc.A0L(linearLayout);
        linearLayout.addView(A05(viewOnClickListenerC1569El, enumC3407vO, i, c3346uP, c3346uP2), new LinearLayout.LayoutParams(-1, -2));
        relativeLayout.addView(linearLayout);
        int iA06 = this.A0B.A06(relativeLayout, AbstractC3068pv.A0L);
        LinearLayout linearLayoutA02 = A02();
        int iGenerateViewId = View.generateViewId();
        linearLayoutA02.setId(iGenerateViewId);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(2, iA06);
        layoutParams2.addRule(14);
        layoutParams2.setMargins(0, 0, 0, AbstractC3068pv.A0e);
        relativeLayout.addView(linearLayoutA02, layoutParams2);
        if (viewOnClickListenerC1569El != null) {
            A0I(viewOnClickListenerC1569El);
            int i2 = AbstractC3068pv.A0L;
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams3.addRule(2, iGenerateViewId);
            layoutParams3.setMargins(i2, 0, i2, AbstractC3068pv.A0y);
            relativeLayout.addView(viewOnClickListenerC1569El, layoutParams3);
        }
    }

    static {
        A0A();
        A0E = new C3406vN(null);
    }

    public C3413vU(C1643Hi c1643Hi, LA la, C2917nO c2917nO, Handler handler, InterfaceC3144r9 interfaceC3144r9, View view) {
        C1h.A09(c1643Hi, A09(49, 8, 4));
        C1h.A09(la, A09(21, 10, 56));
        C1h.A09(handler, A09(57, 8, 80));
        C1h.A09(interfaceC3144r9, A09(65, 9, 84));
        this.A08 = c1643Hi;
        this.A09 = c2917nO;
        this.A04 = handler;
        this.A0A = interfaceC3144r9;
        this.A05 = view;
        C2427fL c2427fLA0J = la.A32().A0J();
        C1h.A08(c2427fLA0J, A09(31, 18, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE));
        this.A07 = c2427fLA0J;
        this.A06 = la;
        this.A00 = this.A08.getResources().getConfiguration().orientation;
        this.A0B = new C3414vV(this.A08, la, this.A09, this.A0A);
    }

    private final LinearLayout A02() {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setAlpha(0.5f);
        C3336uF c3336uF = new C3336uF(this.A08, -1, -1, EnumC3122qn.GOOGLE_PLAY_STORE);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(AbstractC3068pv.A06, AbstractC3068pv.A06);
        layoutParams.rightMargin = AbstractC3068pv.A0w;
        c3336uF.setLayoutParams(layoutParams);
        linearLayout.addView(c3336uF);
        TextView storeTitleView = new TextView(this.A08);
        storeTitleView.setText(this.A07.A08());
        storeTitleView.setTextSize(14.0f);
        storeTitleView.setLineSpacing((AbstractC3070px.A02 * 18.0f) - (AbstractC3070px.A02 * 14.0f), 1.0f);
        storeTitleView.setTextColor(-1);
        linearLayout.addView(storeTitleView);
        return linearLayout;
    }

    private final LinearLayout A04(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        LinearLayout headerRow = new LinearLayout(this.A08);
        headerRow.setOrientation(1);
        headerRow.setPadding(AbstractC3068pv.A0e, AbstractC3068pv.A0h, AbstractC3068pv.A0e, AbstractC3068pv.A0h);
        headerRow.setClickable(true);
        headerRow.setOnClickListener(new ViewOnClickListenerC3411vS(viewOnClickListenerC1569El));
        GradientDrawable cardBackground = new GradientDrawable();
        cardBackground.setColor(-1);
        cardBackground.setCornerRadius(AbstractC3070px.A02 * 20.0f);
        headerRow.setBackground(cardBackground);
        headerRow.addView(A03(), new LinearLayout.LayoutParams(-1, -2));
        List<C2962o9> listA02 = this.A06.A32().A0L().A02();
        C1h.A06(listA02);
        if (true ^ listA02.isEmpty()) {
            LinearLayout linearLayoutA08 = A08(listA02);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, AbstractC3068pv.A0L);
            layoutParams.setMargins(0, AbstractC3068pv.A0e, 0, 0);
            headerRow.addView(linearLayoutA08, layoutParams);
        }
        return headerRow;
    }

    private final LinearLayout A06(EnumC3407vO enumC3407vO, int i, C3346uP c3346uP, C3346uP c3346uP2) {
        if (enumC3407vO == EnumC3407vO.A05) {
            return null;
        }
        LinearLayout linearLayout = new LinearLayout(this.A08);
        int i2 = i - (AbstractC3068pv.A0e * 2);
        switch (C3408vP.A00[enumC3407vO.ordinal()]) {
            case 1:
                linearLayout.setOrientation(0);
                c3346uP.setRadius(20);
                c3346uP2.setRadius(20);
                int imageHeight = (int) (((i2 - AbstractC3068pv.A0y) / 2) / 0.45801526f);
                c3346uP.setLayoutParams(new LinearLayout.LayoutParams(0, imageHeight, 1.0f));
                linearLayout.addView(c3346uP);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, imageHeight, 1.0f);
                layoutParams.setMargins(AbstractC3068pv.A0y, 0, 0, 0);
                c3346uP2.setLayoutParams(layoutParams);
                linearLayout.addView(c3346uP2);
                return linearLayout;
            case 2:
                linearLayout.setOrientation(1);
                c3346uP.setRadius(16);
                c3346uP2.setRadius(16);
                int i3 = (int) (i2 / 2.1023622f);
                c3346uP.setLayoutParams(new LinearLayout.LayoutParams(-1, i3));
                linearLayout.addView(c3346uP);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, i3);
                layoutParams2.setMargins(0, AbstractC3068pv.A0y, 0, 0);
                c3346uP2.setLayoutParams(layoutParams2);
                linearLayout.addView(c3346uP2);
                return linearLayout;
            case 3:
                return null;
            default:
                throw new AnonymousClass28();
        }
    }

    private final LinearLayout A07(C2962o9 c2962o9) {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        LinearLayout linearLayout2 = new LinearLayout(this.A08);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this.A08);
        textView.setText(c2962o9.A04());
        textView.setTextSize(16.0f);
        textView.setLineSpacing((AbstractC3070px.A02 * 20.0f) - (AbstractC3070px.A02 * 16.0f), 1.0f);
        textView.setTextColor(-16777216);
        textView.setGravity(17);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout2.addView(textView);
        String strA02 = c2962o9.A02();
        if (strA02 != null) {
            if (strA02.length() > 0) {
                ImageView iconView = new ImageView(this.A08);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(AbstractC3068pv.A06, AbstractC3068pv.A06);
                layoutParams.setMargins(AbstractC3068pv.A0r, 0, 0, 0);
                layoutParams.gravity = 16;
                iconView.setLayoutParams(layoutParams);
                iconView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                AsyncTaskC1577Et downloadTask = new AsyncTaskC1577Et(iconView, this.A08).A04();
                C1h.A08(downloadTask, A09(74, 21, 1));
                downloadTask.A07(strA02);
                linearLayout2.addView(iconView);
            }
        }
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-2, -2));
        TextView textView2 = new TextView(this.A08);
        textView2.setText(c2962o9.A03());
        textView2.setTextSize(14.0f);
        textView2.setLineSpacing((AbstractC3070px.A02 * 18.0f) - (AbstractC3070px.A02 * 14.0f), 1.0f);
        textView2.setTextColor(Color.parseColor(A09(14, 7, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE)));
        textView2.setGravity(17);
        textView2.setMaxLines(1);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout.addView(textView2);
        return linearLayout;
    }

    private final LinearLayout A08(List<C2962o9> list) {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        int iMin = Math.min(list.size(), 3);
        if (iMin < 3) {
            linearLayout.setPadding(AbstractC3068pv.A0L, 0, AbstractC3068pv.A0L, 0);
        }
        for (int i = 0; i < iMin; i++) {
            LinearLayout linearLayoutA07 = A07(list.get(i));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            if (i > 0) {
                layoutParams.setMargins(AbstractC3068pv.A0h, 0, 0, 0);
            }
            linearLayout.addView(linearLayoutA07, layoutParams);
        }
        return linearLayout;
    }

    private final void A0B(LinearLayout linearLayout) {
        LinearLayout linearLayoutA02 = A02();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.setMargins(0, AbstractC3068pv.A0y, 0, 0);
        linearLayout.addView(linearLayoutA02, layoutParams);
    }

    private final void A0C(RelativeLayout relativeLayout) {
        String imageUrl = this.A06.A32().A0I().A08();
        String imageUrl2 = imageUrl;
        if (!(imageUrl2 == null || imageUrl2.length() == 0)) {
            AbstractC3353uW.A01(this.A08, relativeLayout, imageUrl, Color.argb(179, 12, 16, 20));
        }
        int screenHeight = AbstractC3070px.A04.heightPixels;
        int iMin = Math.min(screenHeight, AbstractC3070px.A04.widthPixels) - (AbstractC3068pv.A0m * 2);
        ViewOnClickListenerC1569El viewOnClickListenerC1569El = this.A03;
        List<String> listA03 = this.A06.A32().A0L().A03();
        if (this.A00 == 2 || listA03.size() < 2) {
            A0E(relativeLayout, iMin, viewOnClickListenerC1569El);
        } else {
            C1h.A06(listA03);
            A0H(relativeLayout, iMin, listA03, viewOnClickListenerC1569El);
        }
        relativeLayout.post(new RunnableC3410vR(this));
    }

    private final void A0D(RelativeLayout relativeLayout, int i, ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        RelativeLayout.LayoutParams containerParams = new RelativeLayout.LayoutParams(i, -2);
        containerParams.addRule(13);
        linearLayout.setLayoutParams(containerParams);
        linearLayout.addView(A04(viewOnClickListenerC1569El), new LinearLayout.LayoutParams(-1, -2));
        if (viewOnClickListenerC1569El != null) {
            A0I(viewOnClickListenerC1569El);
            LinearLayout.LayoutParams ctaParams = new LinearLayout.LayoutParams(-1, -2);
            ctaParams.setMargins(0, AbstractC3068pv.A0y, 0, 0);
            linearLayout.addView(viewOnClickListenerC1569El, ctaParams);
        }
        A0B(linearLayout);
        relativeLayout.addView(linearLayout);
        this.A0B.A06(relativeLayout, AbstractC3068pv.A0L);
    }

    private final void A0E(RelativeLayout relativeLayout, int i, ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        boolean isPortrait = this.A00 == 1;
        if (isPortrait) {
            A0F(relativeLayout, i, viewOnClickListenerC1569El);
        } else {
            A0D(relativeLayout, i, viewOnClickListenerC1569El);
        }
        boolean isPortrait2 = C2888mv.A1C(this.A08);
        if (isPortrait2) {
            relativeLayout.setClickable(true);
            relativeLayout.setOnClickListener(new ViewOnClickListenerC3409vQ(viewOnClickListenerC1569El));
        }
    }

    private final void A0F(RelativeLayout relativeLayout, int i, ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        int i2 = AbstractC3068pv.A0L;
        LinearLayout whiteCard = new LinearLayout(this.A08);
        whiteCard.setOrientation(1);
        whiteCard.setGravity(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        whiteCard.setLayoutParams(layoutParams);
        LinearLayout container = A04(viewOnClickListenerC1569El);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(i2, 0, i2, 0);
        whiteCard.addView(container, layoutParams2);
        if (viewOnClickListenerC1569El != null) {
            A0I(viewOnClickListenerC1569El);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
            int edgeMargin = AbstractC3068pv.A0y;
            layoutParams3.setMargins(i2, edgeMargin, i2, 0);
            whiteCard.addView(viewOnClickListenerC1569El, layoutParams3);
        }
        A0B(whiteCard);
        relativeLayout.addView(whiteCard);
        this.A0B.A06(relativeLayout, i2);
    }

    private final void A0H(RelativeLayout relativeLayout, int i, List<String> list, ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        int i2 = this.A01;
        C1g c1g = new C1g();
        C3346uP screenshotView1 = new C3346uP(this.A08);
        C3346uP screenshotView2 = new C3346uP(this.A08);
        screenshotView1.setScaleType(ImageView.ScaleType.CENTER_CROP);
        screenshotView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
        AsyncTaskC1577Et asyncTaskC1577EtA04 = new AsyncTaskC1577Et(screenshotView1, this.A08).A04();
        String strA09 = A09(74, 21, 1);
        C1h.A08(asyncTaskC1577EtA04, strA09);
        asyncTaskC1577EtA04.A06(new EQ(this, i2, c1g, relativeLayout, i, viewOnClickListenerC1569El, screenshotView1, screenshotView2));
        asyncTaskC1577EtA04.A07(list.get(0));
        AsyncTaskC1577Et asyncTaskC1577EtA042 = new AsyncTaskC1577Et(screenshotView2, this.A08).A04();
        C1h.A08(asyncTaskC1577EtA042, strA09);
        asyncTaskC1577EtA042.A07(list.get(1));
    }

    private final void A0I(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        AbstractC3111qc.A0H(1001, viewOnClickListenerC1569El);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(A09(0, 7, 92)));
        gradientDrawable.setCornerRadius(AbstractC3070px.A02 * 12.0f);
        viewOnClickListenerC1569El.setBackground(gradientDrawable);
        viewOnClickListenerC1569El.setPadding(AbstractC3068pv.A0h, AbstractC3068pv.A08, AbstractC3068pv.A0h, AbstractC3068pv.A08);
        viewOnClickListenerC1569El.setTextColor(-1);
        viewOnClickListenerC1569El.setTextSize(16.0f);
        viewOnClickListenerC1569El.setTypeface(viewOnClickListenerC1569El.getTypeface(), 1);
        viewOnClickListenerC1569El.setGravity(17);
        viewOnClickListenerC1569El.A0D();
        viewOnClickListenerC1569El.setIncludeFontPadding(false);
        viewOnClickListenerC1569El.setId(View.generateViewId());
        ViewParent parent = viewOnClickListenerC1569El.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(viewOnClickListenerC1569El);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View A0K(com.facebook.ads.redexgen.X.ViewOnClickListenerC1569El r5) {
        /*
            r4 = this;
            if (r5 == 0) goto L20
            r3 = 1
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3413vU.A0D
            r0 = 5
            r1 = r1[r0]
            r0 = 1
            char r1 = r1.charAt(r0)
            r0 = 100
            if (r1 == r0) goto L7c
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3413vU.A0D
            java.lang.String r1 = "bt7zPrm6aysAIXkK75GpzNM8OGuneizb"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "ZWHAdAGEEYIkYqk7lIuZoptbUScULLuf"
            r0 = 3
            r2[r0] = r1
            r5.setV2Design(r3)
        L20:
            r4.A03 = r5
            com.facebook.ads.redexgen.X.El r3 = r4.A03
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3413vU.A0D
            r0 = 5
            r1 = r1[r0]
            r0 = 1
            char r1 = r1.charAt(r0)
            r0 = 100
            if (r1 == r0) goto L72
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3413vU.A0D
            java.lang.String r1 = "dphCyl6lvmiE6rHXEjdEcCOKobFQnCQ3"
            r0 = 5
            r2[r0] = r1
            if (r3 == 0) goto L48
        L3b:
            com.facebook.ads.redexgen.X.LA r0 = r4.A06
            com.facebook.ads.redexgen.X.fE r0 = r0.A32()
            com.facebook.ads.redexgen.X.fP r0 = r0.A0K()
            r3.A0G(r0)
        L48:
            com.facebook.ads.redexgen.X.Hi r0 = r4.A08
            android.content.Context r0 = (android.content.Context) r0
            android.widget.RelativeLayout r2 = new android.widget.RelativeLayout
            r2.<init>(r0)
            r1 = -1
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams
            r0.<init>(r1, r1)
            android.view.ViewGroup$LayoutParams r0 = (android.view.ViewGroup.LayoutParams) r0
            r2.setLayoutParams(r0)
            r4.A02 = r2
            com.facebook.ads.redexgen.X.Hi r0 = r4.A08
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.orientation
            r4.A00 = r0
            r4.A0C(r2)
            android.view.View r2 = (android.view.View) r2
            return r2
        L72:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3413vU.A0D
            java.lang.String r1 = "4yJGmhO1yM92igHwi10nWPZb1JyCMFYP"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto L48
            goto L3b
        L7c:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3413vU.A0K(com.facebook.ads.redexgen.X.El):android.view.View");
    }

    public final void A0L() {
        this.A0B.A07();
    }

    public final void A0M(int i) {
        RelativeLayout relativeLayout = this.A02;
        if (relativeLayout == null) {
            return;
        }
        relativeLayout.removeAllViews();
        this.A00 = i;
        this.A01++;
        A0C(relativeLayout);
    }

    public final void A0N(boolean z) {
        this.A0B.A08(z);
    }
}
