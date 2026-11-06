package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.ImageView;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ar, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1471Ar extends ImageView implements InterfaceC2348e3 {
    public static byte[] A06;
    public static String[] A07 = {"CZ6R6baQKTb1E5sAmpDqVkfMXF7zVnG4", "nQZGX73N3q5NRRZlZyP90gUTrDeeLYBu", "LfCM6PYFJNbwOvLH4thVDQon3h1Zk2zk", "bpUakkTElIOqaP65ISNG9oh", "gJtMODfbj2e7z8MJG7ZRKfD", "8rYwk9o7IGDDsMQbyUTj4ra1LUt9E6qX", "3WiLQHXTUUJ8WctEatoRQ", "Xo7nIXQ5hsw2R0tzDjIU8fyfjH4jtFIR"};
    public static final int A08;
    public static final int A09;
    public C1484Be A00;
    public final Paint A01;
    public final RectF A02;
    public final C1643Hi A03;
    public final C2917nO A04;
    public final B3 A05;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 19);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A06 = new byte[]{101, 93, 92, 77, 8, 105, 76};
    }

    static {
        A06();
        A09 = (int) (AbstractC3070px.A02 * 4.0f);
        A08 = (int) (AbstractC3070px.A02 * 6.0f);
    }

    public C1471Ar(C1643Hi c1643Hi, C2917nO c2917nO) {
        this(c1643Hi, c2917nO, false);
    }

    public C1471Ar(C1643Hi c1643Hi, C2917nO c2917nO, boolean z) {
        super(c1643Hi);
        this.A05 = new B3() { // from class: com.facebook.ads.redexgen.X.5D
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(B4 b4) {
                this.A00.A09();
            }
        };
        this.A04 = c2917nO;
        this.A03 = c1643Hi;
        if (z) {
            this.A02 = new RectF();
        } else {
            this.A02 = null;
        }
        this.A01 = new Paint();
        this.A01.setColor(-1728053248);
        setColorFilter(-1);
        setPadding(A09, A09, A09, A09);
        setContentDescription(A03(0, 7, 59));
        A05();
        setOnClickListener(new ViewOnClickListenerC2335dq(this));
    }

    private void A04() {
        setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.SOUND_OFF));
    }

    private void A05() {
        setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.SOUND_ON));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A07() {
        if (this.A00 != null) {
            float volume = this.A00.getVolume();
            String[] strArr = A07;
            if (strArr[5].charAt(12) == strArr[1].charAt(12)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "7LwdJMyLjSlNEKSwxkcw7Q3";
            strArr2[6] = "d5nTRpYYugpReKnwSxkEX";
            if (volume == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                return true;
            }
        }
        return false;
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
            this.A00.getEventBus().A05(this.A05);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ALp(C1484Be c1484Be) {
        if (this.A00 != null) {
            this.A00.getEventBus().A06(this.A05);
        }
        this.A00 = null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width = getWidth() / 2;
        int x = getHeight();
        int y = x / 2;
        if (this.A02 != null) {
            RectF rectF = this.A02;
            int x2 = getWidth();
            float f = x2;
            int x3 = getHeight();
            rectF.set(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, x3);
            RectF rectF2 = this.A02;
            int x4 = A08;
            float f2 = x4;
            int x5 = A08;
            canvas.drawRoundRect(rectF2, f2, x5, this.A01);
        } else {
            int x6 = Math.min(width, y);
            canvas.drawCircle(width, y, x6, this.A01);
        }
        super.onDraw(canvas);
    }

    public void setBackgroundPaintColor(int i) {
        this.A01.setColor(i);
    }
}
