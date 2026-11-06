package com.google.crypto.tink.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.internal.KeysetHandleInterface;
import com.google.crypto.tink.internal.PrimitiveWrapper;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class PrimitiveRegistry {
    public final Map<PrimitiveConstructorIndex, PrimitiveConstructor<?, ?>> primitiveConstructorMap;
    public final Map<Class<?>, PrimitiveWrapper<?, ?>> primitiveWrapperMap;
    public final boolean reparseLegacyKeys;

    public static final class Builder {
        public final Map<PrimitiveConstructorIndex, PrimitiveConstructor<?, ?>> primitiveConstructorMap;
        public final Map<Class<?>, PrimitiveWrapper<?, ?>> primitiveWrapperMap;
        public boolean reparseLegacyKeys;

        public Builder() {
            this.reparseLegacyKeys = false;
            this.primitiveConstructorMap = new HashMap();
            this.primitiveWrapperMap = new HashMap();
        }

        public Builder(PrimitiveRegistry registry) {
            this.reparseLegacyKeys = false;
            this.primitiveConstructorMap = new HashMap(registry.primitiveConstructorMap);
            this.primitiveWrapperMap = new HashMap(registry.primitiveWrapperMap);
        }

        public <KeyT extends Key, PrimitiveT> Builder registerPrimitiveConstructor(PrimitiveConstructor<KeyT, PrimitiveT> primitiveConstructor) throws GeneralSecurityException {
            if (primitiveConstructor == null) {
                throw new NullPointerException("primitive constructor must be non-null");
            }
            PrimitiveConstructorIndex primitiveConstructorIndex = new PrimitiveConstructorIndex(primitiveConstructor.getKeyClass(), primitiveConstructor.getPrimitiveClass());
            if (this.primitiveConstructorMap.containsKey(primitiveConstructorIndex)) {
                PrimitiveConstructor<?, ?> primitiveConstructor2 = this.primitiveConstructorMap.get(primitiveConstructorIndex);
                if (primitiveConstructor2.equals(primitiveConstructor) && primitiveConstructor.equals(primitiveConstructor2)) {
                    return this;
                }
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: " + primitiveConstructorIndex);
            }
            this.primitiveConstructorMap.put(primitiveConstructorIndex, primitiveConstructor);
            return this;
        }

        public <InputPrimitiveT, WrapperPrimitiveT> Builder registerPrimitiveWrapper(PrimitiveWrapper<InputPrimitiveT, WrapperPrimitiveT> wrapper) throws GeneralSecurityException {
            if (wrapper == null) {
                throw new NullPointerException("wrapper must be non-null");
            }
            Class<WrapperPrimitiveT> primitiveClass = wrapper.getPrimitiveClass();
            if (this.primitiveWrapperMap.containsKey(primitiveClass)) {
                PrimitiveWrapper<?, ?> primitiveWrapper = this.primitiveWrapperMap.get(primitiveClass);
                if (primitiveWrapper.equals(wrapper) && wrapper.equals(primitiveWrapper)) {
                    return this;
                }
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type" + primitiveClass);
            }
            this.primitiveWrapperMap.put(primitiveClass, wrapper);
            return this;
        }

        public PrimitiveRegistry build() {
            return new PrimitiveRegistry(this);
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder builder(PrimitiveRegistry registry) {
        return new Builder();
    }

    public PrimitiveRegistry(Builder builder) {
        this.primitiveConstructorMap = new HashMap(builder.primitiveConstructorMap);
        this.primitiveWrapperMap = new HashMap(builder.primitiveWrapperMap);
        this.reparseLegacyKeys = builder.reparseLegacyKeys;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <KeyT extends Key, PrimitiveT> PrimitiveT getPrimitive(KeyT keyt, Class<PrimitiveT> cls) throws GeneralSecurityException {
        if (this.reparseLegacyKeys && (keyt instanceof LegacyProtoKey)) {
            return (PrimitiveT) getPrimitiveWithoutReparsing(MutableSerializationRegistry.globalInstance().parseKey(((LegacyProtoKey) keyt).getSerialization(InsecureSecretKeyAccess.get()), InsecureSecretKeyAccess.get()), cls);
        }
        return (PrimitiveT) getPrimitiveWithoutReparsing(keyt, cls);
    }

    public final <KeyT extends Key, PrimitiveT> PrimitiveT getPrimitiveWithoutReparsing(KeyT keyt, Class<PrimitiveT> cls) throws GeneralSecurityException {
        PrimitiveConstructorIndex primitiveConstructorIndex = new PrimitiveConstructorIndex(keyt.getClass(), cls);
        if (!this.primitiveConstructorMap.containsKey(primitiveConstructorIndex)) {
            throw new GeneralSecurityException("No PrimitiveConstructor for " + primitiveConstructorIndex + " available, see https://developers.google.com/tink/faq/registration_errors");
        }
        return (PrimitiveT) this.primitiveConstructorMap.get(primitiveConstructorIndex).constructPrimitive(keyt);
    }

    public final <InnerPrimitiveT, WrappedPrimitiveT> WrappedPrimitiveT wrapWithPrimitiveWrapper(KeysetHandleInterface keysetHandle, MonitoringAnnotations annotations, final PrimitiveWrapper<InnerPrimitiveT, WrappedPrimitiveT> wrapper) throws GeneralSecurityException {
        return wrapper.wrap(keysetHandle, annotations, new PrimitiveWrapper.PrimitiveFactory() { // from class: com.google.crypto.tink.internal.PrimitiveRegistry$$ExternalSyntheticLambda0
            @Override // com.google.crypto.tink.internal.PrimitiveWrapper.PrimitiveFactory
            public final Object create(KeysetHandleInterface.Entry entry) {
                return PrimitiveRegistry.$r8$lambda$20R3vVn6FrcEMutVbrQk_C9Sh_Y(this.f$0, wrapper, entry);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$20R3vVn6FrcEMutVbrQk_C9Sh_Y(PrimitiveRegistry primitiveRegistry, PrimitiveWrapper primitiveWrapper, KeysetHandleInterface.Entry entry) {
        primitiveRegistry.getClass();
        return primitiveRegistry.getPrimitive(entry.getKey(), primitiveWrapper.getInputPrimitiveClass());
    }

    public <WrappedPrimitiveT> WrappedPrimitiveT wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, Class<WrappedPrimitiveT> cls) throws GeneralSecurityException {
        if (!this.primitiveWrapperMap.containsKey(cls)) {
            throw new GeneralSecurityException("No wrapper found for " + cls);
        }
        return (WrappedPrimitiveT) wrapWithPrimitiveWrapper(keysetHandleInterface, monitoringAnnotations, this.primitiveWrapperMap.get(cls));
    }

    public static final class PrimitiveConstructorIndex {
        public final Class<?> keyClass;
        public final Class<?> primitiveClass;

        public PrimitiveConstructorIndex(Class<?> keyClass, Class<?> primitiveClass) {
            this.keyClass = keyClass;
            this.primitiveClass = primitiveClass;
        }

        public boolean equals(Object o) {
            if (!(o instanceof PrimitiveConstructorIndex)) {
                return false;
            }
            PrimitiveConstructorIndex primitiveConstructorIndex = (PrimitiveConstructorIndex) o;
            return primitiveConstructorIndex.keyClass.equals(this.keyClass) && primitiveConstructorIndex.primitiveClass.equals(this.primitiveClass);
        }

        public int hashCode() {
            return Objects.hash(this.keyClass, this.primitiveClass);
        }

        public String toString() {
            return this.keyClass.getSimpleName() + " with primitive type: " + this.primitiveClass.getSimpleName();
        }
    }
}
