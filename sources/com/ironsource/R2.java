package com.ironsource;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.ironsource.AbstractC3773p3;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBindAdViewInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class R2 extends AbstractC3773p3<InterfaceC3847t0> implements BannerAdListener, D0 {
    public static final String t = "bannerLayout";
    public static final String u = "bannerSize";
    private final com.ironsource.mediationsdk.o r;
    private final boolean s;

    public class a extends com.ironsource.environment.thread.a {
        final /* synthetic */ View b;
        final /* synthetic */ FrameLayout.LayoutParams c;

        public a(View view, FrameLayout.LayoutParams layoutParams) {
            this.b = view;
            this.c = layoutParams;
        }

        @Override // com.ironsource.environment.thread.a
        public void a() {
            R2.this.a(this.b, this.c);
        }
    }

    public class b extends com.ironsource.environment.thread.a {
        public b() {
        }

        @Override // com.ironsource.environment.thread.a
        public void a() {
            R2.this.J();
        }
    }

    public R2(InterfaceC3932xd interfaceC3932xd, C3734n0 c3734n0, BaseAdAdapter<?, AdapterAdViewListener> baseAdAdapter, com.ironsource.mediationsdk.o oVar, C3729md c3729md, boolean z, C3939y2 c3939y2, InterfaceC3847t0 interfaceC3847t0) {
        super(interfaceC3932xd, c3734n0, baseAdAdapter, new C3537c1(c3734n0.g(), c3734n0.g().getBannerSettings(), IronSource.a.BANNER), c3939y2, interfaceC3847t0);
        this.r = oVar;
        this.g = c3729md;
        this.s = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(d());
        if (y()) {
            super.onAdOpened();
            return;
        }
        if (this.e == AbstractC3773p3.h.FAILED) {
            return;
        }
        ironLog.error(String.format("unexpected onAdOpened for %s, state - %s", k(), this.e));
        if (this.d != null) {
            this.d.j.q(String.format("unexpected onAdOpened, state - %s", this.e));
        }
    }

    @Override // com.ironsource.AbstractC3773p3
    public void G() {
        Object obj = this.c;
        if (obj instanceof AdapterBannerInterface) {
            ((AdapterBannerInterface) obj).loadAd(this.k, ContextProvider.getInstance().getCurrentActiveActivity(), this.r.getSize(), this);
        } else {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterBannerInterface"));
        }
    }

    @Override // com.ironsource.AbstractC3773p3
    public boolean O() {
        return false;
    }

    public void P() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(k());
        a(AbstractC3773p3.h.NONE);
        Object obj = this.c;
        if (obj == null) {
            ironLog.warning("mAdapter == null");
            return;
        }
        try {
            if (obj instanceof AdapterBannerInterface) {
                ((AdapterBannerInterface) obj).destroyAd(this.k);
            } else {
                ironLog.error(a("adapter not instance of AdapterBannerInterface"));
            }
        } catch (Throwable th) {
            C3813r4.d().a(th);
            String str = "destroyBanner - exception = " + th.getLocalizedMessage() + " state = " + this.e;
            IronLog.INTERNAL.error(a(str));
            E0 e0 = this.d;
            if (e0 != null) {
                e0.j.g(str);
            }
        }
        E0 e02 = this.d;
        if (e02 != null) {
            e02.f.a(r().intValue());
        }
    }

    public void Q() {
        Object obj = this.c;
        if (obj instanceof AdapterBindAdViewInterface) {
            ((AdapterBindAdViewInterface) obj).onAdViewBound(this.k);
        }
    }

    public void R() {
        Object obj = this.c;
        if (obj instanceof AdapterBindAdViewInterface) {
            ((AdapterBindAdViewInterface) obj).onAdViewWillBind(this.k);
        }
    }

    @Override // com.ironsource.AbstractC3773p3
    public AdData a(String str, Map<String, Object> map) {
        return new AdData(str, q(), a(map));
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdLeftApplication() {
        E0 e0;
        C3729md c3729md = this.g;
        if (c3729md != null && (e0 = this.d) != null) {
            e0.i.f(c3729md.c());
        }
        Listener listener = this.b;
        if (listener != 0) {
            ((InterfaceC3847t0) listener).c(this);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdLoadSuccess(View view, FrameLayout.LayoutParams layoutParams) {
        if (u().c()) {
            u().a(new a(view, layoutParams));
        } else {
            a(view, layoutParams);
        }
    }

    @Override // com.ironsource.AbstractC3773p3, com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened() {
        if (u().c()) {
            u().a(new b());
        } else {
            J();
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdScreenDismissed() {
        E0 e0;
        C3729md c3729md = this.g;
        if (c3729md != null && (e0 = this.d) != null) {
            e0.i.c(c3729md.c());
        }
        Listener listener = this.b;
        if (listener != 0) {
            ((InterfaceC3847t0) listener).b(this);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdScreenPresented() {
        E0 e0;
        C3729md c3729md = this.g;
        if (c3729md != null && (e0 = this.d) != null) {
            e0.i.h(c3729md.c());
        }
        Listener listener = this.b;
        if (listener != 0) {
            ((InterfaceC3847t0) listener).f(this);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdShowFailed(int i, String str) {
    }

    @Override // com.ironsource.AbstractC3773p3
    public boolean v() {
        return this.s;
    }

    @Override // com.ironsource.AbstractC3773p3
    public Map<String, Object> a(Map<String, Object> map) {
        Map<String, Object> mapA = super.a(map);
        C3734n0 c3734n0 = this.a;
        if (c3734n0 != null && this.r != null && TextUtils.isEmpty(c3734n0.g().getCustomNetwork())) {
            mapA.put(t, this.r);
        }
        return mapA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, FrameLayout.LayoutParams layoutParams) {
        Listener listener;
        super.onAdLoadSuccess();
        if (!y() || (listener = this.b) == 0) {
            return;
        }
        ((InterfaceC3847t0) listener).a(this, view, layoutParams);
    }

    @Override // com.ironsource.AbstractC3773p3, com.ironsource.D0
    public Map<String, Object> a(B0 b0) {
        Map<String, Object> mapA = super.a(b0);
        com.ironsource.mediationsdk.o oVar = this.r;
        if (oVar != null && !oVar.b()) {
            com.ironsource.mediationsdk.j.a(mapA, this.r.getSize());
        }
        if (this.g != null) {
            mapA.put("placement", j());
        }
        return mapA;
    }
}
