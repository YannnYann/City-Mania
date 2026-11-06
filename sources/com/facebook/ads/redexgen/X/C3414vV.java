package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vV, reason: case insensitive filesystem */
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
public final class C3414vV {
    public static byte[] A07;
    public static String[] A08 = {"Fg25ZAS5qyWtSMEaeyPxh4apRouG1tqM", "nOxR2PNfNx1bwsXAiQsbbdUvuSV5O9Rg", "PgKBmvYu18n7yinyAWIO91lSAQYuc96E", "WzbySyXde24tfudf1jKK8lU1THHukPm", "oUyefTqi4KAsKMghU5d9pe9EP1KVacDS", "x", "meTSjhvrANMS660TgG0sekhqgou6", "NydTYy6inh1XiBHiRc8eDpj1nMYR"};
    public C3251ss A00;
    public C3320tz A01;
    public final LA A02;
    public final C1643Hi A03;
    public final C2917nO A04;
    public final InterfaceC3144r9 A05;
    public final C3251ss A06;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A08[3].length() != 31) {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[2] = "sL7Uco0bul6bO2utwLUjpJspuVMaICnF";
            strArr[0] = "mmuQj5bkX4NxDU71EKhTcoE6UOYYDm9F";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
            i4++;
        }
    }

    public static void A01() {
        A07 = new byte[]{-83, -68, -81, -85, -66, -81, -112, -65, -74, -74, -99, -83, -68, -81, -81, -72, -117, -82, -115, -68, -81, -82, -77, -66, -106, -77, -72, -81, -99, -66, -85, -66, -77, -83, -96, -77, -81, -63, 114, 120, 120, 120, 115, -19, -63, -28, -60, -31, -12, -31, -62, -11, -18, -28, -20, -27, -101, 113, -99, -100, -94, -109, -90, -94, -74, -107, -78, -68, -67, -82, -73, -82, -69, -62, -65, -65, -60, -100, -79, -55, -65, -59, -60};
    }

    static {
        A01();
    }

    public C3414vV(C1643Hi c1643Hi, LA la, C2917nO c2917nO, InterfaceC3144r9 interfaceC3144r9) {
        C1h.A09(c1643Hi, A00(56, 8, 2));
        C1h.A09(la, A00(43, 13, 84));
        C1h.A09(interfaceC3144r9, A00(64, 9, 29));
        this.A03 = c1643Hi;
        this.A02 = la;
        this.A04 = c2917nO;
        this.A05 = interfaceC3144r9;
    }

    private final void A02(RelativeLayout relativeLayout, int i) {
        if (!this.A02.A3S()) {
            boolean zA3O = this.A02.A3O();
            String[] strArr = A08;
            if (strArr[1].charAt(4) == strArr[4].charAt(4)) {
                throw new RuntimeException();
            }
            A08[5] = "4fZx7DX1";
            if (!zA3O) {
                return;
            }
        }
        this.A00 = AbstractC3256sx.A01(this.A03, false, this.A02, this.A04, this.A05, EnumC3254sv.A02, AbstractC3253su.A00(this.A02));
        C3251ss c3251ss = this.A00;
        if (c3251ss == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.setMargins(AbstractC3068pv.A00, AbstractC3068pv.A00, i, AbstractC3068pv.A00);
        c3251ss.setLayoutParams(layoutParams);
        relativeLayout.addView(c3251ss);
    }

    private final void A03(RelativeLayout relativeLayout, int i) {
        if (this.A02.A3U()) {
            C3255sw c3255swA02 = AbstractC3256sx.A02(this.A03, EnumC3254sv.A02, this.A02);
            C1h.A08(c3255swA02, A00(0, 43, 30));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(9);
            layoutParams.setMargins(i, AbstractC3068pv.A00, AbstractC3068pv.A00, AbstractC3068pv.A00);
            c3255swA02.setLayoutParams(layoutParams);
            relativeLayout.addView(c3255swA02);
        }
    }

    private final void A04(RelativeLayout relativeLayout, int i, int i2) {
        this.A01 = new C3320tz(this.A03, this.A02, this.A05, this.A04, 0L, 16, null);
        C3320tz helper = this.A01;
        if (helper == null) {
            return;
        }
        LinearLayout linearLayoutA0A = helper.A0A();
        linearLayoutA0A.setId(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, 0, i2, AbstractC3068pv.A0e);
        linearLayoutA0A.setLayoutParams(layoutParams);
        relativeLayout.addView(linearLayoutA0A);
        linearLayoutA0A.bringToFront();
    }

    private final boolean A05() {
        if (!this.A02.A3S() && !this.A02.A3O()) {
            boolean zA3U = this.A02.A3U();
            String[] strArr = A08;
            if (strArr[2].charAt(4) == strArr[0].charAt(4)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[1] = "XkxzSW7syBH4wQ6IMuyB0blC3k8r6qi0";
            strArr2[4] = "KEgJ9Sr8CZtU76MlR4dKdFrjJ7HYmW9k";
            if (!zA3U) {
                return false;
            }
        }
        return true;
    }

    public final int A06(RelativeLayout relativeLayout, int i) {
        C1h.A09(relativeLayout, A00(73, 10, 36));
        int iGenerateViewId = View.generateViewId();
        if (A05()) {
            RelativeLayout relativeLayout2 = new RelativeLayout(this.A03);
            relativeLayout2.setId(iGenerateViewId);
            RelativeLayout.LayoutParams containerParams = new RelativeLayout.LayoutParams(-1, -2);
            containerParams.addRule(12);
            containerParams.setMargins(0, 0, 0, AbstractC3068pv.A0e);
            A02(relativeLayout2, i);
            A03(relativeLayout2, i);
            relativeLayout.addView(relativeLayout2, containerParams);
        } else {
            A04(relativeLayout, iGenerateViewId, i);
        }
        return iGenerateViewId;
    }

    public final void A07() {
        C3251ss c3251ss = this.A00;
        if (c3251ss != null) {
            c3251ss.A0O();
        }
        C3251ss c3251ss2 = this.A06;
        if (c3251ss2 != null) {
            c3251ss2.A0O();
        }
        C3320tz c3320tz = this.A01;
        if (c3320tz != null) {
            c3320tz.A0B();
        }
    }

    public final void A08(boolean z) {
        C3251ss c3251ss;
        if (!z && (c3251ss = this.A00) != null) {
            c3251ss.A0P();
        }
        C3251ss c3251ss2 = this.A06;
        if (c3251ss2 != null) {
            c3251ss2.A0P();
        }
        C3320tz c3320tz = this.A01;
        String[] strArr = A08;
        if (strArr[2].charAt(4) == strArr[0].charAt(4)) {
            throw new RuntimeException();
        }
        A08[5] = "Yt43bExMyxMbKzq1luY1Wb3";
        if (c3320tz != null) {
            c3320tz.A0C();
        }
    }
}
