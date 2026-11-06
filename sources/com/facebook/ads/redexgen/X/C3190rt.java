package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3190rt extends LinearLayout {
    public static String[] A0C = {"RdKbZKE5ShqjtspsYuId0BpVT", "jFs6Ox2yxsj", "", "O0DGVMIkWcl", "ZjYxtVw01iwSMNXN0b17Jtyc9gHU9Z2d", "b1LSaO6GQJOSELIr8C99", "", "wukZGaaSm"};
    public static final int A0D = (int) (AbstractC3070px.A02 * 15.0f);
    public static final int A0E = (int) (AbstractC3070px.A02 * 10.0f);
    public static final int A0F = (int) (AbstractC3070px.A02 * 44.0f);
    public int A00;
    public boolean A01;
    public boolean A02;
    public int A03;
    public String A04;
    public boolean A05;
    public boolean A06;
    public final ImageView A07;
    public final LinearLayout A08;
    public final TextView A09;
    public final C1643Hi A0A;
    public final C3334uD A0B;

    public C3190rt(C1643Hi c1643Hi, int i, boolean z) {
        super(c1643Hi);
        this.A01 = false;
        this.A02 = false;
        this.A04 = "";
        this.A0A = c1643Hi;
        this.A05 = z;
        this.A07 = new ImageView(c1643Hi);
        this.A07.setPadding(A0E, A0E, A0E, A0E);
        this.A0B = new C3334uD(c1643Hi, this.A05);
        this.A0B.setProgress(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.A0B.setPadding(A0E, A0E, A0E, A0E);
        this.A09 = new TextView(c1643Hi);
        setOrientation(0);
        this.A08 = new LinearLayout(c1643Hi);
        this.A00 = i;
        A01();
    }

    private void A00() {
        if (!this.A06) {
            return;
        }
        this.A09.setText("");
        this.A09.setVisibility(8);
        this.A06 = false;
    }

    private void A01() {
        setToolbarActionMode(this.A00);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(A0F, A0F);
        AbstractC3111qc.A0b(this.A09, true, 16);
        this.A09.setTextColor(-1);
        this.A09.setVisibility(8);
        this.A08.addView(this.A07, layoutParams2);
        this.A08.addView(this.A0B, layoutParams2);
        addView(this.A08, layoutParams);
        LinearLayout.LayoutParams actionTextLayoutParams = new LinearLayout.LayoutParams(-2, -2);
        actionTextLayoutParams.gravity = 17;
        addView(this.A09, actionTextLayoutParams);
    }

    private void A02() {
        if (TextUtils.isEmpty(this.A04)) {
            return;
        }
        this.A09.setText(this.A04);
        this.A09.setVisibility(0);
        this.A06 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A03() {
        /*
            r4 = this;
            int r1 = r4.A00
            r0 = 2
            r3 = 0
            if (r1 == r0) goto Lb
            int r1 = r4.A00
            r0 = 6
            if (r1 != r0) goto L50
        Lb:
            r2 = 1
        Lc:
            com.facebook.ads.redexgen.X.uD r1 = r4.A0B
            if (r2 == 0) goto L4d
            boolean r0 = r4.A01
            if (r0 != 0) goto L18
            boolean r0 = r4.A02
            if (r0 == 0) goto L4b
        L18:
            r0 = 4
        L19:
            r1.setVisibility(r0)
            int r1 = r4.A00
            r0 = 5
            if (r1 != r0) goto L46
            r3 = 4
        L22:
            boolean r0 = r4.A02
            if (r0 == 0) goto L2a
            if (r3 != 0) goto L2a
            r3 = 8
        L2a:
            android.widget.ImageView r0 = r4.A07
            r0.setVisibility(r3)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3190rt.A0C
            r0 = 4
            r1 = r1[r0]
            r0 = 13
            char r1 = r1.charAt(r0)
            r0 = 67
            if (r1 == r0) goto L52
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3190rt.A0C
            java.lang.String r1 = "hK85U6OgwPHC"
            r0 = 5
            r2[r0] = r1
            return
        L46:
            if (r2 == 0) goto L22
            r3 = 8
            goto L22
        L4b:
            r0 = 0
            goto L19
        L4d:
            r0 = 8
            goto L19
        L50:
            r2 = 0
            goto Lc
        L52:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3190rt.A03():void");
    }

    public final void A04() {
        setVisibility(4);
    }

    public final void A05(float f, int i) {
        this.A0B.A04(f, i);
    }

    public final void A06(C2429fN c2429fN, boolean z, boolean z2) {
        int iA05 = c2429fN.A05(z);
        this.A0B.A05(AbstractC2526gx.A02(iA05, 77), iA05, 110, true);
        this.A07.setColorFilter(iA05);
        if (z2) {
            TextView textView = this.A09;
            int accentColor = AbstractC2526gx.A02(-1, 110);
            textView.setTextColor(accentColor);
            return;
        }
        this.A09.setTextColor(iA05);
    }

    public final boolean A07() {
        return !this.A09.getText().toString().isEmpty();
    }

    public final boolean A08() {
        return (this.A00 == 2 || this.A00 == 4) ? false : true;
    }

    private EnumC3122qn getNtdIcon() {
        switch (this.A03) {
            case 1:
                return EnumC3122qn.ICON_SKIP;
            case 2:
                return EnumC3122qn.AD_NTD_CHEVRON_DOWN;
            case 3:
            case 4:
            case 5:
            default:
                return EnumC3122qn.OTHER_SKIP;
            case 6:
                return EnumC3122qn.AD_NTD_OPEN_APP_STORE;
            case 7:
                return EnumC3122qn.AD_NTD_OPEN_BROWSER;
        }
    }

    public int getToolbarActionMode() {
        return this.A00;
    }

    public void setActionClickListener(View.OnClickListener onClickListener) {
        setOnClickListener(onClickListener);
    }

    public void setInitialUnskippableSeconds(int i) {
        if (i > 0) {
            setToolbarActionMode(2);
        }
    }

    public void setNTDStyle(int i) {
        this.A03 = i;
        if (this.A00 == 8) {
            this.A07.setImageBitmap(AbstractC3123qo.A01(getNtdIcon()));
        }
    }

    public void setNTDText(String str) {
        this.A04 = str;
        if (this.A00 == 8) {
            A02();
        }
    }

    public void setProgress(float f) {
        this.A0B.setProgressWithAnimation(f);
    }

    public void setProgressClickListener(View.OnClickListener onClickListener) {
        this.A0B.setOnClickListener(onClickListener);
    }

    public void setProgressImage(EnumC3122qn enumC3122qn) {
        this.A0B.setImage(enumC3122qn);
    }

    public void setProgressImmediate(float f) {
        this.A0B.clearAnimation();
        this.A0B.setProgress(f);
    }

    public void setProgressSpinnerInvisible(boolean z) {
        this.A01 = z;
        A03();
    }

    public void setSkipIconSuppressed(boolean z) {
        this.A02 = z;
        A03();
    }

    public void setToolbarActionMode(int i) {
        EnumC3122qn ntdIcon;
        this.A0A.A0F().AHK(i);
        this.A00 = i;
        A03();
        setVisibility(0);
        this.A07.setImageAlpha(255);
        this.A07.setPadding(A0E, A0E, A0E, A0E);
        if (i != 8) {
            A00();
        }
        switch (i) {
            case 0:
                ntdIcon = EnumC3122qn.CROSS;
                break;
            case 1:
                ntdIcon = !this.A05 ? EnumC3122qn.SKIP_ARROW : EnumC3122qn.REDESIGN_SKIP_ICON;
                break;
            case 2:
            default:
                ntdIcon = EnumC3122qn.CROSS;
                break;
            case 3:
                ntdIcon = EnumC3122qn.MINIMIZE_ARROW;
                break;
            case 4:
                ntdIcon = EnumC3122qn.CROSS;
                this.A07.setVisibility(8);
                setVisibility(8);
                break;
            case 5:
                ntdIcon = EnumC3122qn.CROSS;
                break;
            case 6:
                ntdIcon = EnumC3122qn.CROSS;
                break;
            case 7:
                ntdIcon = EnumC3122qn.CROSS;
                this.A07.setImageAlpha(110);
                this.A07.setPadding(A0D, A0D, A0D, A0D);
                break;
            case 8:
                ntdIcon = getNtdIcon();
                if (A0C[4].charAt(13) != 'C') {
                    String[] strArr = A0C;
                    strArr[6] = "";
                    strArr[2] = "";
                    A02();
                } else {
                    throw new RuntimeException();
                }
                break;
        }
        this.A07.setImageBitmap(AbstractC3123qo.A01(ntdIcon));
        if (i == 1) {
            AbstractC3111qc.A0H(1005, this.A07);
            setVisibility(0);
        } else if (i == 8) {
            AbstractC3111qc.A0H(1009, this.A07);
            setVisibility(0);
        } else {
            AbstractC3111qc.A0H(1002, this.A07);
        }
    }

    public void setToolbarMessage(String str) {
        this.A09.setText(str);
        this.A09.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
        this.A06 = false;
    }

    public void setToolbarMessageEnabled(boolean z) {
        this.A09.setVisibility(z ? 0 : 4);
    }
}
