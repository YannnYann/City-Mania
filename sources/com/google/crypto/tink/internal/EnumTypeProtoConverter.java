package com.google.crypto.tink.internal;

import java.lang.Enum;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class EnumTypeProtoConverter<E extends Enum<E>, O> {
    public final Map<E, O> fromProtoEnumMap;
    public final Map<O, E> toProtoEnumMap;

    public EnumTypeProtoConverter(Map<E, O> fromProtoEnumMap, Map<O, E> toProtoEnumMap) {
        this.fromProtoEnumMap = fromProtoEnumMap;
        this.toProtoEnumMap = toProtoEnumMap;
    }

    public static final class Builder<E extends Enum<E>, O> {
        public Map<E, O> fromProtoEnumMap;
        public Map<O, E> toProtoEnumMap;

        public Builder() {
            this.fromProtoEnumMap = new HashMap();
            this.toProtoEnumMap = new HashMap();
        }

        public Builder<E, O> add(E protoEnum, O objectEnum) {
            this.fromProtoEnumMap.put(protoEnum, objectEnum);
            this.toProtoEnumMap.put(objectEnum, protoEnum);
            return this;
        }

        public EnumTypeProtoConverter<E, O> build() {
            return new EnumTypeProtoConverter<>(Collections.unmodifiableMap(this.fromProtoEnumMap), Collections.unmodifiableMap(this.toProtoEnumMap));
        }
    }

    public static <E extends Enum<E>, O> Builder<E, O> builder() {
        return new Builder<>();
    }

    public E toProtoEnum(O objectEnum) throws GeneralSecurityException {
        E e = this.toProtoEnumMap.get(objectEnum);
        if (e != null) {
            return e;
        }
        throw new GeneralSecurityException("Unable to convert object enum: " + objectEnum);
    }

    public O fromProtoEnum(E protoEnum) throws GeneralSecurityException {
        O o = this.fromProtoEnumMap.get(protoEnum);
        if (o != null) {
            return o;
        }
        throw new GeneralSecurityException("Unable to convert proto enum: " + protoEnum);
    }
}
