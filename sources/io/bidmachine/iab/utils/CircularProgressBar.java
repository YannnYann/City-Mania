package io.bidmachine.iab.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes5.dex */
public final class CircularProgressBar extends ProgressBar implements IabElement {
    public CircularProgressDrawable a;
    public final Paint b;

    public CircularProgressBar(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.b = paint;
        paint.setColor(0);
        a(context);
    }

    public void a(Context context) {
        float f = getResources().getDisplayMetrics().density;
        int iDpToPx = Utils.dpToPx(context, 8.0f);
        setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(context);
        this.a = circularProgressDrawable;
        circularProgressDrawable.setStrokeWidth(f * 4.0f);
        this.a.setColorSchemeColors(-65536);
        this.a.setStrokeCap(Paint.Cap.ROUND);
        setIndeterminateDrawable(this.a);
        setIndeterminate(true);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, Math.min(getWidth(), getHeight()) / 2.0f, this.b);
        super.onDraw(canvas);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.a.setCenterRadius((Math.min((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) / 2.0f) - this.a.getStrokeWidth());
    }

    public void setColorSchemeColors(int... colors) {
        this.a.setColorSchemeColors(colors);
    }

    public void setProgressBackgroundColor(int color) {
        this.b.setColor(color);
    }

    @Override // io.bidmachine.iab.utils.IabElement
    public void setStyle(IabElementStyle style) {
        this.a.setStrokeWidth(style.getStrokeWidth(getContext()).floatValue());
        this.a.setColorSchemeColors(style.getStrokeColor().intValue());
        this.b.setColor(style.getFillColor().intValue());
        postInvalidate();
    }
}
