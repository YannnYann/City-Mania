package io.bidmachine.iab.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.iab.utils.IabCloseWrapper;
import io.bidmachine.iab.utils.IabCountDownWrapper;
import io.bidmachine.iab.utils.IabElementStyle;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"ViewConstructor"})
public class CloseableLayout extends FrameLayout {
    public final c a;
    public IabCloseWrapper b;
    public IabCountDownWrapper c;
    public b d;
    public OnCloseClickListener e;
    public IabElementStyle f;
    public IabElementStyle g;

    public interface OnCloseClickListener {
        void onCloseClick();

        void onCountDownFinish();
    }

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CloseableLayout.this.e != null) {
                CloseableLayout.this.e.onCloseClick();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CloseableLayout.this.c == null) {
                return;
            }
            long j = CloseableLayout.this.a.d;
            if (CloseableLayout.this.isShown()) {
                j += 50;
                CloseableLayout.this.a.a(j);
                CloseableLayout.this.c.changePercentage((int) ((100 * j) / CloseableLayout.this.a.c), (int) Math.ceil((CloseableLayout.this.a.c - j) / 1000.0d));
            }
            if (j < CloseableLayout.this.a.c) {
                CloseableLayout.this.postDelayed(this, 50L);
                return;
            }
            CloseableLayout.this.c();
            if (CloseableLayout.this.a.b <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || CloseableLayout.this.e == null) {
                return;
            }
            CloseableLayout.this.e.onCountDownFinish();
        }

        public /* synthetic */ b(CloseableLayout closeableLayout, a aVar) {
            this();
        }
    }

    public static class c {
        public boolean a;
        public float b;
        public long c;
        public long d;
        public long e;
        public long f;

        public c() {
            this.a = false;
            this.b = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.c = 0L;
            this.d = 0L;
            this.e = 0L;
            this.f = 0L;
        }

        public long b() {
            return this.e > 0 ? System.currentTimeMillis() - this.e : this.f;
        }

        public boolean c() {
            long j = this.c;
            return j != 0 && this.d < j;
        }

        public boolean d() {
            return this.a;
        }

        public void a(boolean z, float f) {
            this.a = z;
            this.b = f;
            this.c = (long) (f * 1000.0f);
            this.d = 0L;
        }

        public void a(long j) {
            this.d = j;
        }

        public boolean a() {
            long j = this.c;
            return j == 0 || this.d >= j;
        }

        public final void a(boolean z) {
            if (this.e > 0) {
                this.f += System.currentTimeMillis() - this.e;
            }
            if (z) {
                this.e = System.currentTimeMillis();
            } else {
                this.e = 0L;
            }
        }

        public /* synthetic */ c(a aVar) {
            this();
        }
    }

    public CloseableLayout(Context context) {
        super(context);
        this.a = new c(null);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
        IabCloseWrapper iabCloseWrapper = this.b;
        if (iabCloseWrapper != null) {
            iabCloseWrapper.bringToFront();
        }
        IabCountDownWrapper iabCountDownWrapper = this.c;
        if (iabCountDownWrapper != null) {
            iabCountDownWrapper.bringToFront();
        }
    }

    public boolean canBeClosed() {
        return this.a.a();
    }

    public long getOnScreenTimeMs() {
        return this.a.b();
    }

    public boolean isVisible() {
        return this.a.d();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            b();
        } else if (this.a.c() && this.a.d()) {
            a();
        }
        this.a.a(i == 0);
    }

    public void setCloseClickListener(OnCloseClickListener closeClickListener) {
        this.e = closeClickListener;
    }

    public void setCloseStyle(IabElementStyle style) {
        this.f = style;
        IabCloseWrapper iabCloseWrapper = this.b;
        if (iabCloseWrapper == null || !iabCloseWrapper.isAttached()) {
            return;
        }
        this.b.attach(getContext(), this, style);
    }

    public void setCloseVisibility(boolean visible, float closeTimeSec) {
        if (this.a.a == visible && this.a.b == closeTimeSec) {
            return;
        }
        this.a.a(visible, closeTimeSec);
        if (visible) {
            c();
            return;
        }
        IabCloseWrapper iabCloseWrapper = this.b;
        if (iabCloseWrapper != null) {
            iabCloseWrapper.detach();
        }
        IabCountDownWrapper iabCountDownWrapper = this.c;
        if (iabCountDownWrapper != null) {
            iabCountDownWrapper.detach();
        }
        b();
    }

    public void setCountDownStyle(IabElementStyle style) {
        this.g = style;
        IabCountDownWrapper iabCountDownWrapper = this.c;
        if (iabCountDownWrapper == null || !iabCountDownWrapper.isAttached()) {
            return;
        }
        this.c.attach(getContext(), this, style);
    }

    public final void a() {
        if (isShown()) {
            b();
            b bVar = new b(this, null);
            this.d = bVar;
            postDelayed(bVar, 50L);
        }
    }

    public final void b() {
        b bVar = this.d;
        if (bVar != null) {
            removeCallbacks(bVar);
            this.d = null;
        }
    }

    public final void c() {
        if (this.a.c()) {
            IabCloseWrapper iabCloseWrapper = this.b;
            if (iabCloseWrapper != null) {
                iabCloseWrapper.detach();
            }
            if (this.c == null) {
                this.c = new IabCountDownWrapper(null);
            }
            this.c.attach(getContext(), this, this.g);
            a();
            return;
        }
        b();
        if (this.b == null) {
            this.b = new IabCloseWrapper(new a());
        }
        this.b.attach(getContext(), this, this.f);
        IabCountDownWrapper iabCountDownWrapper = this.c;
        if (iabCountDownWrapper != null) {
            iabCountDownWrapper.detach();
        }
    }
}
