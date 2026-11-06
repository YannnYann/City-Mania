package com.ironsource;

import com.ironsource.E0;
import com.ironsource.Q8;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class T0 extends C3770p0 {
    private final C3770p0 f;
    private final Q0 g;
    private InterfaceC3829s2 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T0(C3770p0 adTools, AbstractC3919x0 adUnitData, E0.b level) {
        super(adTools, level);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(level, "level");
        this.f = adTools;
        Q0 q0A = If.a(adUnitData, adUnitData.e().c());
        Intrinsics.checkNotNullExpressionValue(q0A, "getAdUnitPerformance(...)");
        this.g = q0A;
    }

    public final void a(InterfaceC3829s2 interfaceC3829s2) {
        this.h = interfaceC3829s2;
    }

    public final String e(String serverData) {
        Intrinsics.checkNotNullParameter(serverData, "serverData");
        String strC = com.ironsource.mediationsdk.d.b().c(serverData);
        Intrinsics.checkNotNullExpressionValue(strC, "getDynamicDemandSourceIdFromServerData(...)");
        return strC;
    }

    public final Q0 h() {
        return this.g;
    }

    public final InterfaceC3829s2 i() {
        return this.h;
    }

    public final String j() {
        return com.ironsource.mediationsdk.p.g().f();
    }

    public final C3655ia k() {
        return If.a();
    }

    public final Q8.a l() {
        return Pb.w.a().i();
    }

    public final void a(com.ironsource.environment.thread.a task) {
        Intrinsics.checkNotNullParameter(task, "task");
        Jf.a.b(task);
    }

    public final BaseAdAdapter<?, ?> a(B instanceData) {
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        return com.ironsource.mediationsdk.c.c().a(instanceData.v(), instanceData.i(), instanceData.j().b().b());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T0(T0 adUnitTools, E0.b level) {
        super(adUnitTools, level);
        Intrinsics.checkNotNullParameter(adUnitTools, "adUnitTools");
        Intrinsics.checkNotNullParameter(level, "level");
        this.f = adUnitTools.f;
        this.g = adUnitTools.g;
        this.h = adUnitTools.h;
    }

    public final BaseAdAdapter<?, ?> a(NetworkSettings providerSettings, IronSource.a adFormat, UUID adId) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adId, "adId");
        return com.ironsource.mediationsdk.c.c().a(providerSettings, adFormat, adId);
    }

    public final String a(long j, String instanceName) {
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        String strA = IronSourceUtils.a(j, instanceName);
        Intrinsics.checkNotNullExpressionValue(strA, "getTransId(...)");
        return strA;
    }
}
