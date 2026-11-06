package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;
import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class MutablePrimitiveRegistry {
    public static MutablePrimitiveRegistry globalInstance = new MutablePrimitiveRegistry();
    public final AtomicReference<PrimitiveRegistry> registry = new AtomicReference<>(PrimitiveRegistry.builder().build());

    public static MutablePrimitiveRegistry globalInstance() {
        return globalInstance;
    }

    public synchronized <KeyT extends Key, PrimitiveT> void registerPrimitiveConstructor(PrimitiveConstructor<KeyT, PrimitiveT> constructor) throws GeneralSecurityException {
        this.registry.set(PrimitiveRegistry.builder(this.registry.get()).registerPrimitiveConstructor(constructor).build());
    }

    public synchronized <InputPrimitiveT, WrapperPrimitiveT> void registerPrimitiveWrapper(PrimitiveWrapper<InputPrimitiveT, WrapperPrimitiveT> wrapper) throws GeneralSecurityException {
        this.registry.set(PrimitiveRegistry.builder(this.registry.get()).registerPrimitiveWrapper(wrapper).build());
    }

    public <KeyT extends Key, PrimitiveT> PrimitiveT getPrimitive(KeyT keyt, Class<PrimitiveT> cls) throws GeneralSecurityException {
        return (PrimitiveT) this.registry.get().getPrimitive(keyt, cls);
    }

    public <WrapperPrimitiveT> WrapperPrimitiveT wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, Class<WrapperPrimitiveT> cls) throws GeneralSecurityException {
        return (WrapperPrimitiveT) this.registry.get().wrap(keysetHandleInterface, monitoringAnnotations, cls);
    }
}
