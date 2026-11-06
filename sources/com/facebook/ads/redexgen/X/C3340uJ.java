package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.widget.ImageView;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3340uJ extends ImageView {
    public float A00;
    public final int A01;
    public final int A02;

    @Nullable
    public final Bitmap A03;

    public C3340uJ(Context context, int i, int i2, EnumC3122qn enumC3122qn) {
        super(context);
        this.A00 = 1.0f;
        this.A01 = i;
        this.A02 = i2;
        this.A03 = AbstractC3123qo.A01(enumC3122qn);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.A03 != null) {
            Paint paint = new Paint(2);
            paint.setColorFilter(new PorterDuffColorFilter(this.A01, PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(this.A03, (Rect) null, new Rect(0, 0, getWidth(), getHeight()), paint);
            paint.setColorFilter(new PorterDuffColorFilter(this.A02, PorterDuff.Mode.SRC_ATOP));
            Rect fillRect = new Rect(0, 0, (int) (this.A00 * this.A03.getWidth()), this.A03.getHeight());
            Rect drawRect = new Rect(0, 0, (int) (this.A00 * getWidth()), getHeight());
            canvas.drawBitmap(this.A03, fillRect, drawRect, paint);
        }
    }

    public void setFillRatio(float f) {
        this.A00 = f;
        postInvalidate();
    }
}
