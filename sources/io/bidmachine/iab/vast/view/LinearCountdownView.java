package io.bidmachine.iab.vast.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.iab.utils.Assets;
import io.bidmachine.iab.utils.IabElement;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.utils.Utils;

/* JADX INFO: loaded from: classes5.dex */
public class LinearCountdownView extends View implements IabElement {
    public final Paint a;
    public float b;
    public float c;
    public int d;
    public int e;

    public LinearCountdownView(Context context) {
        super(context);
        this.a = new Paint(1);
        this.b = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.c = 15.0f;
        this.d = Assets.MAIN_ASSETS_COLOR;
        this.e = 0;
        a();
    }

    private void a() {
        this.c = Utils.dpToPx(getContext(), 4.0f);
    }

    public void changePercentage(float percent) {
        this.b = percent;
        postInvalidate();
    }

    public int getLineColor() {
        return this.d;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        float measuredHeight = (getMeasuredHeight() / 2.0f) + getPaddingTop();
        this.a.setStrokeWidth(this.c);
        this.a.setColor(this.e);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + width, measuredHeight, this.a);
        this.a.setColor(this.d);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + ((width * this.b) / 100.0f), measuredHeight, this.a);
    }

    @Override // io.bidmachine.iab.utils.IabElement
    public void setStyle(IabElementStyle style) {
        this.d = style.getStrokeColor().intValue();
        this.e = style.getFillColor().intValue();
        this.c = style.getStrokeWidth(getContext()).floatValue();
        setAlpha(style.getOpacity().floatValue());
        postInvalidate();
    }
}
