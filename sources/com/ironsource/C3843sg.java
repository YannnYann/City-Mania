package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.UnityAds;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: com.ironsource.sg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3843sg implements InterfaceC3808qg {
    public static final C3843sg a = new C3843sg();
    private static final Lazy b = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.sg$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return C3843sg.b();
        }
    });

    private C3843sg() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String b() {
        try {
            UnityAds unityAds = UnityAds.INSTANCE;
            Object objInvoke = UnityAds.class.getMethod(C3825rg.b, null).invoke(null, null);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable th) {
            C3813r4.d().a(th);
            IronLog.INTERNAL.warning(th.getMessage());
            return null;
        }
    }

    @Override // com.ironsource.InterfaceC3808qg
    public String a() {
        return (String) b.getValue();
    }
}
