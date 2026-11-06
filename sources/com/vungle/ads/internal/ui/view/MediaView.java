package com.vungle.ads.internal.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.o1;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.nativead.NativeVideoListener;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaView extends RelativeLayout {
    public NativeVideoListener a;
    public e b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MediaView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MediaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ MediaView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final com.vungle.ads.nativead.a getVideoControl() {
        ViewParent viewParent = this.b;
        if (viewParent instanceof com.vungle.ads.nativead.a) {
            return (com.vungle.ads.nativead.a) viewParent;
        }
        return null;
    }

    public final void a(o1 internal) throws Throwable {
        Intrinsics.checkNotNullParameter(internal, "internal");
        if (internal.r()) {
            if (this.b == null) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                m mVar = new m(context, internal);
                mVar.setNativeVideoListener(this.a);
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.NATIVE_PLAY_ASSET_TYPE);
                j2Var.a((Long) 1L);
                AnalyticsClient.a(analyticsClient, j2Var, internal.e(), 4);
                this.b = mVar;
            }
        } else if (this.b == null) {
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            e eVar = new e(context2, internal);
            AnalyticsClient analyticsClient2 = AnalyticsClient.INSTANCE;
            j2 j2Var2 = new j2(Sdk.SDKMetric.SDKMetricType.NATIVE_PLAY_ASSET_TYPE);
            j2Var2.a((Long) 2L);
            AnalyticsClient.a(analyticsClient2, j2Var2, internal.e(), 4);
            this.b = eVar;
        }
        e eVar2 = this.b;
        if (eVar2 != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            eVar2.setLayoutParams(layoutParams);
            if (!Intrinsics.areEqual(eVar2.getParent(), this)) {
                ViewGroup viewGroup = (ViewGroup) eVar2.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(eVar2);
                }
                addView(eVar2);
            }
            Context context3 = getContext();
            Intrinsics.checkNotNullExpressionValue(context3, "context");
            eVar2.a(context3);
        }
    }

    public final int getCurrentTime() {
        com.vungle.ads.nativead.a videoControl = getVideoControl();
        return (videoControl != null ? ((m) videoControl).getCurrentTime() : 0) / 1000;
    }

    public final int getDuration() {
        com.vungle.ads.nativead.a videoControl = getVideoControl();
        return (videoControl != null ? ((m) videoControl).getDuration() : 0) / 1000;
    }

    public final void setNativeVideoListener(NativeVideoListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = listener;
        e eVar = this.b;
        m mVar = eVar instanceof m ? (m) eVar : null;
        if (mVar == null) {
            return;
        }
        mVar.setNativeVideoListener(listener);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void a() {
        setOnClickListener(null);
        setOnTouchListener(null);
        removeAllViews();
        e eVar = this.b;
        if (eVar != null) {
            eVar.a();
        }
        this.b = null;
    }
}
