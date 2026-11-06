package io.bidmachine.internal;

import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.appodeal.adsession.AdEvents;
import com.iab.omid.library.appodeal.adsession.AdSession;
import com.iab.omid.library.appodeal.adsession.AdSessionConfiguration;
import com.iab.omid.library.appodeal.adsession.AdSessionContext;
import com.iab.omid.library.appodeal.adsession.ErrorType;
import com.iab.omid.library.appodeal.adsession.media.InteractionType;
import com.iab.omid.library.appodeal.adsession.media.MediaEvents;
import com.ironsource.Cc;
import com.ironsource.Yf;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.measurer.AdMeasurer;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public abstract class r implements AdMeasurer {
    public final boolean a;
    public final AtomicBoolean b;
    public final AtomicBoolean c;
    public AdSession d;
    public AdEvents e;
    public MediaEvents f;
    public WeakReference g;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.f != null) {
                    r.this.f.resume();
                    r.this.b("onMediaResumed");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ float a;

        public b(float f) {
            this.a = f;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.f != null) {
                    r.this.f.volumeChange(this.a);
                    r.this.b("onMediaVolumeChanged");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.f != null) {
                    r.this.f.skipped();
                    r.this.b("onMediaSkipped");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                r.this.f = null;
                r.this.e = null;
                if (r.this.d != null) {
                    r.this.d.finish();
                }
                r.this.b("destroy");
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class e implements Runnable {
        public final /* synthetic */ ErrorType a;
        public final /* synthetic */ String b;

        public e(ErrorType errorType, String str) {
            this.a = errorType;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.d != null) {
                    r.this.d.error(this.a, this.b);
                    r.this.b(Cc.a.g);
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class f implements Runnable {
        public final /* synthetic */ ViewGroup a;

        public f(ViewGroup viewGroup) {
            this.a = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.d != null) {
                    r rVar = r.this;
                    rVar.a(rVar.d, this.a);
                } else {
                    r.this.g = new WeakReference(this.a);
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.e != null) {
                    r.this.e.impressionOccurred();
                    r.this.b("onAdShown");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.f != null) {
                    r.this.f.adUserInteraction(InteractionType.CLICK);
                    r.this.b(Yf.f);
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class i implements Runnable {
        public final /* synthetic */ float a;
        public final /* synthetic */ float b;

        public i(float f, float f2) {
            this.a = f;
            this.b = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.f != null) {
                    r.this.f.start(this.a / 1000.0f, this.b);
                    r.this.b("onMediaStarted");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.f != null) {
                    r.this.f.firstQuartile();
                    r.this.b("onMediaFirstQuartile");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.f != null) {
                    r.this.f.midpoint();
                    r.this.b("onMediaMidpoint");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.f != null) {
                    r.this.f.thirdQuartile();
                    r.this.b("onMediaThirdQuartile");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                r.this.onMediaSkipped();
                if (r.this.f != null) {
                    r.this.f.complete();
                    r.this.b("onMediaCompleted");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (r.this.f != null) {
                    r.this.f.pause();
                    r.this.b("onMediaPaused");
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public r() {
        this(false);
    }

    public abstract void a(AdEvents adEvents);

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void onAdClicked() {
        Utils.onUiThread(new h());
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void onAdShown() {
        if (this.a) {
            return;
        }
        c();
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void onAdViewReady(View view) {
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void onError(IabError iabError) {
        a(iabError.getMessage());
    }

    public void onMediaCompleted() {
        Utils.onUiThread(new m());
    }

    public void onMediaFirstQuartile() {
        Utils.onUiThread(new j());
    }

    public void onMediaMidpoint() {
        Utils.onUiThread(new k());
    }

    public void onMediaPaused() {
        Utils.onUiThread(new n());
    }

    public void onMediaResumed() {
        Utils.onUiThread(new a());
    }

    public void onMediaSkipped() {
        if (this.c.compareAndSet(false, true)) {
            Utils.onUiThread(new c());
        }
    }

    public void onMediaStarted(float f2, float f3) {
        Utils.onUiThread(new i(f2, f3));
    }

    public void onMediaThirdQuartile() {
        Utils.onUiThread(new l());
    }

    public void onMediaVolumeChanged(float f2) {
        Utils.onUiThread(new b(f2));
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void registerAdContainer(ViewGroup viewGroup) {
        Utils.onUiThread(new f(viewGroup));
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void registerAdView(View view) {
    }

    public r(boolean z) {
        this.a = z;
        this.b = new AtomicBoolean(false);
        this.c = new AtomicBoolean(false);
    }

    public boolean b() {
        return this.d != null;
    }

    public void c() {
        if (this.b.compareAndSet(false, true)) {
            Utils.onUiThread(new g());
        }
    }

    public void b(String str) {
        Logger.d("AdMeasurer", str);
    }

    public void a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        try {
            AdSession adSessionCreateAdSession = AdSession.createAdSession(adSessionConfiguration, adSessionContext);
            this.d = adSessionCreateAdSession;
            this.e = AdEvents.createAdEvents(adSessionCreateAdSession);
            if (adSessionConfiguration.isNativeMediaEventsOwner()) {
                this.f = MediaEvents.createMediaEvents(this.d);
            }
            a(this.d);
            this.d.start();
            a(this.e);
            b("prepareAdSession");
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public final void a(AdSession adSession) {
        WeakReference weakReference = this.g;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (view != null) {
            a(adSession, view);
        }
        this.g = null;
    }

    public final void a(AdSession adSession, View view) {
        adSession.registerAdView(view);
        b("registerAdView");
    }

    public void a() {
        Utils.onUiThread(new d());
    }

    public void a(String str) {
        a(ErrorType.GENERIC, str);
    }

    public final void a(ErrorType errorType, String str) {
        Utils.onUiThread(new e(errorType, str));
    }
}
