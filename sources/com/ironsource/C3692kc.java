package com.ironsource;

import android.text.TextUtils;
import com.ironsource.AbstractC3792q0;
import com.ironsource.E0;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: renamed from: com.ironsource.kc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class C3692kc extends AbstractC3792q0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3692kc(C3770p0 adTools, C3710lc adUnitData, InterfaceC3728mc listener) {
        String str;
        int iB;
        super(adTools, adUnitData, listener);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3729md c3729mdG = g();
        IronLog.INTERNAL.verbose("placement = " + c3729mdG);
        if (c3729mdG == null || TextUtils.isEmpty(c3729mdG.c())) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            str = String.format("can't load native ad - %s", Arrays.copyOf(new Object[]{c3729mdG == null ? "placement is null" : "placement name is empty"}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            iB = A0.b(adUnitData.b().a());
        } else {
            str = null;
            iB = 510;
        }
        if (str != null) {
            IronLog.API.error(a(str));
            a(iB, str);
        }
    }

    @Override // com.ironsource.AbstractC3792q0
    public D a() {
        return new D() { // from class: com.ironsource.kc$$ExternalSyntheticLambda0
            @Override // com.ironsource.D
            public final A a(B b, H h) {
                return C3692kc.a(this.f$0, b, h);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final A a(C3692kc c3692kc, B adInstanceData, H adInstancePayload) {
        Intrinsics.checkNotNullParameter(adInstanceData, "adInstanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
        return new C3548cc(new T0(c3692kc.f(), E0.b.PROVIDER), adInstanceData, adInstancePayload, new AbstractC3792q0.a());
    }
}
