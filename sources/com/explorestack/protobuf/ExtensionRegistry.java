package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ExtensionRegistry extends ExtensionRegistryLite {
    public static final ExtensionRegistry EMPTY_REGISTRY = new ExtensionRegistry(true);
    public final Map<String, ExtensionInfo> immutableExtensionsByName;
    public final Map<DescriptorIntPair, ExtensionInfo> immutableExtensionsByNumber;
    public final Map<String, ExtensionInfo> mutableExtensionsByName;
    public final Map<DescriptorIntPair, ExtensionInfo> mutableExtensionsByNumber;

    public static final class ExtensionInfo {
        public final Message defaultInstance;
        public final Descriptors.FieldDescriptor descriptor;
    }

    public static ExtensionRegistry getEmptyRegistry() {
        return EMPTY_REGISTRY;
    }

    public ExtensionInfo findImmutableExtensionByName(String str) {
        return this.immutableExtensionsByName.get(str);
    }

    @Deprecated
    public ExtensionInfo findExtensionByNumber(Descriptors.Descriptor descriptor, int i) {
        return findImmutableExtensionByNumber(descriptor, i);
    }

    public ExtensionInfo findImmutableExtensionByNumber(Descriptors.Descriptor descriptor, int i) {
        return this.immutableExtensionsByNumber.get(new DescriptorIntPair(descriptor, i));
    }

    public ExtensionRegistry() {
        this.immutableExtensionsByName = new HashMap();
        this.mutableExtensionsByName = new HashMap();
        this.immutableExtensionsByNumber = new HashMap();
        this.mutableExtensionsByNumber = new HashMap();
    }

    public ExtensionRegistry(boolean z) {
        super(ExtensionRegistryLite.EMPTY_REGISTRY_LITE);
        Map map = Collections.EMPTY_MAP;
        this.immutableExtensionsByName = map;
        this.mutableExtensionsByName = map;
        this.immutableExtensionsByNumber = map;
        this.mutableExtensionsByNumber = map;
    }

    public static final class DescriptorIntPair {
        public final Descriptors.Descriptor descriptor;
        public final int number;

        public DescriptorIntPair(Descriptors.Descriptor descriptor, int i) {
            this.descriptor = descriptor;
            this.number = i;
        }

        public int hashCode() {
            return (this.descriptor.hashCode() * 65535) + this.number;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof DescriptorIntPair)) {
                return false;
            }
            DescriptorIntPair descriptorIntPair = (DescriptorIntPair) obj;
            return this.descriptor == descriptorIntPair.descriptor && this.number == descriptorIntPair.number;
        }
    }
}
