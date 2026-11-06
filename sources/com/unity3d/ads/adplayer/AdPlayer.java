package com.unity3d.ads.adplayer;

import com.unity3d.ads.adplayer.model.LoadEvent;
import com.unity3d.ads.core.data.model.OfferwallShowEvent;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.services.ads.offerwall.OfferwallEvent;
import java.util.Map;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: AdPlayer.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface AdPlayer {
    public static final String AD_REFRESH_EVENT = "AD_REFRESH";
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int OFFERWALL_EVENT_QUEUE_SIZE = 5;

    Object destroy(Continuation<? super Unit> continuation);

    void dispatchShowCompleted();

    Flow<LoadEvent> getOnLoadEvent();

    Flow<OfferwallShowEvent> getOnOfferwallEvent();

    Flow<ShowEvent> getOnShowEvent();

    CoroutineScope getScope();

    WebViewContainer getWebViewContainer();

    Object onAllowedPiiChange(byte[] bArr, Continuation<? super Unit> continuation);

    Object onBroadcastEvent(String str, Continuation<? super Unit> continuation);

    Object requestShow(Map<String, ? extends Object> map, Continuation<? super Unit> continuation);

    Object sendActivityDestroyed(Continuation<? super Unit> continuation);

    Object sendFocusChange(boolean z, Continuation<? super Unit> continuation);

    Object sendMuteChange(boolean z, Continuation<? super Unit> continuation);

    Object sendOfferwallEvent(OfferwallEvent offerwallEvent, Continuation<? super Unit> continuation);

    Object sendPrivacyFsmChange(byte[] bArr, Continuation<? super Unit> continuation);

    Object sendUserConsentChange(byte[] bArr, Continuation<? super Unit> continuation);

    Object sendVisibilityChange(boolean z, Continuation<? super Unit> continuation);

    Object sendVolumeChange(double d, Continuation<? super Unit> continuation);

    void show(ShowOptions showOptions);

    /* JADX INFO: compiled from: AdPlayer.kt */
    public static final class DefaultImpls {
        public static void show(AdPlayer adPlayer, ShowOptions showOptions) {
            Intrinsics.checkNotNullParameter(showOptions, "showOptions");
            throw new NotImplementedError(null, 1, null);
        }

        public static Object destroy(AdPlayer adPlayer, Continuation<? super Unit> continuation) {
            CoroutineScopeKt.cancel$default(adPlayer.getScope(), null, 1, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: compiled from: AdPlayer.kt */
    public static final class Companion {
        public static final String AD_REFRESH_EVENT = "AD_REFRESH";
        public static final int OFFERWALL_EVENT_QUEUE_SIZE = 5;
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final MutableSharedFlow<String> broadcastEventChannel = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);

        private Companion() {
        }

        public final MutableSharedFlow<String> getBroadcastEventChannel() {
            return broadcastEventChannel;
        }
    }
}
