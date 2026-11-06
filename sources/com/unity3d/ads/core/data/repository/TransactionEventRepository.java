package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: compiled from: TransactionEventRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface TransactionEventRepository {
    void addTransactionEvent(TransactionEventRequestOuterClass.TransactionEventRequest transactionEventRequest);

    SharedFlow<TransactionEventRequestOuterClass.TransactionEventRequest> getTransactionEvents();
}
