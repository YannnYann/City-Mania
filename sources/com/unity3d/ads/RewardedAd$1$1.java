package com.unity3d.ads;

import com.unity3d.ads.RewardedAd$1$1;
import com.unity3d.ads.core.data.model.AdObjectState;
import com.unity3d.ads.core.domain.SafeCallbackInvoke;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: compiled from: RewardedAd.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.RewardedAd$1$1", f = "RewardedAd.kt", l = {61}, m = "invokeSuspend")
public final class RewardedAd$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ RewardedAd this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardedAd$1$1(RewardedAd rewardedAd, Continuation<? super RewardedAd$1$1> continuation) {
        super(2, continuation);
        this.this$0 = rewardedAd;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RewardedAd$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((RewardedAd$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final MutableStateFlow<AdObjectState> state = this.this$0.adObject.getState();
            final AdObjectState adObjectState = AdObjectState.EXPIRED;
            Flow flowTake = FlowKt.take(new Flow<AdObjectState>() { // from class: com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1

                /* JADX INFO: renamed from: com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;
                    final /* synthetic */ AdObjectState receiver$inlined;

                    /* JADX INFO: renamed from: com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                    @DebugMetadata(c = "com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2", f = "RewardedAd.kt", l = {50}, m = "emit")
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        Object L$1;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, AdObjectState adObjectState) {
                        this.$this_unsafeFlow = flowCollector;
                        this.receiver$inlined = adObjectState;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                        /*
                            r4 = this;
                            boolean r0 = r6 instanceof com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r6
                            com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1 r0 = (com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.label = r1
                            goto L18
                        L13:
                            com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1 r0 = new com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1$2$1
                            r0.<init>(r6)
                        L18:
                            java.lang.Object r6 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L31
                            if (r2 != r3) goto L29
                            kotlin.ResultKt.throwOnFailure(r6)
                            goto L47
                        L29:
                            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                            r5.<init>(r6)
                            throw r5
                        L31:
                            kotlin.ResultKt.throwOnFailure(r6)
                            kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow
                            com.unity3d.ads.core.data.model.AdObjectState r2 = r4.receiver$inlined
                            boolean r2 = r2.equals(r5)
                            if (r2 == 0) goto L47
                            r0.label = r3
                            java.lang.Object r5 = r6.emit(r5, r0)
                            if (r5 != r1) goto L47
                            return r1
                        L47:
                            kotlin.Unit r5 = kotlin.Unit.INSTANCE
                            return r5
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.RewardedAd$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super AdObjectState> flowCollector, Continuation continuation) {
                    Object objCollect = state.collect(new AnonymousClass2(flowCollector, adObjectState), continuation);
                    return objCollect == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            }, 1);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0);
            this.label = 1;
            if (flowTake.collect(anonymousClass2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.RewardedAd$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: RewardedAd.kt */
    public static final class AnonymousClass2<T> implements FlowCollector {
        final /* synthetic */ RewardedAd this$0;

        public AnonymousClass2(RewardedAd rewardedAd) {
            this.this$0 = rewardedAd;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return emit((AdObjectState) obj, (Continuation<? super Unit>) continuation);
        }

        public final Object emit(AdObjectState adObjectState, Continuation<? super Unit> continuation) {
            SafeCallbackInvoke safeCallbackInvoke = this.this$0.safeCallbackInvoke;
            final RewardedAd rewardedAd = this.this$0;
            safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.RewardedAd$1$1$2$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return RewardedAd$1$1.AnonymousClass2.emit$lambda$0(rewardedAd);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit emit$lambda$0(RewardedAd rewardedAd) {
            AdExpiredListener<RewardedAd> onAdExpired = rewardedAd.getOnAdExpired();
            if (onAdExpired != null) {
                onAdExpired.onAdExpired(rewardedAd);
            }
            return Unit.INSTANCE;
        }
    }
}
