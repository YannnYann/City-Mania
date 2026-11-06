package io.bidmachine.iab.vast.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import io.bidmachine.iab.utils.IabElement;
import io.bidmachine.iab.utils.IabElementStyle;

/* JADX INFO: loaded from: classes5.dex */
public class TextCountdownView extends IabTextView implements IabElement {
    public String e;

    public TextCountdownView(Context context) {
        super(context);
        this.e = "%1.0fs";
    }

    @Override // io.bidmachine.iab.vast.view.IabTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        if (TextUtils.isEmpty(getText())) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void setRemaining(int remainingTimeSec) {
        setText(this.e.replace("%1.0f", String.valueOf(remainingTimeSec)));
    }

    @Override // io.bidmachine.iab.vast.view.IabTextView, io.bidmachine.iab.utils.IabElement
    public void setStyle(IabElementStyle style) {
        super.setStyle(style);
        String content = style.getContent();
        if (content != null) {
            this.e = content;
        }
    }

    public void setProgress(int percent) {
        setText(this.e.replace("%1.0f", String.valueOf(percent)));
    }
}
