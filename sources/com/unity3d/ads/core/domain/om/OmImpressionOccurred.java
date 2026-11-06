package com.unity3d.ads.core.domain.om;

import com.unity3d.ads.core.data.model.AdObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OmImpressionOccurred.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface OmImpressionOccurred {
    Object invoke(AdObject adObject, boolean z, Continuation<? super Unit> continuation);
}
