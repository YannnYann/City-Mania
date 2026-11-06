package com.facebook.ads.internal.view;

import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.redexgen.X.AbstractC3070px;
import com.facebook.ads.redexgen.X.AbstractC3111qc;
import com.facebook.ads.redexgen.X.AbstractC3137r2;
import com.facebook.ads.redexgen.X.AbstractC3360ud;
import com.facebook.ads.redexgen.X.C1643Hi;
import com.facebook.ads.redexgen.X.C2429fN;
import com.facebook.ads.redexgen.X.C2441fZ;
import com.facebook.ads.redexgen.X.C2450fi;
import com.facebook.ads.redexgen.X.C2917nO;
import com.facebook.ads.redexgen.X.C3014p0;
import com.facebook.ads.redexgen.X.C3135r0;
import com.facebook.ads.redexgen.X.C3181rk;
import com.facebook.ads.redexgen.X.C3190rt;
import com.facebook.ads.redexgen.X.EnumC3122qn;
import com.facebook.ads.redexgen.X.InterfaceC3136r1;
import com.facebook.ads.redexgen.X.InterfaceC3144r9;
import com.facebook.ads.redexgen.X.ViewOnClickListenerC1569El;
import com.facebook.ads.redexgen.X.ViewOnClickListenerC3154rJ;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FullScreenAdToolbar extends AbstractC3137r2 {
    public static byte[] A0B;
    public static String[] A0C = {"elaUgpg", "xyZ5KhWZZkOCw26QnbyRE89VYXYHkT38", "j2Hg99bd5kkvFLrtwtqoGvtE7T", "FtK0h2Y990QReQxCoMrwn7Y", "09p430KvfvIa5D7TMMbG57be7BWhVuc0", "4K9Dg6G4rdQDm1ubILJxRl9GbBVTjarc", "MQsbPX4", "ODYsITK"};
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final int A0H;
    public C3135r0 A00;
    public InterfaceC3136r1 A01;
    public InterfaceC3136r1 A02;
    public C3181rk A03;
    public boolean A04;
    public boolean A05;
    public final RelativeLayout A06;
    public final C2917nO A07;
    public final InterfaceC3144r9 A08;
    public final C3190rt A09;
    public final C3014p0 A0A;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0B = new byte[]{-26, 15, 18, 22, 8, -61, -28, 7, 56, 75, 86, 85, 88, 90, 6, 39, 74, 77, 72, 72, 69, 59, 58, 75};
    }

    static {
        A03();
        A0D = (int) (AbstractC3070px.A02 * 10.0f);
        A0H = (int) (AbstractC3070px.A02 * 16.0f);
        A0F = A0H - A0D;
        A0G = (A0H * 2) - A0D;
        A0E = (int) (AbstractC3070px.A02 * 4.0f);
    }

    public FullScreenAdToolbar(C1643Hi c1643Hi, InterfaceC3144r9 interfaceC3144r9, C2917nO c2917nO, int i, int i2, boolean z) {
        super(c1643Hi);
        this.A01 = null;
        this.A04 = true;
        this.A05 = z;
        this.A08 = interfaceC3144r9;
        this.A07 = c2917nO;
        setGravity(16);
        this.A09 = new C3190rt(c1643Hi, i, z);
        this.A09.setContentDescription(A02(0, 8, 50));
        this.A09.setActionClickListener(new ViewOnClickListenerC3154rJ(this));
        if (!this.A05) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(A0F, A0F, A0G, A0F);
            addView(this.A09, layoutParams);
            this.A06 = new RelativeLayout(c1643Hi);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
            layoutParams2.weight = 1.0f;
            this.A0A = new C3014p0(c1643Hi);
            AbstractC3111qc.A0H(1006, this.A0A);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams3.gravity = 17;
            this.A0A.setLayoutParams(layoutParams3);
            this.A06.addView(this.A0A);
            addView(this.A06, layoutParams2);
            if (i2 != -1) {
                A0G(c1643Hi, i2);
                return;
            }
            return;
        }
        if (i2 != -1) {
            A0G(c1643Hi, i2);
        }
        this.A06 = new RelativeLayout(c1643Hi);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        this.A0A = new C3014p0(c1643Hi);
        AbstractC3111qc.A0H(1006, this.A0A);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = 17;
        this.A0A.setLayoutParams(layoutParams5);
        this.A06.addView(this.A0A);
        addView(this.A06, layoutParams4);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.setMargins(0, A0H / 2, A0H / 2, A0H / 2);
        addView(this.A09, layoutParams6);
    }

    private void A04(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setVisibility(z ? 0 : 8);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A08() {
        super.A08();
        if (this.A00 != null) {
            this.A00.setVisibility(8);
        }
        if (this.A03 != null) {
            this.A03.setVisibility(8);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A09() {
        this.A09.A04();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A0A() {
        if (this.A01 != null) {
            this.A02 = this.A01;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A0B() {
        this.A01 = getToolbarListener();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A0C(float f, int i) {
        this.A09.A05(f, i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final void A0D(C2429fN c2429fN, boolean z) {
        boolean z2 = this.A04;
        int iA05 = c2429fN.A05(z2);
        this.A0A.A02(c2429fN.A0B(z2), iA05);
        boolean z3 = this.A05;
        String strA02 = A02(8, 9, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
        if (!z3) {
            if (this.A00 != null) {
                this.A00.setIconColors(iA05);
                this.A00.setContentDescription(strA02);
            }
        } else if (this.A03 != null) {
            this.A03.setIconColors(iA05);
            this.A03.setContentDescription(strA02);
        }
        this.A09.A06(c2429fN, z2, z);
        if (z2) {
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-1778384896, 0});
            gradientDrawable.setCornerRadius(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            AbstractC3111qc.A0W(this, gradientDrawable);
            boolean fullScreenEnabled = this.A05;
            setReportingViewColor(!fullScreenEnabled ? this.A00 : this.A03);
            return;
        }
        AbstractC3111qc.A0O(this, 0);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public final boolean A0E() {
        return this.A09.A07();
    }

    public final void A0F(C2441fZ c2441fZ, String str, int i) {
        this.A09.setInitialUnskippableSeconds(i);
        if (this.A05) {
            if (this.A03 != null) {
                this.A03.setAdDetails(c2441fZ, str, this.A07, this.A08);
                return;
            }
            return;
        }
        C3135r0 c3135r0 = this.A00;
        if (A0C[4].charAt(4) != '3') {
            throw new RuntimeException();
        }
        A0C[5] = "bHmrpXXD4QhMP5hP38hyOXYLbga8TEOt";
        if (c3135r0 == null) {
            return;
        }
        this.A00.setAdDetails(c2441fZ, str, this.A07, this.A08);
    }

    public final void A0G(C1643Hi c1643Hi, int i) {
        if (this.A00 != null) {
            AbstractC3111qc.A0K(this.A00);
            this.A00.removeAllViews();
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (!this.A05) {
            this.A00 = new C3135r0(c1643Hi, i);
            layoutParams.setMargins(0, A0H / 2, A0H / 2, A0H / 2);
            addView(this.A00, layoutParams);
        } else {
            this.A03 = new C3181rk(c1643Hi);
            layoutParams.setMargins(A0F, A0F, A0G, A0F);
            addView(this.A03, layoutParams);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public int getToolbarActionMode() {
        return this.A09.getToolbarActionMode();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public int getToolbarHeight() {
        return AbstractC3137r2.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public InterfaceC3136r1 getToolbarListener() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setAdReportingVisible(boolean z) {
        A04(!this.A05 ? this.A00 : this.A03, z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setCTAClickListener(View.OnClickListener onClickListener) {
        this.A0A.setOnClickListener(onClickListener);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setCTAClickListener(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        this.A0A.setOnClickListener(AbstractC3360ud.A03(viewOnClickListenerC1569El, A02(17, 7, 104)));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setFullscreen(boolean z) {
        this.A04 = z;
    }

    public void setOnlyPageDetails(C2441fZ c2441fZ) {
        if (c2441fZ != null) {
            this.A0A.setPageDetails(c2441fZ);
        } else {
            this.A0A.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setPageDetails(C2441fZ c2441fZ, String str, int i, C2450fi c2450fi) {
        this.A09.setInitialUnskippableSeconds(i);
        this.A09.setNTDStyle(c2450fi.A00());
        this.A09.setNTDText(c2450fi.A06());
        this.A0A.setPageDetails(c2441fZ);
        if (this.A05) {
            if (this.A03 != null) {
                this.A03.setAdDetails(c2441fZ, str, this.A07, this.A08);
            }
        } else {
            if (this.A00 == null) {
                return;
            }
            this.A00.setAdDetails(c2441fZ, str, this.A07, this.A08);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setPageDetailsVisible(boolean z) {
        this.A06.removeAllViews();
        if (z) {
            RelativeLayout relativeLayout = this.A06;
            C3014p0 c3014p0 = this.A0A;
            if (A0C[4].charAt(4) != '3') {
                throw new RuntimeException();
            }
            String[] strArr = A0C;
            strArr[2] = "uYrc95dj4mq6YR3RipRhNZPjST";
            strArr[3] = "ufyXPPKrvmASdIniU0CJIS9";
            relativeLayout.addView(c3014p0);
        }
        C3190rt c3190rt = this.A09;
        String[] strArr2 = A0C;
        if (strArr2[2].length() == strArr2[3].length()) {
            c3190rt.setToolbarMessageEnabled(!z);
        } else {
            A0C[1] = "RoBBOPMqmB8G6B1FErbRchWOJuWn3pgq";
            c3190rt.setToolbarMessageEnabled(!z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgress(float f) {
        this.A09.setProgress(f);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgressClickListener(View.OnClickListener onClickListener) {
        this.A09.setProgressClickListener(onClickListener);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgressImage(EnumC3122qn enumC3122qn) {
        this.A09.setProgressImage(enumC3122qn);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgressImmediate(float f) {
        this.A09.setProgressImmediate(f);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setProgressSpinnerInvisible(boolean z) {
        this.A09.setProgressSpinnerInvisible(z);
    }

    private void setReportingViewColor(View view) {
        if (view != null) {
            AbstractC3111qc.A0T(view, 0, -16777216, A0E);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setSkipIconSuppressed(boolean z) {
        this.A09.setSkipIconSuppressed(z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setToolbarActionMessage(String str) {
        this.A09.setToolbarMessage(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setToolbarActionMode(int i) {
        this.A09.setToolbarActionMode(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3137r2
    public void setToolbarListener(InterfaceC3136r1 interfaceC3136r1) {
        this.A02 = interfaceC3136r1;
    }
}
