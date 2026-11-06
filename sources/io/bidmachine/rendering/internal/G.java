package io.bidmachine.rendering.internal;

import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.utils.UiUtils;
import io.bidmachine.util.SystemComponent;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class G implements C, y, w, A, z, F, E, InterfaceC4253i {
    public final io.bidmachine.rendering.internal.event.a a;
    public final List b;
    public volatile boolean c;

    public G(io.bidmachine.rendering.internal.event.a eventCallback) {
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.a = eventCallback;
        this.b = new CopyOnWriteArrayList();
        this.c = true;
    }

    @Override // io.bidmachine.rendering.internal.z
    public void a(long j, long j2, float f) {
    }

    @Override // io.bidmachine.rendering.internal.w
    public void a(Integer num) {
    }

    @Override // io.bidmachine.rendering.internal.F
    public void a(String str) {
    }

    @Override // io.bidmachine.rendering.internal.w
    public void b(Integer num) {
    }

    public void b(boolean z) {
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4253i
    public void c() {
    }

    public void destroy() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a();
        }
        this.b.clear();
    }

    @Override // io.bidmachine.rendering.internal.C
    public void f() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((a) it.next()).b();
        }
    }

    @Override // io.bidmachine.rendering.internal.C
    public void h() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a();
        }
    }

    @Override // io.bidmachine.rendering.internal.A
    public void l() {
    }

    @Override // io.bidmachine.rendering.internal.E
    public void n() {
    }

    @Override // io.bidmachine.rendering.internal.y
    public void pause() {
    }

    @Override // io.bidmachine.rendering.internal.y
    public void play() {
    }

    public io.bidmachine.rendering.internal.event.a q() {
        return this.a;
    }

    public abstract String r();

    public final class a implements s {
        public long a;
        public long b;

        public a() {
            G.this.b.add(this);
        }

        public final void a(long j) {
            this.a = j;
            this.b = System.currentTimeMillis() + j;
            b();
        }

        public final void b() {
            long j = this.a;
            if (j > 0) {
                UiUtils.onUiThread(this, j);
            } else {
                UiUtils.onUiThread(this);
            }
        }

        public final long c() {
            return Math.max(this.b - System.currentTimeMillis(), 0L);
        }

        @Override // io.bidmachine.util.SafeRunnable
        public void onRun() {
            G.this.q().l();
            G.this.b.remove(this);
        }

        public final void a() {
            this.a = c();
            UiUtils.cancelOnUiThread(this);
        }
    }

    @Override // io.bidmachine.rendering.internal.C
    public void a(long j) {
        new a().a(j);
    }

    public void a(SystemComponent systemComponent, ClickData clickData) {
        q().a(systemComponent, clickData);
    }

    public final void a(boolean z) {
        boolean z2 = this.c != z;
        this.c = z;
        if (z) {
            f();
        } else {
            h();
        }
        if (z2) {
            b(z);
        }
    }
}
