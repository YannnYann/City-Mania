package io.bidmachine.iab.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public abstract class IabElementWrapper<T extends View> {
    public final View.OnClickListener a;
    public View b;
    public IabElementStyle c;
    public boolean d = false;
    public final Runnable e = new a();
    public final Animator.AnimatorListener f = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IabElementWrapper.this.d = false;
            IabElementWrapper iabElementWrapper = IabElementWrapper.this;
            View view = iabElementWrapper.b;
            if (view == null || iabElementWrapper.c == null) {
                return;
            }
            view.animate().alpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT).setDuration(400L).setListener(IabElementWrapper.this.f).withLayer();
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            animator.removeAllListeners();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            View view = IabElementWrapper.this.b;
            if (view != null) {
                view.setClickable(view.getAlpha() != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
        }
    }

    public IabElementWrapper(View.OnClickListener onClickListener) {
        this.a = onClickListener;
    }

    public void a(Context context, View view, IabElementStyle iabElementStyle) {
    }

    public void attach(Context context, ViewGroup viewGroup, IabElementStyle iabElementStyle) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        IabElementStyle iabElementStyle2;
        IabElementStyle iabElementStyleCopyWith = c(context, iabElementStyle).copyWith(iabElementStyle);
        if (!iabElementStyleCopyWith.isVisible().booleanValue()) {
            detach();
            return;
        }
        if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a(context, iabElementStyleCopyWith));
            iabElementStyleCopyWith.applyAlignment(layoutParams);
            marginLayoutParams = layoutParams;
        } else {
            if (!(viewGroup instanceof RelativeLayout)) {
                throw new IllegalArgumentException("Parent should be instance of FrameLayout or RelativeLayout");
            }
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(a(context, iabElementStyleCopyWith));
            iabElementStyleCopyWith.applyRelativeAlignment(layoutParams2);
            marginLayoutParams = layoutParams2;
        }
        iabElementStyleCopyWith.applyMargin(context, marginLayoutParams);
        View view = this.b;
        if (view == null || (iabElementStyle2 = this.c) == null || a(view, iabElementStyle2, iabElementStyleCopyWith)) {
            Utils.removeFromParent(this.b);
            View viewB = b(context, iabElementStyleCopyWith);
            this.b = viewB;
            viewGroup.addView(viewB, marginLayoutParams);
        } else {
            this.b.setLayoutParams(marginLayoutParams);
            this.b.setVisibility(0);
        }
        this.b.setAlpha(iabElementStyleCopyWith.getOpacity().floatValue());
        iabElementStyleCopyWith.applyPadding(context, this.b);
        this.b.setOnClickListener(this.a);
        this.c = iabElementStyleCopyWith;
        a(this.b, iabElementStyleCopyWith);
        a(context, this.b, iabElementStyleCopyWith);
    }

    public abstract View b(Context context, IabElementStyle iabElementStyle);

    public void bringToFront() {
        View view = this.b;
        if (view != null) {
            view.bringToFront();
        }
    }

    public abstract IabElementStyle c(Context context, IabElementStyle iabElementStyle);

    public void cancelHide() {
        this.d = false;
        View view = this.b;
        if (view == null || this.c == null) {
            return;
        }
        view.animate().cancel();
        this.b.removeCallbacks(this.e);
        this.b.setClickable(true);
        this.b.setAlpha(this.c.getOpacity().floatValue());
    }

    public void detach() {
        if (this.b != null) {
            cancelHide();
            Utils.removeFromParent(this.b);
            this.b = null;
            this.c = null;
        }
    }

    public void invalidate() {
        View view;
        if (!isAttached() || (view = this.b) == null || this.c == null) {
            return;
        }
        a(view.getContext(), this.b, this.c);
    }

    public boolean isAttached() {
        return this.b != null;
    }

    public void setVisibility(int visibility) {
        View view = this.b;
        if (view != null) {
            view.setVisibility(visibility);
        }
    }

    public void toggleHide() {
        IabElementStyle iabElementStyle;
        Float hideAfter;
        if (this.d || this.b == null || (iabElementStyle = this.c) == null || (hideAfter = iabElementStyle.getHideAfter()) == null || hideAfter.floatValue() == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        this.d = true;
        this.b.postDelayed(this.e, (long) (hideAfter.floatValue() * 1000.0f));
    }

    public void toggleShow() {
        if (this.b == null || this.c == null) {
            return;
        }
        cancelHide();
        toggleHide();
    }

    public ViewGroup.MarginLayoutParams a(Context context, IabElementStyle iabElementStyle) {
        return new ViewGroup.MarginLayoutParams(iabElementStyle.getWidth(context).intValue(), iabElementStyle.getHeight(context).intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(View view, IabElementStyle iabElementStyle) {
        if (view instanceof IabElement) {
            ((IabElement) view).setStyle(iabElementStyle);
        }
    }

    public boolean a(View view, IabElementStyle iabElementStyle, IabElementStyle iabElementStyle2) {
        return !TextUtils.equals(iabElementStyle.getStyle(), iabElementStyle2.getStyle());
    }
}
