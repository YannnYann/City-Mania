package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class H {
    private final AbstractC3919x0 a;
    private final NetworkSettings b;
    private final Lazy c;

    public H(final T0 adTools, AbstractC3919x0 adUnitData, NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        this.a = adUnitData;
        this.b = providerSettings;
        this.c = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.H$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return H.a(adTools, this);
            }
        });
    }

    public final IronSource.a a() {
        return this.a.b().a();
    }

    public final BaseAdAdapter<?, ?> b() {
        return (BaseAdAdapter) this.c.getValue();
    }

    public final String c() {
        String providerName = this.b.getProviderName();
        Intrinsics.checkNotNullExpressionValue(providerName, "getProviderName(...)");
        return providerName;
    }

    public final UUID d() {
        return this.a.b().b();
    }

    public final NetworkSettings e() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseAdAdapter a(T0 t0, H h) {
        return t0.a(h.b, h.a(), h.d());
    }
}
