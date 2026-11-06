package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import java.util.Collections;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class TypeRegistry {
    public static final Logger logger = Logger.getLogger(TypeRegistry.class.getName());
    public final Map<String, Descriptors.Descriptor> types;

    public static class EmptyTypeRegistryHolder {
        public static final TypeRegistry EMPTY = new TypeRegistry(Collections.EMPTY_MAP);
    }

    public static TypeRegistry getEmptyTypeRegistry() {
        return EmptyTypeRegistryHolder.EMPTY;
    }

    public Descriptors.Descriptor find(String str) {
        return this.types.get(str);
    }

    public final Descriptors.Descriptor getDescriptorForTypeUrl(String str) throws InvalidProtocolBufferException {
        return find(getTypeName(str));
    }

    public TypeRegistry(Map<String, Descriptors.Descriptor> map) {
        this.types = map;
    }

    public static String getTypeName(String str) throws InvalidProtocolBufferException {
        String[] strArrSplit = str.split("/");
        if (strArrSplit.length == 1) {
            throw new InvalidProtocolBufferException("Invalid type url found: " + str);
        }
        return strArrSplit[strArrSplit.length - 1];
    }
}
