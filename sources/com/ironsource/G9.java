package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final class G9 implements InterfaceC3953yg {
    private final Hb a;

    public G9(Hb hb) {
        this.a = hb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError b() {
        return C3960z5.a.b("Load task config is null");
    }

    @Override // com.ironsource.InterfaceC3953yg
    public void a() {
        a(this.a != null, new Function0() { // from class: com.ironsource.G9$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return G9.b();
            }
        });
    }
}
