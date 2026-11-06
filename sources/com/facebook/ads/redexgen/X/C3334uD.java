package com.facebook.ads.redexgen.X;

import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3334uD extends View {
    public static byte[] A0F;
    public static String[] A0G = {"Nbc6Jmo5XxwoSf0WsC4pNUwvbxxmeuzU", "Es2t6BS2", "WUgCzt6qD3CB9cjx4HsVq0Jqaz41VBuo", "hkZRo5NTzxOFCAK6tj2hPIlun6a", "TTjuir0T4YhatH37Odlm7BF", "mNho4RFDELoa", "9llBB27OMv3OwRnb05oM", "XnRgJ28VorNH"};
    public static final int A0H;
    public static final int A0I;
    public static final int A0J;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public ObjectAnimator A04;
    public Bitmap A05;
    public boolean A06;
    public final float A07;
    public final float A08;
    public final Paint A09;
    public final Paint A0A;
    public final Paint A0B;
    public final Paint A0C;
    public final RectF A0D;
    public final RectF A0E;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0F = new byte[]{84, 86, 75, 67, 86, 65, 87, 87};
    }

    static {
        A01();
        A0H = (int) (AbstractC3070px.A02 * 5.0f);
        A0I = (int) (AbstractC3070px.A02 * 4.0f);
        A0J = (int) (AbstractC3070px.A02 * 10.0f);
    }

    public C3334uD(C1643Hi c1643Hi, boolean z) {
        super(c1643Hi);
        this.A08 = Resources.getSystem().getDisplayMetrics().density * 3.0f;
        this.A07 = Resources.getSystem().getDisplayMetrics().density * 2.0f;
        this.A02 = A0J;
        this.A00 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.A04 = null;
        this.A03 = -1;
        this.A06 = z;
        this.A0D = new RectF();
        this.A0E = new RectF();
        this.A09 = new Paint(1);
        this.A09.setStyle(Paint.Style.STROKE);
        this.A09.setStrokeWidth(!this.A06 ? this.A08 : this.A07);
        this.A0A = new Paint(1);
        this.A0A.setStyle(Paint.Style.STROKE);
        this.A0A.setStrokeWidth(!this.A06 ? this.A08 : this.A07);
        this.A0B = new Paint(1);
        this.A0C = new Paint();
        this.A0C.setAntiAlias(true);
        this.A0C.setColor(-1);
        this.A0C.setTextSize(A0J);
        this.A01 = !this.A06 ? A0H : A0I;
    }

    public final void A02() {
        if (this.A04 != null && this.A04.isRunning()) {
            this.A04.pause();
        }
    }

    public final void A03() {
        if (this.A04 != null && this.A04.isPaused()) {
            this.A04.resume();
        }
    }

    public final void A04(float f, int i) {
        this.A03 = i;
        setProgressWithAnimation(f);
    }

    public final void A05(int i, int i2, int i3, boolean z) {
        this.A09.setColor(i);
        this.A0A.setColor(i2);
        if (z) {
            this.A0B.setColorFilter(new PorterDuffColorFilter(AbstractC2526gx.A02(i2, i3), PorterDuff.Mode.SRC_ATOP));
        }
    }

    @Override // android.view.View
    public final void clearAnimation() {
        if (this.A04 != null) {
            ObjectAnimator objectAnimator = this.A04;
            if (A0G[4].length() == 15) {
                throw new RuntimeException();
            }
            A0G[0] = "vMfsJaJNlQJ6eTU2cMKDLU2YSzRmfzEH";
            objectAnimator.cancel();
            this.A04 = null;
        }
    }

    public int getCountdownTextSizeForTesting() {
        return (int) this.A0C.getTextSize();
    }

    public float getProgress() {
        return this.A00;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawArc(this.A0D, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 360.0f, false, this.A09);
        canvas.drawArc(this.A0D, -90.0f, ((100.0f - this.A00) * 360.0f) / 100.0f, false, this.A0A);
        if (this.A05 != null) {
            canvas.drawBitmap(this.A05, new Rect(0, 0, this.A05.getWidth(), this.A05.getHeight()), this.A0E, this.A0B);
        }
        if (this.A03 >= 0) {
            String str = this.A03 + A00(0, 0, 32);
            float f = this.A0D.left;
            float f2 = this.A0D.right;
            float sweepAngle = this.A0D.left;
            float centerY = f + ((f2 - sweepAngle) / 2.0f);
            float centerX = this.A0D.top;
            float f3 = this.A0D.bottom;
            float sweepAngle2 = this.A0D.top;
            float centerX2 = centerX + ((f3 - sweepAngle2) / 2.0f);
            Paint.FontMetrics fontMetrics = this.A0C.getFontMetrics();
            float f4 = fontMetrics.ascent;
            float sweepAngle3 = fontMetrics.descent;
            float centerX3 = centerX2 - ((f4 + sweepAngle3) / 2.0f);
            float sweepAngle4 = this.A0C.measureText(str);
            canvas.drawText(str, centerY - (sweepAngle4 / 2.0f), centerX3, this.A0C);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int iMin = Math.min(getDefaultSize(getSuggestedMinimumHeight(), i2), getDefaultSize(getSuggestedMinimumWidth(), i));
        setMeasuredDimension(iMin, iMin);
        float f = !this.A06 ? this.A08 : this.A07;
        RectF rectF = this.A0D;
        float f2 = (f / 2.0f) + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        int min = getPaddingLeft();
        float f3 = f2 + min;
        float f4 = (f / 2.0f) + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        int min2 = getPaddingTop();
        float f5 = f4 + min2;
        int min3 = getPaddingRight();
        float f6 = (iMin - (f / 2.0f)) - min3;
        float strokeWidth = iMin;
        int min4 = getPaddingBottom();
        rectF.set(f3, f5, f6, (strokeWidth - (f / 2.0f)) - min4);
        int i3 = this.A01;
        RectF rectF2 = this.A0E;
        float f7 = this.A0D.left + i3;
        float f8 = this.A0D.top + i3;
        float f9 = this.A0D.right - i3;
        float strokeWidth2 = this.A0D.bottom;
        rectF2.set(f7, f8, f9, strokeWidth2 - i3);
    }

    public void setCountdownTextSize(int i) {
        this.A02 = i;
        this.A0C.setTextSize(this.A02);
        invalidate();
    }

    public void setImage(EnumC3122qn enumC3122qn) {
        this.A05 = enumC3122qn == null ? null : AbstractC3123qo.A01(enumC3122qn);
        invalidate();
    }

    public void setImagePadding(int i) {
        this.A01 = i;
        invalidate();
    }

    public void setProgress(float f) {
        this.A00 = Math.min(f, 100.0f);
        postInvalidate();
    }

    public void setProgressWithAnimation(float f) {
        if (this.A04 != null) {
            this.A04.cancel();
        }
        this.A04 = ObjectAnimator.ofFloat(this, A00(0, 8, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE), f);
        this.A04.setDuration(400L);
        this.A04.setInterpolator(new LinearInterpolator());
        this.A04.start();
    }
}
