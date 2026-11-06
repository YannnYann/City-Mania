package com.unity3d.ads.core.domain.om;

import com.unity3d.ads.core.data.model.AdObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OmFinishSession.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface OmFinishSession {
    Object invoke(AdObject adObject, Continuation<? super Unit> continuation);
}
