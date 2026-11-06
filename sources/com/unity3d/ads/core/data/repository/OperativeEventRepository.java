package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: OperativeEventRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class OperativeEventRepository {
    private final MutableSharedFlow<OperativeEventRequestOuterClass.OperativeEventRequest> _operativeEvents;
    private final SharedFlow<OperativeEventRequestOuterClass.OperativeEventRequest> operativeEvents;

    public OperativeEventRepository() {
        MutableSharedFlow<OperativeEventRequestOuterClass.OperativeEventRequest> MutableSharedFlow = SharedFlowKt.MutableSharedFlow(10, 10, BufferOverflow.DROP_OLDEST);
        this._operativeEvents = MutableSharedFlow;
        this.operativeEvents = FlowKt.asSharedFlow(MutableSharedFlow);
    }

    public final SharedFlow<OperativeEventRequestOuterClass.OperativeEventRequest> getOperativeEvents() {
        return this.operativeEvents;
    }

    public final void addOperativeEvent(OperativeEventRequestOuterClass.OperativeEventRequest operativeEventRequest) {
        Intrinsics.checkNotNullParameter(operativeEventRequest, "operativeEventRequest");
        this._operativeEvents.tryEmit(operativeEventRequest);
    }
}
