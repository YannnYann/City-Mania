package com.google.crypto.tink.internal;

import com.google.crypto.tink.internal.KeysetHandleInterface;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public interface PrimitiveWrapper<B, P> {

    public interface PrimitiveFactory<B> {
        B create(KeysetHandleInterface.Entry k) throws GeneralSecurityException;
    }

    Class<B> getInputPrimitiveClass();

    Class<P> getPrimitiveClass();

    P wrap(KeysetHandleInterface keysetHandle, MonitoringAnnotations annotations, PrimitiveFactory<B> primitiveFactory) throws GeneralSecurityException;
}
