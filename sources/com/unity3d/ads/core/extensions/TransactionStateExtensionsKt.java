package com.unity3d.ads.core.extensions;

import gatewayprotocol.v1.TransactionEventRequestOuterClass;

/* JADX INFO: compiled from: TransactionStateExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TransactionStateExtensionsKt {
    public static final TransactionEventRequestOuterClass.TransactionState fromPurchaseState(int i) {
        if (i == 0) {
            return TransactionEventRequestOuterClass.TransactionState.TRANSACTION_STATE_PURCHASED;
        }
        if (i == 1) {
            return TransactionEventRequestOuterClass.TransactionState.TRANSACTION_STATE_CANCELED;
        }
        if (i == 2) {
            return TransactionEventRequestOuterClass.TransactionState.TRANSACTION_STATE_PENDING;
        }
        if (i == 4) {
            return TransactionEventRequestOuterClass.TransactionState.TRANSACTION_STATE_DEFERRED;
        }
        return TransactionEventRequestOuterClass.TransactionState.UNRECOGNIZED;
    }
}
