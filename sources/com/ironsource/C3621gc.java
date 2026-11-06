package com.ironsource;

import com.ironsource.M0;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.gc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3621gc extends V {
    private final String s;
    private final List<NetworkSettings> t;
    private final Wb u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C3621gc(String str, List<? extends NetworkSettings> list, Wb configs) {
        super(IronSource.a.NATIVE_AD, str, list, configs.d(), configs.b(), (int) (configs.c() / ((long) 1000)), configs.a(), configs.f(), -1, new M0(M0.a.MANUAL, configs.d().j(), configs.d().b(), -1L), new I0(-1L), configs.h(), configs.i(), configs.k(), configs.j(), false, 32768, null);
        Intrinsics.checkNotNullParameter(configs, "configs");
        this.s = str;
        this.t = list;
        this.u = configs;
    }

    public final C3621gc a(String str, List<? extends NetworkSettings> list, Wb configs) {
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new C3621gc(str, list, configs);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3621gc)) {
            return false;
        }
        C3621gc c3621gc = (C3621gc) obj;
        return Intrinsics.areEqual(this.s, c3621gc.s) && Intrinsics.areEqual(this.t, c3621gc.t) && Intrinsics.areEqual(this.u, c3621gc.u);
    }

    public int hashCode() {
        String str = this.s;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<NetworkSettings> list = this.t;
        return ((iHashCode + (list != null ? list.hashCode() : 0)) * 31) + this.u.hashCode();
    }

    @Override // com.ironsource.V
    public List<NetworkSettings> j() {
        return this.t;
    }

    @Override // com.ironsource.V
    public String o() {
        return this.s;
    }

    public final String s() {
        return this.s;
    }

    public final List<NetworkSettings> t() {
        return this.t;
    }

    public String toString() {
        return "NativeAdManagerData(userId=" + this.s + ", providerList=" + this.t + ", configs=" + this.u + ")";
    }

    public final Wb u() {
        return this.u;
    }

    public final Wb v() {
        return this.u;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ C3621gc a(C3621gc c3621gc, String str, List list, Wb wb, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3621gc.s;
        }
        if ((i & 2) != 0) {
            list = c3621gc.t;
        }
        if ((i & 4) != 0) {
            wb = c3621gc.u;
        }
        return c3621gc.a(str, list, wb);
    }
}
