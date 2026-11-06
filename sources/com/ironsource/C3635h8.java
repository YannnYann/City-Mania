package com.ironsource;

import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;

/* JADX INFO: renamed from: com.ironsource.h8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3635h8 extends C3830s3 {
    private static final C3635h8 d = new C3635h8();
    private InterfaceC3638hb b = null;
    private InterfaceC3638hb c = null;

    /* JADX INFO: renamed from: com.ironsource.h8$a */
    public class a implements Runnable {
        final /* synthetic */ AdInfo a;

        public a(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.b;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.e(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdShowSucceeded() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$b */
    public class b implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        public b(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.c;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.a(this.a, c3635h8.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + C3635h8.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$c */
    public class c implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        public c(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.b;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.a(this.a, c3635h8.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + C3635h8.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$d */
    public class d implements Runnable {
        final /* synthetic */ AdInfo a;

        public d(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.c;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.d(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$e */
    public class e implements Runnable {
        final /* synthetic */ AdInfo a;

        public e(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.b;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.d(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$f */
    public class f implements Runnable {
        final /* synthetic */ AdInfo a;

        public f(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.c;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.a(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$g */
    public class g implements Runnable {
        final /* synthetic */ AdInfo a;

        public g(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.b;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.a(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$h */
    public class h implements Runnable {
        final /* synthetic */ IronSourceError a;

        public h(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC3638hb interfaceC3638hb = C3635h8.this.c;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$i */
    public class i implements Runnable {
        final /* synthetic */ IronSourceError a;

        public i(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC3638hb interfaceC3638hb = C3635h8.this.b;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$j */
    public class j implements Runnable {
        final /* synthetic */ AdInfo a;

        public j(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.c;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.c(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$k */
    public class k implements Runnable {
        final /* synthetic */ AdInfo a;

        public k(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.b;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.c(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$l */
    public class l implements Runnable {
        final /* synthetic */ AdInfo a;

        public l(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.c;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.b(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$m */
    public class m implements Runnable {
        final /* synthetic */ AdInfo a;

        public m(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.b;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.b(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$n */
    public class n implements Runnable {
        final /* synthetic */ AdInfo a;

        public n(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3635h8 c3635h8 = C3635h8.this;
            InterfaceC3638hb interfaceC3638hb = c3635h8.c;
            if (interfaceC3638hb != null) {
                interfaceC3638hb.e(c3635h8.a(this.a));
                IronLog.CALLBACK.info("onAdShowSucceeded() adInfo = " + C3635h8.this.a(this.a));
            }
        }
    }

    private C3635h8() {
    }

    public static synchronized C3635h8 a() {
        return d;
    }

    public synchronized void b(InterfaceC3638hb interfaceC3638hb) {
        this.c = interfaceC3638hb;
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
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(adInfo));
        }
    }

    public void e(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(adInfo));
        }
    }

    public void f(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new n(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(adInfo));
        }
    }

    public synchronized void a(InterfaceC3638hb interfaceC3638hb) {
        this.b = interfaceC3638hb;
    }

    public void b(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(adInfo));
        }
    }

    public void a(IronSourceError ironSourceError) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(ironSourceError));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(ironSourceError));
        }
    }

    public void a(IronSourceError ironSourceError, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(ironSourceError, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(ironSourceError, adInfo));
        }
    }

    private void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }
}
