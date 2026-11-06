package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.common.api.Api;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3U, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3U extends AbstractViewOnTouchListenerC13053q implements InterfaceC3019p5 {
    public static byte[] A07;
    public static String[] A08 = {"T7MK6mm4Fzbg8PTMnM4kcHpb21LLpIaw", "PTQtUxKdjysMmbj8hCZsGKEwd1IRWqqZ", "Zw8mt4VncD", "79VYCrnrWW", "2MnAMBnkkiKtyd2cP7mHhabJycDYuMiE", "jaMauIT7sdi", "OgIH7ZaBRtH9hoDgrnw", "xZmsCngT77DU5lblEiekqTVKPqNdsast"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public InterfaceC3156rL A04;
    public boolean A05;
    public final AnonymousClass76 A06;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 28);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A07 = new byte[]{-6, -7, -37, -20, -14, -16, -50, -13, -20, -7, -14, -16, -17};
    }

    static {
        A03();
    }

    public C3U(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new AnonymousClass76(c1643Hi, new C3034pN(), new C3053pg());
        A02();
    }

    public C3U(C1643Hi c1643Hi, AttributeSet attributeSet) {
        super(c1643Hi, attributeSet);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new AnonymousClass76(c1643Hi, new C3034pN(), new C3053pg());
        A02();
    }

    public C3U(C1643Hi c1643Hi, AttributeSet attributeSet, int i) {
        super(c1643Hi, attributeSet, i);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new AnonymousClass76(c1643Hi, new C3034pN(), new C3053pg());
        A02();
    }

    private int A00(int i) {
        int i2 = this.A00 * 2;
        int measuredWidth = getMeasuredWidth();
        int spacing = getPaddingLeft();
        int i3 = (measuredWidth - spacing) - i2;
        int itemSize = getAdapter().A0B();
        int numFullItems = 0;
        int spacing2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        while (spacing2 > i) {
            numFullItems++;
            if (numFullItems >= itemSize) {
                return i;
            }
            int spacing3 = numFullItems * i2;
            spacing2 = (int) ((i3 - spacing3) / (numFullItems + 0.333f));
        }
        return spacing2;
    }

    private void A02() {
        this.A06.A3F(0);
        setLayoutManager(this.A06);
        setSaveEnabled(false);
        setSnapDelegate(this);
        AbstractC3111qc.A0L(this);
    }

    private void A04(int i, int i2) {
        if (i == this.A03 && i2 == this.A02) {
            return;
        }
        this.A03 = i;
        if (A08[1].charAt(11) == 'q') {
            throw new RuntimeException();
        }
        A08[6] = "hNBaptvkpj";
        this.A02 = i2;
        if (0 != 0) {
            throw new NullPointerException(A01(0, 13, 111));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractViewOnTouchListenerC13053q
    public final void A27(int i, boolean z) {
        super.A27(i, z);
        A04(i, 0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3019p5
    public final int A9R(int i) {
        int iAbs = Math.abs(i);
        int scrollXAbs = ((AbstractViewOnTouchListenerC13053q) this).A06;
        if (iAbs <= scrollXAbs) {
            return 0;
        }
        int scrollXAbs2 = this.A01;
        if (scrollXAbs2 == 0) {
            return 1;
        }
        int scrollXAbs3 = this.A01;
        return 1 + (iAbs / scrollXAbs3);
    }

    public int getChildSpacing() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.C7O, android.view.View
    public final void onMeasure(int i, int i2) {
        int height;
        int itemSize;
        super.onMeasure(i, i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.A05) {
            int i3 = (int) AbstractC3070px.A02;
            int verticalPadding = C2888mv.A0D(getContext());
            height = (i3 * verticalPadding) + paddingTop;
        } else {
            int verticalPadding2 = getMeasuredWidth();
            height = Math.round(verticalPadding2 / 1.91f);
        }
        int verticalPadding3 = View.MeasureSpec.getMode(i2);
        switch (verticalPadding3) {
            case Integer.MIN_VALUE:
                int verticalPadding4 = View.MeasureSpec.getSize(i2);
                height = Math.min(verticalPadding4, height);
                break;
            case 1073741824:
                height = View.MeasureSpec.getSize(i2);
                break;
        }
        int height2 = height - paddingTop;
        if (this.A05) {
            int verticalPadding5 = C3150rF.A09;
            itemSize = Math.min(verticalPadding5, height2);
        } else {
            itemSize = A00(height2);
        }
        int height3 = getMeasuredWidth();
        int verticalPadding6 = itemSize + paddingTop;
        setMeasuredDimension(height3, verticalPadding6);
        if (!this.A05) {
            int verticalPadding7 = this.A00;
            setChildWidth((verticalPadding7 * 2) + itemSize);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C7O
    public void setAdapter(AbstractC2633ik abstractC2633ik) {
        this.A06.A3M(abstractC2633ik == null ? -1 : abstractC2633ik.hashCode());
        super.setAdapter(abstractC2633ik);
    }

    public void setChildSpacing(int i) {
        this.A00 = i;
    }

    public void setChildWidth(int i) {
        this.A01 = i;
        int measuredWidth = getMeasuredWidth();
        int pageWidth = getPaddingLeft();
        int i2 = measuredWidth - pageWidth;
        int pageWidth2 = getPaddingRight();
        int i3 = i2 - pageWidth2;
        AnonymousClass76 anonymousClass76 = this.A06;
        int pageWidth3 = this.A01;
        anonymousClass76.A3N((i3 - pageWidth3) / 2);
        AnonymousClass76 anonymousClass762 = this.A06;
        int pageWidth4 = this.A01;
        anonymousClass762.A3L(((double) pageWidth4) / ((double) measuredWidth));
    }

    public void setCurrentPosition(int i) {
        A27(i, false);
    }

    public void setOnPageChangedListener(InterfaceC3156rL interfaceC3156rL) {
        this.A04 = interfaceC3156rL;
    }

    public void setShowTextInCarousel(boolean z) {
        this.A05 = z;
    }
}
