package com.ironsource;

import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;

/* JADX INFO: loaded from: classes3.dex */
public class Od extends C3830s3 {
    private static final Od d = new Od();
    private InterfaceC3858tb b = null;
    private InterfaceC3858tb c = null;

    public class a implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ AdInfo b;

        public a(boolean z, AdInfo adInfo) {
            this.a = z;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.b;
            if (interfaceC3858tb != null) {
                if (!this.a) {
                    ((InterfaceC3876ub) interfaceC3858tb).a();
                    IronLog.CALLBACK.info("onAdUnavailable()");
                    return;
                }
                ((InterfaceC3876ub) interfaceC3858tb).d(od.a(this.b));
                IronLog.CALLBACK.info("onAdAvailable() adInfo = " + Od.this.a(this.b));
            }
        }
    }

    public class b implements Runnable {
        final /* synthetic */ C3729md a;
        final /* synthetic */ AdInfo b;

        public b(C3729md c3729md, AdInfo adInfo) {
            this.a = c3729md;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.c;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.b(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdRewarded() placement = " + this.a + ", adInfo = " + Od.this.a(this.b));
            }
        }
    }

    public class c implements Runnable {
        final /* synthetic */ C3729md a;
        final /* synthetic */ AdInfo b;

        public c(C3729md c3729md, AdInfo adInfo) {
            this.a = c3729md;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.b;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.b(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdRewarded() placement = " + this.a + ", adInfo = " + Od.this.a(this.b));
            }
        }
    }

    public class d implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        public d(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.c;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.a(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + Od.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    public class e implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        public e(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.b;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.a(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + Od.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    public class f implements Runnable {
        final /* synthetic */ C3729md a;
        final /* synthetic */ AdInfo b;

        public f(C3729md c3729md, AdInfo adInfo) {
            this.a = c3729md;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.c;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.a(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdClicked() placement = " + this.a + ", adInfo = " + Od.this.a(this.b));
            }
        }
    }

    public class g implements Runnable {
        final /* synthetic */ C3729md a;
        final /* synthetic */ AdInfo b;

        public g(C3729md c3729md, AdInfo adInfo) {
            this.a = c3729md;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.b;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.a(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdClicked() placement = " + this.a + ", adInfo = " + Od.this.a(this.b));
            }
        }
    }

    public class h implements Runnable {
        final /* synthetic */ AdInfo a;

        public h(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.c;
            if (interfaceC3858tb != null) {
                ((InterfaceC3894vb) interfaceC3858tb).a(od.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    public class i implements Runnable {
        final /* synthetic */ AdInfo a;

        public i(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.b;
            if (interfaceC3858tb != null) {
                ((InterfaceC3894vb) interfaceC3858tb).a(od.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    public class j implements Runnable {
        final /* synthetic */ IronSourceError a;

        public j(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC3858tb interfaceC3858tb = Od.this.c;
            if (interfaceC3858tb != null) {
                ((InterfaceC3894vb) interfaceC3858tb).a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    public class k implements Runnable {
        final /* synthetic */ IronSourceError a;

        public k(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC3858tb interfaceC3858tb = Od.this.b;
            if (interfaceC3858tb != null) {
                ((InterfaceC3894vb) interfaceC3858tb).a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    public class l implements Runnable {
        final /* synthetic */ AdInfo a;

        public l(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.c;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.c(od.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    public class m implements Runnable {
        final /* synthetic */ AdInfo a;

        public m(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.b;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.c(od.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    public class n implements Runnable {
        final /* synthetic */ AdInfo a;

        public n(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.c;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.b(od.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    public class o implements Runnable {
        final /* synthetic */ AdInfo a;

        public o(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.b;
            if (interfaceC3858tb != null) {
                interfaceC3858tb.b(od.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    public class p implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ AdInfo b;

        public p(boolean z, AdInfo adInfo) {
            this.a = z;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3858tb interfaceC3858tb = od.c;
            if (interfaceC3858tb != null) {
                if (!this.a) {
                    ((InterfaceC3876ub) interfaceC3858tb).a();
                    IronLog.CALLBACK.info("onAdUnavailable()");
                    return;
                }
                ((InterfaceC3876ub) interfaceC3858tb).d(od.a(this.b));
                IronLog.CALLBACK.info("onAdAvailable() adInfo = " + Od.this.a(this.b));
            }
        }
    }

    private Od() {
    }

    public void b() {
    }

    public void c() {
    }

    public static Od a() {
        return d;
    }

    public void b(InterfaceC3858tb interfaceC3858tb) {
        this.c = interfaceC3858tb;
    }

    public void c(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new l(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new m(adInfo));
        }
    }

    public void d(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(adInfo));
            return;
        }
        InterfaceC3858tb interfaceC3858tb = this.b;
        if (interfaceC3858tb == null || !(interfaceC3858tb instanceof InterfaceC3894vb)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(adInfo));
    }

    public void a(InterfaceC3858tb interfaceC3858tb) {
        this.b = interfaceC3858tb;
    }

    public void b(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new n(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new o(adInfo));
        }
    }

    public void a(IronSourceError ironSourceError) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(ironSourceError));
            return;
        }
        InterfaceC3858tb interfaceC3858tb = this.b;
        if (interfaceC3858tb == null || !(interfaceC3858tb instanceof InterfaceC3894vb)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(ironSourceError));
    }

    public void b(C3729md c3729md, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(c3729md, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(c3729md, adInfo));
        }
    }

    public void a(boolean z, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new p(z, adInfo));
            return;
        }
        InterfaceC3858tb interfaceC3858tb = this.b;
        if (interfaceC3858tb == null || !(interfaceC3858tb instanceof InterfaceC3876ub)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(z, adInfo));
    }

    public void a(IronSourceError ironSourceError, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(ironSourceError, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(ironSourceError, adInfo));
        }
    }

    public void a(C3729md c3729md, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(c3729md, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(c3729md, adInfo));
        }
    }

    private void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }
}
