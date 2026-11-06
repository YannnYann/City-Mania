package ads_mobile_sdk;

import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h41 extends FrameLayout {
    public final r31 a;
    public nr3 b;
    public Function1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h41(r31 gmaWebView) {
        super(gmaWebView.getContext());
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        this.a = gmaWebView;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        addView(gmaWebView);
        setBackgroundColor(0);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        nr3 nr3Var = this.b;
        if (nr3Var != null) {
            ((tk0) nr3Var).a(ev);
        }
        Function1 function1 = this.c;
        if (function1 != null) {
            return ((Boolean) function1.invoke(ev)).booleanValue();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        f01.b("Attempting to remove ad from its container, this should not be done unless the ad is destroyed.", null);
        super.removeView(view);
    }

    public final r31 a() {
        return this.a;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        f01.b("Attempting to remove ad from its container, this should not be done unless the ad is destroyed.", null);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        f01.b("Attempting to remove ad from its container, this should not be done unless the ad is destroyed.", null);
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i, int i2) {
        f01.b("Attempting to remove ad from its container, this should not be done unless the ad is destroyed.", null);
        super.removeViews(i, i2);
    }
}
