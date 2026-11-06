package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.j12;
import ads_mobile_sdk.nr3;
import ads_mobile_sdk.p32;
import ads_mobile_sdk.tk0;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseAdAssetViewContainer extends FrameLayout {
    public final p32 a;
    public final FrameLayout b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdAssetViewContainer(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout frameLayoutA = a(context);
        this.b = frameLayoutA;
        this.a = new p32(this, frameLayoutA);
    }

    public final FrameLayout a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.b);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (Intrinsics.areEqual(this.b, view)) {
            return;
        }
        super.bringChildToFront(this.b);
    }

    public final AdChoicesView getAdChoicesView() {
        View viewB = this.a.b("3011");
        if (viewB instanceof AdChoicesView) {
            return (AdChoicesView) viewB;
        }
        return null;
    }

    public final View getCallToActionView() {
        return this.a.b("3002");
    }

    public final View getHeadlineView() {
        return this.a.b("3001");
    }

    public final View getIconView() {
        return this.a.b("3003");
    }

    public final View getStarRatingView() {
        return this.a.b("3009");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        j12 j12VarR;
        nr3 nr3VarO;
        Intrinsics.checkNotNullParameter(motionEvent, "ev");
        p32 p32Var = this.a;
        p32Var.getClass();
        Intrinsics.checkNotNullParameter(this, "view");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        synchronized (p32Var) {
            try {
                if (p32Var.d.get()) {
                    return false;
                }
                InternalNativeAd internalNativeAd = p32Var.i;
                if (internalNativeAd != null && (j12VarR = internalNativeAd.r()) != null) {
                    InternalNativeAd internalNativeAd2 = p32Var.i;
                    if (internalNativeAd2 != null && internalNativeAd2.y()) {
                        j12VarR.a(p32Var.b, motionEvent);
                    }
                    InternalNativeAd internalNativeAd3 = p32Var.i;
                    if (internalNativeAd3 != null && internalNativeAd3.w()) {
                        InternalNativeAd internalNativeAd4 = p32Var.i;
                        if (internalNativeAd4 != null && (nr3VarO = internalNativeAd4.o()) != null) {
                            ((tk0) nr3VarO).a(motionEvent);
                        }
                        if (j12VarR.e() != 0) {
                            WeakReference weakReference = new WeakReference(this);
                            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
                            j12VarR.f = weakReference;
                            GestureDetector gestureDetector = p32Var.g;
                            if (gestureDetector != null) {
                                gestureDetector.onTouchEvent(motionEvent);
                            }
                        }
                    }
                    return false;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.b);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (Intrinsics.areEqual(this.b, view)) {
            return;
        }
        super.removeView(view);
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        this.a.a(adChoicesView, "3011");
    }

    public final void setCallToActionView(View view) {
        this.a.a(view, "3002");
    }

    public final void setHeadlineView(View view) {
        this.a.a(view, "3001");
    }

    public final void setIconView(View view) {
        this.a.a(view, "3003");
    }

    public final void setStarRatingView(View view) {
        this.a.a(view, "3009");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdAssetViewContainer(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        FrameLayout frameLayoutA = a(context);
        this.b = frameLayoutA;
        this.a = new p32(this, frameLayoutA);
    }

    public final p32 getNativeAdViewContainer() {
        return this.a;
    }
}
