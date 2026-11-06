package com.unity3d.ads.core.domain.offerwall;

import com.unity3d.ads.core.data.manager.OfferwallManager;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadOfferwallAd.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LoadOfferwallAd {
    private final OfferwallManager offerwallManager;

    public LoadOfferwallAd(OfferwallManager offerwallManager) {
        Intrinsics.checkNotNullParameter(offerwallManager, "offerwallManager");
        this.offerwallManager = offerwallManager;
    }

    public final Object invoke(String str, Continuation<? super Unit> continuation) {
        Object objLoadAd = this.offerwallManager.loadAd(str, continuation);
        return objLoadAd == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objLoadAd : Unit.INSTANCE;
    }
}
