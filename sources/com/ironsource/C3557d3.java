package com.ironsource;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.ironsource.C3557d3;
import com.unity3d.services.UnityAdsConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.d3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3557d3 extends FrameLayout {
    private final Bg a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3557d3(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = new a();
    }

    public final Bg getViewBinder() {
        return this.a;
    }

    /* JADX INFO: renamed from: com.ironsource.d3$a */
    public static final class a implements Bg {
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(T0 t0, long j) {
            t0.f().h().a(true, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(final T0 t0, final long j) {
            t0.a(new Runnable() { // from class: com.ironsource.d3$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3557d3.a.d(t0, j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(T0 t0, long j) {
            t0.f().h().a(j);
        }

        @Override // com.ironsource.Bg
        public void a(View view, FrameLayout.LayoutParams layoutParams, final T0 adTools) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            final View childAt = C3557d3.this.getChildAt(0);
            final long jF = Pb.w.d().h().f();
            if (jF <= 0) {
                C3557d3.this.removeView(childAt);
                C3557d3.this.addView(view, layoutParams);
                adTools.a(new Runnable() { // from class: com.ironsource.d3$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3557d3.a.a(adTools, jF);
                    }
                });
                return;
            }
            adTools.a(new Runnable() { // from class: com.ironsource.d3$a$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    C3557d3.a.b(adTools, jF);
                }
            });
            view.setAlpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            C3557d3.this.addView(view, layoutParams);
            if (childAt != null) {
                final C3557d3 c3557d3 = C3557d3.this;
                childAt.animate().alpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT).setDuration(jF).withStartAction(new Runnable() { // from class: com.ironsource.d3$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3557d3.a.a(childAt);
                    }
                }).withEndAction(new Runnable() { // from class: com.ironsource.d3$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3557d3.a.a(c3557d3, childAt, childAt);
                    }
                }).start();
            }
            view.animate().alpha(1.0f).setDuration(jF).withEndAction(new Runnable() { // from class: com.ironsource.d3$a$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    C3557d3.a.c(adTools, jF);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(T0 t0, long j) {
            t0.f().h().a(false, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(View view) {
            view.setEnabled(false);
            view.setClickable(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C3557d3 c3557d3, View view, View view2) {
            c3557d3.removeView(view);
            view2.setEnabled(true);
            view2.setClickable(true);
        }
    }
}
