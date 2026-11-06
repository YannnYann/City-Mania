package io.bidmachine.iab.vast.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.TextView;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.iab.utils.Assets;
import io.bidmachine.iab.utils.IabElement;
import io.bidmachine.iab.utils.IabElementStyle;

/* JADX INFO: loaded from: classes5.dex */
public class IabTextView extends TextView implements IabElement {
    public final RectF a;
    public GradientDrawable b;
    public Paint c;
    public boolean d;

    public IabTextView(Context context) {
        super(context);
        this.a = new RectF();
        this.d = false;
        a(context);
    }

    public void a(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.b = gradientDrawable;
        gradientDrawable.setColor(Assets.BACKGROUND_COLOR);
        this.b.setShape(0);
        setBackgroundDrawable(this.b);
        setGravity(17);
        setMaxLines(1);
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.d || this.c == null) {
            return;
        }
        float height = getHeight() / 2.0f;
        canvas.drawRoundRect(this.a, height, height, this.c);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            float size = (View.MeasureSpec.getSize(i2) - getCompoundPaddingTop()) - getCompoundPaddingRight();
            if (getTextSize() != size) {
                setTextSize(0, size);
            }
        }
        if (mode == 1073741824 && getText() != null) {
            int size2 = (View.MeasureSpec.getSize(i) - getCompoundPaddingLeft()) - getCompoundPaddingRight();
            float fMeasureText = getPaint().measureText(getText(), 0, getText().length());
            float f = size2;
            if (f < fMeasureText) {
                float textSize = (int) (getTextSize() * (f / fMeasureText));
                if (getTextSize() != textSize) {
                    setTextSize(0, textSize);
                }
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        Paint paint;
        super.onSizeChanged(i, i2, i3, i4);
        GradientDrawable gradientDrawable = this.b;
        if (gradientDrawable != null) {
            gradientDrawable.setCornerRadius(i2 / 2.0f);
        }
        if (!this.d || (paint = this.c) == null) {
            return;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        RectF rectF = this.a;
        float f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT + strokeWidth;
        rectF.set(f, f, i - strokeWidth, i2 - strokeWidth);
    }

    @Override // android.view.View
    public void setBackgroundColor(int color) {
        GradientDrawable gradientDrawable = this.b;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(color);
        }
    }

    @Override // io.bidmachine.iab.utils.IabElement
    public void setStyle(IabElementStyle style) {
        boolean zBooleanValue = style.isOutlined().booleanValue();
        this.d = zBooleanValue;
        if (zBooleanValue) {
            Paint paint = new Paint(1);
            this.c = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.c.setColor(style.getStrokeColor().intValue());
            this.c.setStrokeWidth(style.getStrokeWidth(getContext()).floatValue());
        }
        setTextColor(style.getStrokeColor().intValue());
        setBackgroundColor(style.getFillColor().intValue());
        setTextSize(0, style.getFontSize(getContext()).floatValue());
        setTypeface(Typeface.create(Typeface.DEFAULT, style.getFontStyle().intValue()));
        setAlpha(style.getOpacity().floatValue());
        setPadding(style.getPaddingLeft(getContext()).intValue(), style.getPaddingTop(getContext()).intValue(), style.getPaddingRight(getContext()).intValue(), style.getPaddingBottom(getContext()).intValue());
    }
}
