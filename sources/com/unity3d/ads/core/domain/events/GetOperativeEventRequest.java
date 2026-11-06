package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.GetByteStringId;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetOperativeEventRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class GetOperativeEventRequest {
    private final CampaignRepository campaignRepository;
    private final DeviceInfoRepository deviceInfoRepository;
    private final GetByteStringId generateByteStringId;
    private final SessionRepository sessionRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.events.GetOperativeEventRequest$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: GetOperativeEventRequest.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.events.GetOperativeEventRequest", f = "GetOperativeEventRequest.kt", l = {37}, m = "invoke")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GetOperativeEventRequest.this.invoke(null, null, null, null, null, null, this);
        }
    }

    public GetOperativeEventRequest(GetByteStringId generateByteStringId, DeviceInfoRepository deviceInfoRepository, SessionRepository sessionRepository, CampaignRepository campaignRepository) {
        Intrinsics.checkNotNullParameter(generateByteStringId, "generateByteStringId");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        this.generateByteStringId = generateByteStringId;
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
        this.campaignRepository = campaignRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invoke(gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventType r6, com.google.protobuf.ByteString r7, com.google.protobuf.ByteString r8, com.google.protobuf.ByteString r9, java.lang.String r10, gatewayprotocol.v1.AdFormatOuterClass.AdFormat r11, kotlin.coroutines.Continuation<? super gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventRequest> r12) {
        /*
            r5 = this;
            boolean r0 = r12 instanceof com.unity3d.ads.core.domain.events.GetOperativeEventRequest.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r12
            com.unity3d.ads.core.domain.events.GetOperativeEventRequest$invoke$1 r0 = (com.unity3d.ads.core.domain.events.GetOperativeEventRequest.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.events.GetOperativeEventRequest$invoke$1 r0 = new com.unity3d.ads.core.domain.events.GetOperativeEventRequest$invoke$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            java.lang.Object r6 = r0.L$3
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl r6 = (gatewayprotocol.v1.OperativeEventRequestKt.Dsl) r6
            java.lang.Object r7 = r0.L$2
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl r7 = (gatewayprotocol.v1.OperativeEventRequestKt.Dsl) r7
            java.lang.Object r8 = r0.L$1
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl r8 = (gatewayprotocol.v1.OperativeEventRequestKt.Dsl) r8
            java.lang.Object r9 = r0.L$0
            r11 = r9
            gatewayprotocol.v1.AdFormatOuterClass$AdFormat r11 = (gatewayprotocol.v1.AdFormatOuterClass.AdFormat) r11
            kotlin.ResultKt.throwOnFailure(r12)
            goto L8e
        L3a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L42:
            kotlin.ResultKt.throwOnFailure(r12)
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl$Companion r12 = gatewayprotocol.v1.OperativeEventRequestKt.Dsl.Companion
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventRequest$Builder r2 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventRequest.newBuilder()
            java.lang.String r4 = "newBuilder(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl r12 = r12._create(r2)
            com.unity3d.ads.core.domain.GetByteStringId r2 = r5.generateByteStringId
            com.google.protobuf.ByteString r2 = r2.invoke()
            r12.setEventId(r2)
            r12.setEventType(r6)
            r12.setImpressionOpportunityId(r8)
            r12.setTrackingToken(r7)
            r12.setAdditionalData(r9)
            if (r10 == 0) goto L6e
            r12.setSid(r10)
        L6e:
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r6 = r5.deviceInfoRepository
            gatewayprotocol.v1.DynamicDeviceInfoOuterClass$DynamicDeviceInfo r6 = r6.getDynamicDeviceInfo(r3)
            r12.setDynamicDeviceInfo(r6)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r6 = r5.deviceInfoRepository
            r0.L$0 = r11
            r0.L$1 = r12
            r0.L$2 = r12
            r0.L$3 = r12
            r0.label = r3
            java.lang.Object r6 = r6.staticDeviceInfo(r0)
            if (r6 != r1) goto L8a
            return r1
        L8a:
            r7 = r12
            r8 = r7
            r12 = r6
            r6 = r8
        L8e:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r12 = (gatewayprotocol.v1.StaticDeviceInfoOuterClass.StaticDeviceInfo) r12
            r6.setStaticDeviceInfo(r12)
            com.unity3d.ads.core.data.repository.SessionRepository r6 = r5.sessionRepository
            gatewayprotocol.v1.SessionCountersOuterClass$SessionCounters r6 = r6.getSessionCounters()
            r7.setSessionCounters(r6)
            com.unity3d.ads.core.data.repository.CampaignRepository r6 = r5.campaignRepository
            gatewayprotocol.v1.CampaignStateOuterClass$CampaignState r6 = r6.getCampaignState()
            r7.setCampaignState(r6)
            if (r11 == 0) goto Laa
            r7.setAdFormat(r11)
        Laa:
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventRequest r6 = r8._build()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.GetOperativeEventRequest.invoke(gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventType, com.google.protobuf.ByteString, com.google.protobuf.ByteString, com.google.protobuf.ByteString, java.lang.String, gatewayprotocol.v1.AdFormatOuterClass$AdFormat, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
