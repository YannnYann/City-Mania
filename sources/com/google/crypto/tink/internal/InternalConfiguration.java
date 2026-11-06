package com.google.crypto.tink.internal;

import com.google.crypto.tink.Configuration;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class InternalConfiguration extends Configuration {
    public abstract <P> P wrap(KeysetHandleInterface keysetHandle, MonitoringAnnotations annotations, Class<P> clazz) throws GeneralSecurityException;
}
