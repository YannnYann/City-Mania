package com.facebook.ads.redexgen.X;

import android.R;
import android.animation.ObjectAnimator;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.view.animation.LinearInterpolator;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Am, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1466Am extends RelativeLayout implements InterfaceC2348e3 {
    public static byte[] A0B;
    public static String[] A0C = {"kQ", "Hq", "OjgwQqPrmANjyfbphJ39Mu61StzsnX", "ENHlAXCFtvifbfpvqNNdhmMf2tSqJsHo", "jqwCZFsclm8lKMB7op", "K89S7l71J8gMFKO9TsoXH7DZJ5zzjbee", "9i4hb0lNaQ8A7VlgsO2M315Ld", "BIioCxLzD8LCeZg"};
    public static final int A0D;
    public int A00;
    public int A01;
    public ObjectAnimator A02;
    public C1484Be A03;
    public boolean A04;
    public boolean A05;
    public final ProgressBar A06;
    public final AbstractC2857mQ A07;
    public final AbstractC2857mQ A08;
    public final AbstractC2857mQ A09;
    public final AbstractC2857mQ A0A;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 20);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0B = new byte[]{-71, -69, -72, -80, -69, -82, -68, -68};
    }

    static {
        A03();
        A0D = AbstractC3068pv.A0K;
    }

    public C1466Am(C1643Hi c1643Hi, int i) {
        this(c1643Hi, A0D, -12549889, 0, i);
    }

    public C1466Am(C1643Hi c1643Hi, int i, int i2, int i3, int i4) {
        super(c1643Hi);
        this.A04 = false;
        this.A01 = -1;
        this.A05 = true;
        this.A0A = new BB() { // from class: com.facebook.ads.redexgen.X.50
            public static String[] A01 = {"5cZwmFwOCvoIimHKJKs7c8Wrfuwl5", "kR6Rx7ETQGlVhfpD5OxJcFg21Ovz094i", "oaAjYFLN3m9AYmyloxlSIBJp6ETHW3KF", "dCQrNLE74jmKWuOaqJJ4Sbhiwuuv5ad", "onBgfHhqxGhqxLvpU2wfKqg3mDsyExyq", "SCROov7hAW1gh5oss5LLtyUv0yBfa", "SAPoZVZ00ZwZwmL71sxtzrpJli3hIy2X", "TEn6j3AzMnGgqeyMrOghHZKrMbMLSMuC"};

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5V c5v) {
                if (this.A00.A03 != null) {
                    C1466Am c1466Am = this.A00;
                    String[] strArr = A01;
                    if (strArr[2].charAt(14) == strArr[4].charAt(14)) {
                        throw new RuntimeException();
                    }
                    A01[1] = "B8raFzKF2tgWcMrESvgtBPeFcOBIsHL1";
                    c1466Am.A0B(true);
                }
            }
        };
        this.A08 = new BG() { // from class: com.facebook.ads.redexgen.X.4z
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5W c5w) {
                this.A00.A02();
            }
        };
        this.A09 = new BE() { // from class: com.facebook.ads.redexgen.X.4y
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                if (this.A00.A03 != null) {
                    this.A00.A0B(true);
                }
            }
        };
        this.A07 = new BM() { // from class: com.facebook.ads.redexgen.X.4x
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                if (this.A00.A03 != null && this.A00.A05) {
                    this.A00.A06();
                }
            }
        };
        this.A00 = i4;
        this.A06 = new ProgressBar(c1643Hi, null, R.attr.progressBarStyleHorizontal);
        A0A(i2, i3, false);
        this.A06.setMax(UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
        addView(this.A06, new RelativeLayout.LayoutParams(-1, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        if (this.A02 != null) {
            this.A02.cancel();
            this.A02.setTarget(null);
            this.A02 = null;
            this.A06.clearAnimation();
        }
    }

    public final void A06() {
        A02();
        this.A02 = ObjectAnimator.ofInt(this.A06, A01(0, 8, 53), 0, 0);
        this.A02.setDuration(0L);
        this.A02.setInterpolator(new LinearInterpolator());
        this.A02.start();
        this.A01 = -1;
    }

    public final void A07() {
        A02();
        this.A04 = true;
        this.A03 = null;
    }

    public final void A08() {
        A02();
    }

    public final void A09(int i) {
        if (this.A04) {
            return;
        }
        A02();
        if (A0C[3].charAt(2) == '7') {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[2] = "yedT1VOxRsFXzyFrRMoEWNeYHyjr2k";
        strArr[7] = "ZZEnXydL5Apwe4z";
        int duration = this.A00;
        int i2 = duration > 0 ? (i * UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS) / duration : 0;
        int progress = this.A01;
        if (progress >= i2 || duration <= i) {
            int progress2 = this.A00;
            if (progress2 != -1) {
                int progress3 = this.A06.getProgress();
                int progress4 = A0C[5].charAt(17);
                if (progress4 != 55) {
                    A0C[5] = "BPpXZJNGY8Y3FUuotYxOER1m1YlSVT68";
                    if (progress3 >= 10000) {
                        return;
                    }
                } else if (progress3 >= 10000) {
                    return;
                }
                this.A06.setProgress(UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
                return;
            }
            return;
        }
        ProgressBar progressBar = this.A06;
        int progress5 = this.A01;
        this.A02 = ObjectAnimator.ofInt(progressBar, A01(0, 8, 53), progress5, i2);
        this.A02.setDuration(Math.min(250, duration - i));
        this.A02.setInterpolator(new LinearInterpolator());
        this.A02.start();
        this.A01 = i2;
    }

    public final void A0A(int i, int i2, boolean z) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i2);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(i);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        if (z) {
            gradientDrawable.setCornerRadius(40.0f);
            gradientDrawable2.setCornerRadius(40.0f);
            gradientDrawable3.setCornerRadius(40.0f);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, gradientDrawable3, new ScaleDrawable(gradientDrawable2, 8388611, 1.0f, -1.0f)});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.secondaryProgress);
        layerDrawable.setId(2, R.id.progress);
        this.A06.setProgressDrawable(layerDrawable);
    }

    public final void A0B(boolean z) {
        if (this.A03 == null) {
            return;
        }
        A02();
        int currentPositionInMillis = this.A03.getCurrentPositionInMillis();
        int position = this.A00;
        int duration = position == -1 ? this.A03.getDuration() : this.A00;
        int progress = duration > 0 ? (currentPositionInMillis * UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS) / duration : 0;
        int position2 = this.A01;
        if (position2 >= progress || duration <= currentPositionInMillis) {
            int position3 = this.A00;
            if (position3 != -1) {
                int position4 = this.A06.getProgress();
                if (position4 < 10000) {
                    this.A06.setProgress(UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
                    return;
                }
                return;
            }
            return;
        }
        if (z) {
            ProgressBar progressBar = this.A06;
            int position5 = this.A01;
            this.A02 = ObjectAnimator.ofInt(progressBar, A01(0, 8, 53), position5, progress);
            ObjectAnimator objectAnimator = this.A02;
            int position6 = Math.min(250, duration - currentPositionInMillis);
            objectAnimator.setDuration(position6);
            this.A02.setInterpolator(new LinearInterpolator());
            this.A02.start();
        } else {
            this.A06.setProgress(progress);
        }
        this.A01 = progress;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ABd(C1484Be c1484Be) {
        this.A03 = c1484Be;
        c1484Be.getEventBus().A03(this.A08, this.A09, this.A0A, this.A07);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ALp(C1484Be c1484Be) {
        if (c1484Be != null) {
            c1484Be.getEventBus().A04(this.A0A, this.A09, this.A08, this.A07);
        }
        this.A03 = null;
    }

    public int getCustomDuration() {
        return this.A00;
    }

    public void setCustomDuration(int i) {
        this.A00 = i;
    }

    public void setShouldClearAnimationWhenVideoCompleted(boolean z) {
        this.A05 = z;
    }
}
