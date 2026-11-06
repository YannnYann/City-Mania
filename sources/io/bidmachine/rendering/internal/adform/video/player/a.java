package io.bidmachine.rendering.internal.adform.video.player;

import android.content.Context;
import android.net.Uri;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.internal.s;
import io.bidmachine.rendering.utils.UiUtils;
import io.bidmachine.util.AudioFocusManager;
import io.bidmachine.util.Error;
import io.bidmachine.util.ErrorKt;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a implements io.bidmachine.rendering.internal.adform.video.player.b {
    public static final C1171a m = new C1171a(null);
    public final b a;
    public final AudioFocusManager b;
    public final AtomicBoolean c;
    public final AtomicBoolean d;
    public final AtomicBoolean e;
    public final AtomicBoolean f;
    public final AtomicLong g;
    public d h;
    public volatile boolean i;
    public Uri j;
    public long k;
    public long l;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.video.player.a$a, reason: collision with other inner class name */
    public static final class C1171a {
        public /* synthetic */ C1171a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C1171a() {
        }
    }

    public final class b implements s {
        public final long a;
        public final AtomicBoolean b = new AtomicBoolean(false);
        public final AtomicInteger c = new AtomicInteger(0);

        public b(long j) {
            this.a = j;
        }

        public final void a() {
            Long lM = a.this.m();
            if (lM != null) {
                long jLongValue = lM.longValue();
                long jD = a.this.d();
                if (jD <= 0) {
                    return;
                }
                float f = (jLongValue * 100.0f) / jD;
                int i = this.c.get();
                if (f > (i * 25.0f) - 1) {
                    if (i == 0) {
                        a.this.L();
                    } else if (i == 1) {
                        a.this.J();
                    } else if (i == 2) {
                        a.this.K();
                    } else if (i == 3) {
                        a.this.M();
                    } else if (i == 4) {
                        a.this.I();
                    }
                    this.c.incrementAndGet();
                }
            }
        }

        public final void b() {
            this.c.set(0);
        }

        public final void c() {
            d();
            this.b.set(true);
            UiUtils.onUiThread(this);
        }

        public final void d() {
            this.b.set(false);
            UiUtils.cancelOnUiThread(this);
        }

        @Override // io.bidmachine.util.SafeRunnable
        public void onRun() {
            if (this.b.get()) {
                if (a.this.C()) {
                    a();
                }
                a aVar = a.this;
                aVar.b(aVar.m());
                UiUtils.onUiThread(this, this.a);
            }
        }
    }

    public a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = new b(16L);
        this.b = new AudioFocusManager(context);
        this.c = new AtomicBoolean(false);
        this.d = new AtomicBoolean(false);
        this.e = new AtomicBoolean(false);
        this.f = new AtomicBoolean(false);
        this.g = new AtomicLong(-1L);
        this.k = -1L;
    }

    public void A() {
        i();
    }

    public void B() {
        j();
    }

    public boolean C() {
        try {
            return w();
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean D() {
        try {
            return x();
        } catch (Exception unused) {
            return false;
        }
    }

    public void E() {
        d dVarP;
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.c(this);
    }

    public void F() {
        d dVarP;
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.d(this);
    }

    public void G() {
        d dVarP;
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.b(this);
    }

    public void H() {
        d dVarP;
        if (this.c.compareAndSet(false, true) && (dVarP = p()) != null) {
            dVarP.f(this);
        }
    }

    public void I() {
        if (this.f.compareAndSet(false, true)) {
            this.b.release();
            d dVarP = p();
            if (dVarP != null) {
                dVarP.i(this);
            }
        }
    }

    public void J() {
        d dVarP;
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.a(this);
    }

    public void K() {
        d dVarP;
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.h(this);
    }

    public void L() {
        d dVarP;
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.g(this);
    }

    public void M() {
        d dVarP;
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.e(this);
    }

    public void N() {
        if (this.f.get()) {
            return;
        }
        this.a.c();
    }

    public final void O() {
        try {
            this.k = u();
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public abstract long a();

    public abstract void a(float f);

    public abstract void a(long j);

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public void a(d dVar) {
        this.h = dVar;
    }

    public abstract long b();

    public abstract void b(Uri uri);

    @Override // io.bidmachine.rendering.internal.w
    public void b(Integer num) {
        this.b.release();
        e(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public abstract float c();

    public void c(long j) {
        try {
            b(j);
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public long d() {
        return this.k;
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public void destroy() {
        this.h = null;
        this.b.release();
        k();
    }

    public void e(float f) {
        try {
            c(f);
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public abstract boolean e();

    public void f(float f) {
        boolean z = f == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (this.d.compareAndSet(!z, z)) {
            a(z);
        }
    }

    public abstract boolean f();

    public abstract void g();

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public float getVolume() {
        try {
            return v();
        } catch (Exception unused) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
    }

    public abstract void h();

    public abstract void i();

    public abstract void j();

    public void k() {
        this.a.d();
    }

    @Override // io.bidmachine.rendering.internal.A
    public void l() {
        try {
            this.f.set(false);
            this.a.b();
            a((Long) 0L);
        } catch (Exception e) {
            b(e);
        }
    }

    public Long m() {
        try {
            return Long.valueOf(t());
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // io.bidmachine.rendering.internal.E
    public void n() {
        if (!this.i || this.f.get()) {
            return;
        }
        pause();
        c(d());
        F();
    }

    public final d p() {
        return this.h;
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public void pause() {
        try {
            this.e.set(false);
            y();
            this.l = t();
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public void play() {
        try {
            this.i = true;
            a(this.f.get() ? Long.valueOf(d()) : null);
        } catch (Exception e) {
            b(e);
        }
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public void prepare() {
        try {
            A();
        } catch (Exception e) {
            c(e);
        }
    }

    public void q() {
        this.b.pause();
        E();
        k();
    }

    public void r() {
        this.b.resume();
        G();
        N();
    }

    public void s() {
        O();
        if (this.e.compareAndSet(true, false)) {
            a(true, Long.valueOf(this.l));
        }
        H();
    }

    public long t() {
        return a();
    }

    public long u() {
        return b();
    }

    public float v() {
        return c();
    }

    public boolean w() {
        return e();
    }

    public boolean x() {
        return f();
    }

    public void y() {
        g();
    }

    public void z() {
        h();
    }

    @Override // io.bidmachine.rendering.internal.adform.video.player.b
    public void a(Uri videoUri) {
        Intrinsics.checkNotNullParameter(videoUri, "videoUri");
        try {
            c(videoUri);
            this.j = videoUri;
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public void d(float f) {
        d dVarP;
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.a(this, f);
    }

    public void b(long j) {
        a(j);
    }

    public void c(Uri videoUri) {
        Intrinsics.checkNotNullParameter(videoUri, "videoUri");
        b(videoUri);
    }

    public void b(float f) {
        f(f);
        d(f);
    }

    public void c(float f) {
        a(f);
    }

    @Override // io.bidmachine.rendering.internal.w
    public void a(Integer num) {
        this.b.request();
        e(1.0f);
    }

    public void c(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        c(ErrorKt.toError(throwable));
    }

    public void b(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        b(ErrorKt.toError(throwable));
    }

    public void c(Error error) {
        d dVarP;
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.b(this, error);
    }

    public void a(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        a(ErrorKt.toError(throwable));
    }

    public void b(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.f.get()) {
            return;
        }
        d dVarP = p();
        if (dVarP != null) {
            dVarP.a(this, error);
        }
        I();
    }

    public void a(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.i) {
            b(error);
        } else {
            c(error);
        }
    }

    public void a(boolean z) {
        d dVarP;
        if (this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.a(this, z);
    }

    public void b(Long l) {
        d dVarP;
        if (l == null || this.g.getAndSet(l.longValue()) == l.longValue() || this.f.get() || (dVarP = p()) == null) {
            return;
        }
        dVarP.a((io.bidmachine.rendering.internal.adform.video.player.b) this, l.longValue());
    }

    public final void a(Long l) {
        this.e.set(true);
        a(D(), l);
    }

    public final void a(boolean z, Long l) {
        if (l != null) {
            try {
                this.l = l.longValue();
            } catch (Exception e) {
                a(e);
                return;
            }
        }
        if (z) {
            if (l != null) {
                c(l.longValue());
            }
            z();
        } else {
            B();
            Uri uri = this.j;
            if (uri != null) {
                c(uri);
            }
            A();
        }
    }
}
