package com.ironsource;

import com.ironsource.InterfaceC3709lb;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.kb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3691kb {
    private final C3727mb a;

    /* JADX INFO: renamed from: com.ironsource.kb$a */
    public static final class a {
        private C3691kb a = new C3691kb(null);

        public final a a(String adUnitId) {
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            this.a.a(adUnitId);
            return this;
        }

        public final a b(String placementName) {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            this.a.b(placementName);
            return this;
        }

        public final a a(InterfaceC3763ob listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.a.a(listener);
            return this;
        }

        public final C3691kb a() {
            return this.a;
        }
    }

    public /* synthetic */ C3691kb(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String c() {
        return this.a.i();
    }

    public final String d() {
        return this.a.j();
    }

    public final InterfaceC3709lb.a e() {
        return this.a.k();
    }

    public final AdapterNativeAdViewBinder f() {
        return this.a.l();
    }

    public final String g() {
        return this.a.m();
    }

    public final void h() {
        this.a.n();
    }

    private C3691kb() {
        this.a = new C3727mb(C3962z7.a.a(), this);
    }

    public final void a() {
        this.a.f();
    }

    public final String b() {
        return this.a.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        this.a.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        this.a.b(str);
    }

    public final void a(InterfaceC3763ob interfaceC3763ob) {
        this.a.a(interfaceC3763ob);
    }
}
