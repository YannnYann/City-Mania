package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ImageView;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Aq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1470Aq extends ImageView implements InterfaceC2348e3 {
    public static byte[] A05;
    public static final int A06;
    public C1484Be A00;
    public final Paint A01;
    public final C1643Hi A02;
    public final C2917nO A03;
    public final B3 A04;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 28);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A05 = new byte[]{122, -94, -95, -110, 77, 110, -111};
    }

    static {
        A06();
        A06 = AbstractC3068pv.A0H;
    }

    public C1470Aq(C1643Hi c1643Hi, C2917nO c2917nO) {
        super(c1643Hi);
        this.A04 = new B3() { // from class: com.facebook.ads.redexgen.X.5C
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(B4 b4) {
                this.A00.A09();
            }
        };
        this.A03 = c2917nO;
        this.A02 = c1643Hi;
        this.A01 = new Paint();
        this.A01.setColor(Integer.MIN_VALUE);
        setColorFilter(-1);
        setPadding(AbstractC3068pv.A0y, AbstractC3068pv.A0y, AbstractC3068pv.A0y, AbstractC3068pv.A0y);
        setContentDescription(A03(0, 7, 17));
        A05();
        setOnClickListener(new ViewOnClickListenerC2334dp(this));
        AbstractC3111qc.A0H(1112, this);
    }

    private void A04() {
        setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.ICON_MUTE));
    }

    private void A05() {
        setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.ICON_UN_MUTE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A07() {
        return this.A00 != null && this.A00.getVolume() == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final void A09() {
        if (this.A00 == null) {
            return;
        }
        if (A07()) {
            A04();
        } else {
            A05();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ABd(C1484Be c1484Be) {
        this.A00 = c1484Be;
        if (this.A00 != null) {
            this.A00.getEventBus().A05(this.A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ALp(C1484Be c1484Be) {
        if (this.A00 != null) {
            this.A00.getEventBus().A06(this.A04);
        }
        this.A00 = null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        int y = getWidth() / 2;
        int x = getHeight() / 2;
        canvas.drawCircle(y, x, Math.min(y, x), this.A01);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int height = A06;
        int width = A06;
        setMeasuredDimension(height, width);
    }
}
