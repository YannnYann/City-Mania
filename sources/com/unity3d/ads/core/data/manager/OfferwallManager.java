package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: OfferwallManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface OfferwallManager {
    Object getVersion(Continuation<? super String> continuation);

    Object isAdReady(String str, Continuation<? super Boolean> continuation);

    Object isConnected(Continuation<? super Boolean> continuation);

    Object loadAd(String str, Continuation<? super Unit> continuation);

    Flow<OfferwallEventData> showAd(String str);
}
