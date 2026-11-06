package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.InitializationState;

/* JADX INFO: compiled from: SetInitializationState.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface SetInitializationState {
    void invoke(InitializationState initializationState, boolean z);

    /* JADX INFO: compiled from: SetInitializationState.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ void invoke$default(SetInitializationState setInitializationState, InitializationState initializationState, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
            }
            if ((i & 2) != 0) {
                z = false;
            }
            setInitializationState.invoke(initializationState, z);
        }
    }
}
