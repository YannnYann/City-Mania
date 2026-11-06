package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.to, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3309to extends LinearLayout {
    public static byte[] A0A;
    public static String[] A0B = {"cmzsI0MqV", "rmZj6bXGr2Mc3k6GGfUNTI8ab", "Oqa2BQOYUIgPEQnUKqUaSgjmS1hAy2aw", "VbR8t651F3u5xAC0yd", "KwIIB1PdAD0xOvkamO3Meu", "6KEr", "QBka00Gf2XeExLF7IYa6e3", ""};
    public static final LinearLayout.LayoutParams A0C;
    public LinearLayout A00;
    public TextView A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final View.OnClickListener A05;
    public final RelativeLayout A06;
    public final C1643Hi A07;
    public final ViewOnClickListenerC1569El A08;
    public final C3346uP A09;

    public static String A0h(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0i() {
        byte[] bArr = {-56, -53, -53, -52, -37, -56, -48, -45, -38};
        if (A0B[1].length() != 25) {
            throw new RuntimeException();
        }
        A0B[2] = "W8PIFEgMaUlhByfzvyeLgAFdtcDk8ZOz";
        A0A = bArr;
    }

    public abstract void A0l(int i);

    static {
        A0i();
        A0C = new LinearLayout.LayoutParams(-2, -2);
    }

    public AbstractC3309to(C1643Hi c1643Hi, ViewOnClickListenerC1569El viewOnClickListenerC1569El, int i, C2429fN c2429fN, boolean z, String str, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, C2224c2 c2224c2, C3102qT c3102qT, C2435fT c2435fT, boolean z2, String str2) {
        super(c1643Hi);
        this.A02 = A0h(0, 0, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE);
        AbstractC3111qc.A0L(this);
        this.A07 = c1643Hi;
        this.A04 = i;
        this.A03 = z2;
        this.A02 = str2;
        this.A09 = new C3346uP(c1643Hi);
        AbstractC3111qc.A0O(this.A09, 0);
        AbstractC3111qc.A0H(1106, this.A09);
        if (z2) {
            this.A00 = new LinearLayout(c1643Hi);
            this.A01 = new TextView(c1643Hi);
            AbstractC3111qc.A0L(this.A01);
        }
        if (viewOnClickListenerC1569El == null) {
            this.A08 = new ViewOnClickListenerC1569El(c1643Hi, str, c2429fN, z, interfaceC2909nG, interfaceC3144r9, c2224c2, c3102qT, c2435fT);
        } else {
            this.A08 = viewOnClickListenerC1569El;
        }
        AbstractC3111qc.A0H(1001, this.A08);
        this.A05 = AbstractC3360ud.A03(this.A08, A0h(0, 9, 54));
        this.A06 = new RelativeLayout(c1643Hi);
        this.A06.setLayoutParams(A0C);
        AbstractC3111qc.A0L(this.A06);
    }

    public void A0j() {
    }

    public void A0k() {
        this.A09.setOnClickListener(this.A05);
    }

    public void A0m(boolean z) {
    }

    public final ViewOnClickListenerC1569El getCTAButton() {
        return this.A08;
    }

    public View getExpandableLayout() {
        return null;
    }

    public final ImageView getIconView() {
        return this.A09;
    }

    public void setInfo(C2427fL c2427fL, C2431fP c2431fP, String str, String str2, InterfaceC3081q8 interfaceC3081q8, InterfaceC3328u7 interfaceC3328u7) {
        this.A08.setCta(c2431fP, str, new HashMap(), interfaceC3081q8, interfaceC3328u7);
        new AsyncTaskC1577Et(this.A09, this.A07).A05(this.A04, this.A04).A07(str2);
    }

    public void setTitleMaxLines(int i) {
    }
}
