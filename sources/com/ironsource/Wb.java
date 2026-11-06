package com.ironsource;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Wb {
    public static final a m = new a(null);
    private static final int n = 0;
    private final boolean a;
    private R1 b;
    private int c;
    private long d;
    private boolean e;
    private final ArrayList<C3639hc> f;
    private C3639hc g;
    private int h;
    private A2 i;
    private long j;
    private boolean k;
    private boolean l;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public Wb(int i, long j, boolean z, R1 events, A2 auctionSettings, int i2, long j2, boolean z2, boolean z3, boolean z4) {
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(auctionSettings, "auctionSettings");
        this.a = z4;
        this.f = new ArrayList<>();
        this.c = i;
        this.d = j;
        this.e = z;
        this.b = events;
        this.h = i2;
        this.i = auctionSettings;
        this.j = j2;
        this.k = z2;
        this.l = z3;
    }

    public final void a(R1 r1) {
        Intrinsics.checkNotNullParameter(r1, "<set-?>");
        this.b = r1;
    }

    public final int b() {
        return this.c;
    }

    public final long c() {
        return this.d;
    }

    public final A2 d() {
        return this.i;
    }

    public final C3639hc e() {
        Iterator<C3639hc> it = this.f.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            C3639hc next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            C3639hc c3639hc = next;
            if (c3639hc.d()) {
                return c3639hc;
            }
        }
        return this.g;
    }

    public final int f() {
        return this.h;
    }

    public final R1 g() {
        return this.b;
    }

    public final long h() {
        return this.j;
    }

    public final boolean i() {
        return this.k;
    }

    public final boolean j() {
        return this.a;
    }

    public final boolean k() {
        return this.l;
    }

    public String toString() {
        return "NativeAdConfigurations{parallelLoad=" + this.c + ", bidderExclusive=" + this.e + "}";
    }

    public final void a(int i) {
        this.c = i;
    }

    public final void b(int i) {
        this.h = i;
    }

    public final void c(boolean z) {
        this.l = z;
    }

    public final void a(long j) {
        this.d = j;
    }

    public final void b(long j) {
        this.j = j;
    }

    public final boolean a() {
        return this.e;
    }

    public final void b(boolean z) {
        this.k = z;
    }

    public final void a(boolean z) {
        this.e = z;
    }

    public final void a(A2 a2) {
        Intrinsics.checkNotNullParameter(a2, "<set-?>");
        this.i = a2;
    }

    public final void a(C3639hc c3639hc) {
        if (c3639hc != null) {
            this.f.add(c3639hc);
            if (this.g == null) {
                this.g = c3639hc;
            } else if (c3639hc.b() == 0) {
                this.g = c3639hc;
            }
        }
    }

    public final C3639hc a(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Iterator<C3639hc> it = this.f.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            C3639hc next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            C3639hc c3639hc = next;
            if (Intrinsics.areEqual(c3639hc.c(), placementName)) {
                return c3639hc;
            }
        }
        return null;
    }
}
