package com.ironsource;

import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
public class F2 extends C3830s3 {
    private static final F2 d = new F2();
    private Ia b = null;
    private Ia c = null;

    public class a implements Runnable {
        final /* synthetic */ AdInfo a;

        public a(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.g(f2.a(this.a));
                IronLog.CALLBACK.info("onAdLeftApplication() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    public class b implements Runnable {
        final /* synthetic */ AdInfo a;

        public b(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.d(f2.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    public class c implements Runnable {
        final /* synthetic */ AdInfo a;

        public c(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.d(f2.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    public class d implements Runnable {
        final /* synthetic */ AdInfo a;

        public d(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.e(f2.a(this.a));
                IronLog.CALLBACK.info("onAdLoaded() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    public class e implements Runnable {
        final /* synthetic */ AdInfo a;

        public e(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.e(f2.a(this.a));
                IronLog.CALLBACK.info("onAdLoaded() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    public class f implements Runnable {
        final /* synthetic */ IronSourceError a;

        public f(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            Ia ia = F2.this.c;
            if (ia != null) {
                ia.a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    public class g implements Runnable {
        final /* synthetic */ IronSourceError a;

        public g(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            Ia ia = F2.this.b;
            if (ia != null) {
                ia.a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
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
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.h(f2.a(this.a));
                IronLog.CALLBACK.info("onAdScreenPresented() adInfo = " + F2.this.a(this.a));
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
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.h(f2.a(this.a));
                IronLog.CALLBACK.info("onAdScreenPresented() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    public class j implements Runnable {
        final /* synthetic */ AdInfo a;

        public j(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.f(f2.a(this.a));
                IronLog.CALLBACK.info("onAdScreenDismissed() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    public class k implements Runnable {
        final /* synthetic */ AdInfo a;

        public k(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.f(f2.a(this.a));
                IronLog.CALLBACK.info("onAdScreenDismissed() adInfo = " + F2.this.a(this.a));
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
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.g(f2.a(this.a));
                IronLog.CALLBACK.info("onAdLeftApplication() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    private F2() {
    }

    public static F2 a() {
        return d;
    }

    public void b(Ia ia) {
        this.c = ia;
    }

    public void c(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new l(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(adInfo));
        }
    }

    public void d(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(adInfo));
        }
    }

    public void e(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(adInfo));
        }
    }

    public void f(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(adInfo));
        }
    }

    public void a(Ia ia) {
        this.b = ia;
    }

    public Ia b() {
        return this.b;
    }

    public void a(IronSourceError ironSourceError) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(ironSourceError));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(ironSourceError));
        }
    }

    public void b(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(adInfo));
        }
    }
}
