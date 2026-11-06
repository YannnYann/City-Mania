package com.unity3d.ads.core.domain.om;

import com.unity3d.ads.core.data.repository.OpenMeasurementRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidOmFinishSession.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidOmFinishSession implements OmFinishSession {
    private final OpenMeasurementRepository openMeasurementRepository;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.om.AndroidOmFinishSession$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidOmFinishSession.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.om.AndroidOmFinishSession", f = "AndroidOmFinishSession.kt", l = {17}, m = "invoke")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidOmFinishSession.this.invoke(null, this);
        }
    }

    public AndroidOmFinishSession(OpenMeasurementRepository openMeasurementRepository, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(openMeasurementRepository, "openMeasurementRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.openMeasurementRepository = openMeasurementRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.om.OmFinishSession
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(com.unity3d.ads.core.data.model.AdObject r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) {
        /*
            r12 = this;
            boolean r0 = r14 instanceof com.unity3d.ads.core.domain.om.AndroidOmFinishSession.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r14
            com.unity3d.ads.core.domain.om.AndroidOmFinishSession$invoke$1 r0 = (com.unity3d.ads.core.domain.om.AndroidOmFinishSession.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.om.AndroidOmFinishSession$invoke$1 r0 = new com.unity3d.ads.core.domain.om.AndroidOmFinishSession$invoke$1
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r13 = r0.L$0
            com.unity3d.ads.core.data.model.AdObject r13 = (com.unity3d.ads.core.data.model.AdObject) r13
            kotlin.ResultKt.throwOnFailure(r14)
        L2c:
            r7 = r13
            goto L4a
        L2e:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L36:
            kotlin.ResultKt.throwOnFailure(r14)
            com.unity3d.ads.core.data.repository.OpenMeasurementRepository r14 = r12.openMeasurementRepository
            com.google.protobuf.ByteString r2 = r13.getOpportunityId()
            r0.L$0 = r13
            r0.label = r3
            java.lang.Object r14 = r14.finishSession(r2, r0)
            if (r14 != r1) goto L2c
            return r1
        L4a:
            com.unity3d.ads.core.data.model.OMResult r14 = (com.unity3d.ads.core.data.model.OMResult) r14
            boolean r13 = r14 instanceof com.unity3d.ads.core.data.model.OMResult.Success
            if (r13 == 0) goto L60
            com.unity3d.ads.core.domain.SendDiagnosticEvent r2 = r12.sendDiagnosticEvent
            r10 = 110(0x6e, float:1.54E-43)
            r11 = 0
            java.lang.String r3 = "om_session_finish_success"
            r4 = 0
            r5 = 0
            r6 = 0
            r8 = 0
            r9 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            goto L96
        L60:
            boolean r13 = r14 instanceof com.unity3d.ads.core.data.model.OMResult.Failure
            if (r13 == 0) goto L99
            com.unity3d.ads.core.domain.SendDiagnosticEvent r2 = r12.sendDiagnosticEvent
            java.util.Map r13 = kotlin.collections.MapsKt__MapsJVMKt.createMapBuilder()
            com.unity3d.ads.core.data.model.OMResult$Failure r14 = (com.unity3d.ads.core.data.model.OMResult.Failure) r14
            java.lang.String r0 = r14.getReason()
            java.lang.String r1 = "reason"
            r13.put(r1, r0)
            java.lang.String r0 = r14.getReasonDebug()
            if (r0 == 0) goto L84
            java.lang.String r0 = "reason_debug"
            java.lang.String r14 = r14.getReasonDebug()
            r13.put(r0, r14)
        L84:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            java.util.Map r5 = kotlin.collections.MapsKt__MapsJVMKt.build(r13)
            r10 = 106(0x6a, float:1.49E-43)
            r11 = 0
            java.lang.String r3 = "om_session_finish_failure"
            r4 = 0
            r6 = 0
            r8 = 0
            r9 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
        L96:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L99:
            kotlin.NoWhenBranchMatchedException r13 = new kotlin.NoWhenBranchMatchedException
            r13.<init>()
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.om.AndroidOmFinishSession.invoke(com.unity3d.ads.core.data.model.AdObject, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
