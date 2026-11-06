package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mN, reason: case insensitive filesystem */
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
public final class C2854mN {
    public static byte[] A04;
    public static String[] A05 = {"wGScD8", "oPZfnFqeiuQp5tIiq7auFiLk80yAHegP", "4", "GYD7gch", "AWD5Gw4quaezKpfifvCiCkmCb", "GvllotOSRE86GeTStenHBKCXSTADrh3Y", "k9G59oRQ91IBErqTGWW2r93dI", "HxetapKDtkYR2GSbfKkwiAcFodRUyZ"};
    public static final C2870md A06;
    public TextView A00;
    public final RelativeLayout A01;
    public final C1643Hi A02;
    public final List<InterfaceC2644iv> A03;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-88, -76, -77, -71, -86, -67, -71, 28, 20, 19, 24, 16, -8, 29, 21, 30, -5, 24, 34, 35, -14, -29, -12, -25, -16, -10, -40, -21, -25, -7};
    }

    static {
        A02();
        A06 = new C2870md(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C2854mN(C1643Hi c1643Hi, RelativeLayout relativeLayout, List<? extends InterfaceC2644iv> list) {
        C1h.A09(c1643Hi, A01(0, 7, 8));
        C1h.A09(relativeLayout, A01(20, 10, 69));
        C1h.A09(list, A01(7, 13, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE));
        this.A02 = c1643Hi;
        this.A01 = relativeLayout;
        this.A03 = list;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String A00(int r8) {
        /*
            r7 = this;
            r6 = 0
            if (r8 < 0) goto Lb
            java.util.List<com.facebook.ads.redexgen.X.iv> r0 = r7.A03
            int r0 = r0.size()
            if (r8 < r0) goto Lc
        Lb:
            return r6
        Lc:
            java.util.List<com.facebook.ads.redexgen.X.iv> r0 = r7.A03
            java.lang.Object r0 = r0.get(r8)
            com.facebook.ads.redexgen.X.iv r0 = (com.facebook.ads.redexgen.X.InterfaceC2644iv) r0
            java.util.List r5 = r0.A7q()
            r0 = r5
            java.util.Collection r0 = (java.util.Collection) r0
            r4 = 0
            if (r0 == 0) goto L3a
            boolean r3 = r0.isEmpty()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2854mN.A05
            r0 = 1
            r1 = r1[r0]
            r0 = 31
            char r1 = r1.charAt(r0)
            r0 = 90
            if (r1 == r0) goto L58
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2854mN.A05
            java.lang.String r1 = "1FWHGGrzRl4TsXmWRe1ePUjdivmi4nH4"
            r0 = 5
            r2[r0] = r1
            if (r3 == 0) goto L3e
        L3a:
            r0 = 1
        L3b:
            if (r0 == 0) goto L40
            return r6
        L3e:
            r0 = 0
            goto L3b
        L40:
            java.lang.Object r0 = r5.get(r4)
            com.facebook.ads.redexgen.X.iy r0 = (com.facebook.ads.redexgen.X.C2647iy) r0
            com.facebook.ads.redexgen.X.fE r0 = r0.A03()
            if (r0 != 0) goto L4d
            return r6
        L4d:
            com.facebook.ads.redexgen.X.fL r0 = r0.A0J()
            if (r0 == 0) goto L57
            java.lang.String r6 = r0.A0H()
        L57:
            return r6
        L58:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2854mN.A00(int):java.lang.String");
    }

    public final int A03() {
        TextView textView = this.A00;
        if (textView != null) {
            return textView.getId();
        }
        return -1;
    }

    public final void A04(int i) {
        if (this.A00 != null) {
            return;
        }
        String initialTitle = A00(0);
        TextView textView = new TextView(this.A02);
        String str = initialTitle;
        if (!(str == null || str.length() == 0)) {
            textView.setText(initialTitle);
        } else {
            textView.setVisibility(8);
        }
        textView.setTextSize(17.0f);
        textView.setTextColor(-1);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setGravity(17);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        AbstractC3111qc.A0L(textView);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-1, -2);
        params.addRule(14);
        params.addRule(2, i);
        params.setMargins(AbstractC3068pv.A0n, 0, AbstractC3068pv.A0n, AbstractC3068pv.A0c);
        this.A01.addView(textView, params);
        this.A00 = textView;
    }

    public final void A05(int i) {
        TextView textView = this.A00;
        if (textView == null) {
            return;
        }
        String strA00 = A00(i);
        String str = strA00;
        if (!(str == null || str.length() == 0)) {
            textView.setText(strA00);
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
        }
    }
}
