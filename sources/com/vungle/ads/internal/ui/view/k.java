package com.vungle.ads.internal.ui.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.vungle.ads.internal.o1;
import com.vungle.ads.internal.util.b0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class k extends LinearLayout {
    public final int a;
    public final int b;
    public final ImageView c;
    public ImageView d;
    public boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        int iA = b0.a(context, 20);
        this.a = iA;
        this.b = b0.a(context, 4);
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(iA, iA));
        this.c = imageView;
        setOrientation(0);
        setGravity(16);
    }

    public final void a(FrameLayout rootView, int i, final o1 nativeAdInternal) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(nativeAdInternal, "nativeAdInternal");
        if (getParent() != null) {
            ViewParent parent = getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this);
        }
        rootView.addView(this);
        removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, this.a);
        if (i == 0) {
            layoutParams.gravity = 8388659;
        } else if (i == 1) {
            layoutParams.gravity = 8388661;
        } else if (i == 2) {
            layoutParams.gravity = 8388691;
        } else if (i != 3) {
            layoutParams.gravity = 8388661;
        } else {
            layoutParams.gravity = 8388693;
        }
        setLayoutParams(layoutParams);
        addView(this.c);
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.vungle.ads.internal.ui.view.k$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.a(nativeAdInternal, view);
            }
        });
        nativeAdInternal.d(this.c);
        if (nativeAdInternal.u()) {
            ImageView imageView = this.d;
            if (imageView == null) {
                imageView = new ImageView(getContext());
                imageView.setAdjustViewBounds(true);
                this.d = imageView;
            }
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, this.a);
            if (i == 0 || i == 2) {
                layoutParams2.setMarginStart(this.b);
                addView(imageView, layoutParams2);
            } else {
                layoutParams2.setMarginEnd(this.b);
                addView(imageView, 0, layoutParams2);
            }
            nativeAdInternal.a(imageView);
        }
        rootView.requestLayout();
    }

    public static final void a(o1 nativeAdInternal, View view) {
        Intrinsics.checkNotNullParameter(nativeAdInternal, "$nativeAdInternal");
        nativeAdInternal.v();
    }

    public final void a() {
        if (this.e) {
            return;
        }
        this.e = true;
        removeAllViews();
        this.c.setImageDrawable(null);
        ImageView imageView = this.d;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        this.d = null;
        if (getParent() != null) {
            ViewParent parent = getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this);
        }
    }
}
