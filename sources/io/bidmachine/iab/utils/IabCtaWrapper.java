package io.bidmachine.iab.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import io.bidmachine.iab.vast.view.IabTextView;

/* JADX INFO: loaded from: classes5.dex */
public class IabCtaWrapper extends IabElementWrapper<IabTextView> {
    public IabCtaWrapper(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // io.bidmachine.iab.utils.IabElementWrapper
    public IabElementStyle c(Context context, IabElementStyle iabElementStyle) {
        return Assets.DEF_CTA_STYLE;
    }

    @Override // io.bidmachine.iab.utils.IabElementWrapper
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public IabTextView b(Context context, IabElementStyle iabElementStyle) {
        return new IabTextView(context);
    }

    @Override // io.bidmachine.iab.utils.IabElementWrapper
    public void a(Context context, IabTextView iabTextView, IabElementStyle iabElementStyle) {
        super.a(context, (View) iabTextView, iabElementStyle);
        iabTextView.setText(!TextUtils.isEmpty(iabElementStyle.getContent()) ? iabElementStyle.getContent() : "Learn more");
    }
}
