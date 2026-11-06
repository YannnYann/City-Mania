package io.bidmachine.util;

/* JADX INFO: compiled from: ResultCallback.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ResultCallback<SuccessType, ErrorType> {
    void onError(ErrorType errortype);

    void onSuccess(SuccessType successtype);
}
