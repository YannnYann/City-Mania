package com.unity3d.ads.core.domain.events;

import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import java.util.List;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: GetTransactionRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetTransactionRequest {
    Object invoke(List<TransactionEventRequestOuterClass.TransactionData> list, String str, TransactionEventRequestOuterClass.TransactionOrigin transactionOrigin, Continuation<? super TransactionEventRequestOuterClass.TransactionEventRequest> continuation);
}
