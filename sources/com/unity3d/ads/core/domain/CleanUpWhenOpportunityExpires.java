package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy;
import com.unity3d.ads.core.log.Logger;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: CleanUpWhenOpportunityExpires.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CleanUpWhenOpportunityExpires {
    private final CoroutineExceptionHandler coroutineExceptionHandler;
    private final CoroutineScope coroutineScope;
    private final Logger logger;
    private final PreShowWebViewStrategy preShowStrategy;

    public CleanUpWhenOpportunityExpires(CoroutineDispatcher defaultDispatcher, Logger logger, PreShowWebViewStrategy preShowStrategy) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(preShowStrategy, "preShowStrategy");
        this.logger = logger;
        this.preShowStrategy = preShowStrategy;
        CleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1 cleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1 = new CleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key, this);
        this.coroutineExceptionHandler = cleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1;
        this.coroutineScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(defaultDispatcher).plus(cleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1));
    }

    public final void invoke(AdObject adObject) {
        CoroutineScope adScope;
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        if (adObject.getAdScope() != null) {
            final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new CleanUpWhenOpportunityExpires$invoke$job$1(adObject, this, null), 3, null);
            AdPlayer adPlayer = adObject.getAdPlayer();
            if (adPlayer == null || (adScope = adPlayer.getScope()) == null) {
                adScope = adObject.getAdScope();
            }
            JobKt.getJob(adScope.getCoroutineContext()).invokeOnCompletion(new Function1() { // from class: com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CleanUpWhenOpportunityExpires.invoke$lambda$2(jobLaunch$default, (Throwable) obj);
                }
            });
            return;
        }
        throw new IllegalArgumentException("AdObject does not have an adScope.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$2(Job job, Throwable th) {
        Job.DefaultImpls.cancel$default(job, null, 1, null);
        return Unit.INSTANCE;
    }
}
