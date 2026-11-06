package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.AdSize;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: com.ironsource.i3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3648i3 implements InterfaceC3953yg {
    private final Hb a;
    private final AdSize b;

    public C3648i3(Hb hb, AdSize adSize) {
        this.a = hb;
        this.b = adSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError b() {
        return C3960z5.a.a("Load task config is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError c() {
        return C3960z5.a.l();
    }

    @Override // com.ironsource.InterfaceC3953yg
    public void a() {
        a(this.a != null, new Function0() { // from class: com.ironsource.i3$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3648i3.b();
            }
        });
        a(this.b != null, new Function0() { // from class: com.ironsource.i3$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3648i3.c();
            }
        });
    }
}
