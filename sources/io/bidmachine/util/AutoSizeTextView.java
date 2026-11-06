package io.bidmachine.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.widget.TextView;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: AutoSizeTextView.kt */
/* JADX INFO: loaded from: classes5.dex */
public class AutoSizeTextView extends TextView {
    public float autoTextScaleXStepDelta;
    public float autoTextSizeStepPx;
    public boolean isBalanceText;
    public boolean isStretchingTextByHeight;
    public boolean isStretchingTextByWidth;
    public final List<StaticLayout> staticLayouts;

    public AutoSizeTextView(Context context) {
        super(context);
        this.staticLayouts = new CopyOnWriteArrayList();
        this.isStretchingTextByHeight = true;
        this.isStretchingTextByWidth = true;
        this.isBalanceText = true;
        this.autoTextSizeStepPx = 2.0f;
        this.autoTextScaleXStepDelta = 0.02f;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        this.autoTextSizeStepPx = DeviceUtilsKt.getScreenDensity(context2);
        getPaint().setColor(getCurrentTextColor());
        getPaint().setAntiAlias(true);
        getPaint().setSubpixelText(true);
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        getPaint().setColor(i);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        resizeText((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingBottom()) - getPaddingTop());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            resizeText(((i3 - i) - getPaddingLeft()) - getPaddingRight(), ((i4 - i2) - getPaddingBottom()) - getPaddingTop());
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    public final void resizeText(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        CharSequence text = getText();
        Intrinsics.checkNotNullExpressionValue(text, "text");
        TextPaint paint = getPaint();
        paint.setTextScaleX(1.0f);
        Intrinsics.checkNotNullExpressionValue(paint, "paint.apply {\n          …xtScaleX = 1.0F\n        }");
        TextPaint textPaint = new TextPaint(paint);
        float f = i2;
        StaticLayout staticLayoutCreateStaticLayout = null;
        while (f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            textPaint.setTextSize(f);
            staticLayoutCreateStaticLayout = createStaticLayout(text, textPaint, i);
            if (staticLayoutCreateStaticLayout.getHeight() <= i2) {
                break;
            } else {
                f -= this.autoTextSizeStepPx;
            }
        }
        if (staticLayoutCreateStaticLayout == null) {
            return;
        }
        if (this.isStretchingTextByHeight) {
            if (staticLayoutCreateStaticLayout.getLineCount() == 0) {
                return;
            }
            float height = ((i2 - staticLayoutCreateStaticLayout.getHeight()) / r2) + f;
            if (height == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                return;
            }
            paint.setTextScaleX(f / height);
            f = height;
        }
        paint.setTextSize(f);
        this.staticLayouts.clear();
        for (String str : getOptimalTextLines(createStaticLayout(text, paint, i))) {
            TextPaint textPaint2 = new TextPaint(paint);
            if (this.isStretchingTextByWidth) {
                float textScaleX = textPaint2.getTextScaleX();
                float f2 = i;
                float fMeasureText = f2 / textPaint2.measureText(str);
                float f3 = this.autoTextScaleXStepDelta * fMeasureText;
                textPaint2.setTextScaleX(fMeasureText);
                while (textPaint2.measureText(str) > f2) {
                    fMeasureText -= f3;
                    textPaint2.setTextScaleX(fMeasureText);
                }
                textPaint2.setTextScaleX(textScaleX);
                textPaint2.setTextScaleX(fMeasureText);
            }
            this.staticLayouts.add(createStaticLayout(str, textPaint2, i));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.staticLayouts.isEmpty()) {
            super.onDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        try {
            for (StaticLayout staticLayout : this.staticLayouts) {
                float maxLineWidth = ViewUtilsKt.getMaxLineWidth(staticLayout);
                float width = maxLineWidth < ((float) staticLayout.getWidth()) ? (staticLayout.getWidth() - maxLineWidth) / 2 : 0.0f;
                canvas.translate(width, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                staticLayout.draw(canvas);
                canvas.translate(-width, staticLayout.getHeight());
            }
            canvas.restoreToCount(iSave);
        } catch (Throwable th) {
            canvas.restoreToCount(iSave);
            throw th;
        }
    }

    public final StaticLayout createStaticLayout(CharSequence charSequence, TextPaint textPaint, int i) {
        StaticLayout staticLayoutBuild = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(getLineSpacingExtra(), getLineSpacingMultiplier()).setIncludePad(false).build();
        Intrinsics.checkNotNullExpressionValue(staticLayoutBuild, "{\n            StaticLayo…       .build()\n        }");
        return staticLayoutBuild;
    }

    public final List<String> getOptimalTextLines(Layout layout) {
        if (this.isBalanceText) {
            List<String> listBalanceTextLines = balanceTextLines(layout);
            if (listBalanceTextLines.size() == layout.getLineCount()) {
                return listBalanceTextLines;
            }
        }
        return ViewUtilsKt.getTextList(layout);
    }

    public final List<String> balanceTextLines(Layout layout) {
        CharSequence text = layout.getText();
        Intrinsics.checkNotNullExpressionValue(text, "text");
        TextPaint paint = layout.getPaint();
        Intrinsics.checkNotNullExpressionValue(paint, "paint");
        return balanceTextLines(text, paint, layout.getLineCount());
    }

    public final List<String> balanceTextLines(CharSequence charSequence, Paint paint, int i) {
        if (i <= 1) {
            return CollectionsKt__CollectionsJVMKt.listOf(charSequence.toString());
        }
        List<String> listSplit$default = StringsKt__StringsKt.split$default(charSequence, new String[]{" "}, false, 0, 6, (Object) null);
        if (listSplit$default.size() <= i) {
            return listSplit$default;
        }
        float fMeasureText = ViewUtilsKt.measureText(paint, charSequence) / i;
        float fMeasureText2 = paint.measureText(" ");
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        float f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        for (String str : listSplit$default) {
            float fMeasureText3 = paint.measureText(str);
            if (sb.length() > 0 && f + fMeasureText2 + fMeasureText3 > fMeasureText && arrayList.size() < i - 1) {
                String string = sb.toString();
                Intrinsics.checkNotNullExpressionValue(string, "currentLine.toString()");
                arrayList.add(string);
                sb = new StringBuilder(str);
                f = fMeasureText3;
            } else {
                if (sb.length() > 0) {
                    sb.append(' ');
                    f += fMeasureText2;
                }
                sb.append(str);
                f += fMeasureText3;
            }
        }
        if (sb.length() > 0) {
            String string2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string2, "currentLine.toString()");
            arrayList.add(string2);
        }
        return arrayList;
    }
}
