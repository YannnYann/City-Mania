package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class T implements InterfaceC3953yg {
    private final String a;
    private final InterfaceC3892v9 b;
    private final boolean c;

    public T(String adm, InterfaceC3892v9 interfaceC3892v9, boolean z) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        this.a = adm;
        this.b = interfaceC3892v9;
        this.c = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError b() {
        return C3960z5.a.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError c() {
        return C3960z5.a.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError d() {
        return C3960z5.a.n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError e() {
        return C3960z5.a.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError f() {
        return C3960z5.a.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError g() {
        return C3960z5.a.g();
    }

    @Override // com.ironsource.InterfaceC3953yg
    public void a() throws C3897ve {
        a(this.c, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return T.b();
            }
        });
        a(this.b != null, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return T.c();
            }
        });
        InterfaceC3892v9 interfaceC3892v9 = this.b;
        if (interfaceC3892v9 != null) {
            if (interfaceC3892v9.f() == EnumC3928x9.c) {
                a(this.a.length() == 0, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return T.d();
                    }
                });
            }
            if (interfaceC3892v9.f() == EnumC3928x9.d) {
                a(this.a.length() > 0, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return T.e();
                    }
                });
            }
            a(interfaceC3892v9.f() != EnumC3928x9.e, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return T.f();
                }
            });
            a(interfaceC3892v9.e().length() > 0, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return T.g();
                }
            });
        }
    }
}
