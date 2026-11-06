package io.bidmachine.iab.utils;

import android.view.View;
import android.view.ViewTreeObserver;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public class IabTimerHelper {
    public final View a;
    public final TimerHelperCallback b;
    public boolean c = false;
    public float d = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public long e = 0;
    public long f = 0;
    public final ViewTreeObserver.OnGlobalLayoutListener g;
    public final Runnable h;

    public interface TimerHelperCallback {
        void onTimerFinish();

        void onTimerTick(float percent, long currentTimeMs, long totalTimeMs);
    }

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            IabTimerHelper.this.a();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long jMin = IabTimerHelper.this.f;
            if (IabTimerHelper.this.a.isShown()) {
                jMin = Math.min(IabTimerHelper.this.e, jMin + 16);
                IabTimerHelper.this.a(jMin);
                IabTimerHelper.this.b.onTimerTick((IabTimerHelper.this.f * 100.0f) / IabTimerHelper.this.e, IabTimerHelper.this.f, IabTimerHelper.this.e);
            }
            if (jMin >= IabTimerHelper.this.e) {
                IabTimerHelper.this.b.onTimerFinish();
            } else {
                IabTimerHelper.this.a.postDelayed(this, 16L);
            }
        }
    }

    public IabTimerHelper(View view, TimerHelperCallback callback) {
        a aVar = new a();
        this.g = aVar;
        this.h = new b();
        this.a = view;
        this.b = callback;
        view.getViewTreeObserver().addOnGlobalLayoutListener(aVar);
        a();
    }

    public void detach() {
        stop();
        this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this.g);
    }

    public boolean isTicking() {
        long j = this.e;
        return j != 0 && this.f < j;
    }

    public void setTime(float timeSec) {
        if (this.d == timeSec) {
            return;
        }
        this.d = timeSec;
        this.e = (long) (timeSec * 1000.0f);
        start();
    }

    public void start() {
        if (!this.a.isShown() || this.e == 0) {
            return;
        }
        this.a.postDelayed(this.h, 16L);
    }

    public void stop() {
        this.a.removeCallbacks(this.h);
    }

    public final void a(long j) {
        this.f = j;
    }

    public final void a() {
        boolean zIsShown = this.a.isShown();
        if (this.c == zIsShown) {
            return;
        }
        this.c = zIsShown;
        if (!zIsShown) {
            stop();
        } else if (isTicking()) {
            start();
        }
    }
}
