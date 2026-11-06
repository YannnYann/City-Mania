package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.InitializationState;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: AwaitInitialization.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface AwaitInitialization {
    Object invoke(long j, Continuation<? super InitializationState> continuation);

    /* JADX INFO: compiled from: AwaitInitialization.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(AwaitInitialization awaitInitialization, long j, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
            }
            if ((i & 1) != 0) {
                j = Long.MAX_VALUE;
            }
            return awaitInitialization.invoke(j, continuation);
        }
    }
}
