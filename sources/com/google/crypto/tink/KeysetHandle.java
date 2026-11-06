package com.google.crypto.tink;

import com.google.crypto.tink.KeysetHandle;
import com.google.crypto.tink.config.GlobalTinkFlags;
import com.google.crypto.tink.internal.InternalConfiguration;
import com.google.crypto.tink.internal.KeysetHandleInterface;
import com.google.crypto.tink.internal.LegacyProtoKey;
import com.google.crypto.tink.internal.MonitoringAnnotations;
import com.google.crypto.tink.internal.MutableKeyCreationRegistry;
import com.google.crypto.tink.internal.MutableMonitoringRegistry;
import com.google.crypto.tink.internal.MutableSerializationRegistry;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.internal.TinkBugException;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KeyStatusType;
import com.google.crypto.tink.proto.Keyset;
import com.google.crypto.tink.proto.KeysetInfo;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class KeysetHandle implements KeysetHandleInterface {
    public final MonitoringAnnotations annotations;
    public final List<Entry> entries;
    public final KeysetHandle unmonitoredHandle;

    public /* synthetic */ KeysetHandle(List list, MonitoringAnnotations monitoringAnnotations, AnonymousClass1 anonymousClass1) throws GeneralSecurityException {
        this(list, monitoringAnnotations);
    }

    public static final class Builder {
        public final List<Entry> entries = new ArrayList();
        public GeneralSecurityException errorToThrow = null;
        public MonitoringAnnotations annotations = MonitoringAnnotations.EMPTY;
        public boolean buildCalled = false;

        public static class KeyIdStrategy {
            public static final KeyIdStrategy RANDOM_ID = new KeyIdStrategy();
            public final int fixedId = 0;

            public static KeyIdStrategy randomId() {
                return RANDOM_ID;
            }

            public final int getFixedId() {
                return this.fixedId;
            }
        }

        public static final class Entry {
            public Builder builder;
            public boolean isPrimary;
            public final Key key;
            public KeyStatus keyStatus;
            public final Parameters parameters;
            public KeyIdStrategy strategy;

            public /* synthetic */ Entry(Parameters parameters, AnonymousClass1 anonymousClass1) {
                this(parameters);
            }

            public Entry(Parameters parameters) {
                this.keyStatus = KeyStatus.ENABLED;
                this.strategy = null;
                this.builder = null;
                this.key = null;
                this.parameters = parameters;
            }

            public Entry makePrimary() {
                Builder builder = this.builder;
                if (builder != null) {
                    builder.clearPrimary();
                }
                this.isPrimary = true;
                return this;
            }

            public Entry withRandomId() {
                this.strategy = KeyIdStrategy.randomId();
                return this;
            }
        }

        public final void clearPrimary() {
            Iterator<Entry> it = this.entries.iterator();
            while (it.hasNext()) {
                it.next().isPrimary = false;
            }
        }

        public Builder addEntry(Entry entry) {
            if (entry.builder == null) {
                if (entry.isPrimary) {
                    clearPrimary();
                }
                entry.builder = this;
                this.entries.add(entry);
                return this;
            }
            throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
        }

        public static void checkIdAssignments(List<Entry> entries) throws GeneralSecurityException {
            for (int i = 0; i < entries.size() - 1; i++) {
                if (entries.get(i).strategy == KeyIdStrategy.RANDOM_ID && entries.get(i + 1).strategy != KeyIdStrategy.RANDOM_ID) {
                    throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                }
            }
        }

        public static int randomIdNotInSet(Set<Integer> ids) {
            int iRandKeyId = 0;
            while (true) {
                if (iRandKeyId != 0 && !ids.contains(Integer.valueOf(iRandKeyId))) {
                    return iRandKeyId;
                }
                iRandKeyId = com.google.crypto.tink.internal.Util.randKeyId();
            }
        }

        public static int getNextIdFromBuilderEntry(Entry builderEntry, Set<Integer> idsSoFar) throws GeneralSecurityException {
            if (builderEntry.strategy != null) {
                if (builderEntry.strategy != KeyIdStrategy.RANDOM_ID) {
                    return builderEntry.strategy.getFixedId();
                }
                return randomIdNotInSet(idsSoFar);
            }
            throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
        }

        public KeysetHandle build() throws GeneralSecurityException {
            Entry entry;
            if (this.errorToThrow != null) {
                throw new GeneralSecurityException("Cannot build keyset due to error in original", this.errorToThrow);
            }
            if (this.buildCalled) {
                throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
            }
            this.buildCalled = true;
            ArrayList arrayList = new ArrayList(this.entries.size());
            checkIdAssignments(this.entries);
            HashSet hashSet = new HashSet();
            AnonymousClass1 anonymousClass1 = null;
            Integer numValueOf = null;
            for (Entry entry2 : this.entries) {
                if (entry2.keyStatus == null) {
                    throw new GeneralSecurityException("Key Status not set.");
                }
                int nextIdFromBuilderEntry = getNextIdFromBuilderEntry(entry2, hashSet);
                if (hashSet.contains(Integer.valueOf(nextIdFromBuilderEntry))) {
                    throw new GeneralSecurityException("Id " + nextIdFromBuilderEntry + " is used twice in the keyset");
                }
                hashSet.add(Integer.valueOf(nextIdFromBuilderEntry));
                if (entry2.key != null) {
                    KeysetHandle.validateKeyId(entry2.key, nextIdFromBuilderEntry);
                    entry = new Entry(entry2.key, KeysetHandle.serializeStatus(entry2.keyStatus), nextIdFromBuilderEntry, entry2.isPrimary, false, Entry.NO_LOGGING, null);
                } else {
                    entry = new Entry(MutableKeyCreationRegistry.globalInstance().createKey(entry2.parameters, entry2.parameters.hasIdRequirement() ? Integer.valueOf(nextIdFromBuilderEntry) : null), KeysetHandle.serializeStatus(entry2.keyStatus), nextIdFromBuilderEntry, entry2.isPrimary, false, Entry.NO_LOGGING, null);
                }
                if (entry2.isPrimary) {
                    if (numValueOf != null) {
                        throw new GeneralSecurityException("Two primaries were set");
                    }
                    numValueOf = Integer.valueOf(nextIdFromBuilderEntry);
                    if (entry2.keyStatus != KeyStatus.ENABLED) {
                        throw new GeneralSecurityException("Primary key is not enabled");
                    }
                }
                arrayList.add(entry);
            }
            if (numValueOf != null) {
                return KeysetHandle.addMonitoringIfNeeded(new KeysetHandle(arrayList, this.annotations, anonymousClass1));
            }
            throw new GeneralSecurityException("No primary was set");
        }
    }

    public static final class Entry implements KeysetHandleInterface.Entry {
        public static final EntryConsumer NO_LOGGING = new EntryConsumer() { // from class: com.google.crypto.tink.KeysetHandle$Entry$$ExternalSyntheticLambda0
            @Override // com.google.crypto.tink.KeysetHandle.Entry.EntryConsumer
            public final void accept(KeysetHandle.Entry entry) {
                KeysetHandle.Entry.$r8$lambda$fqJLUCS8wTacREp7yRjjxlrq1p8(entry);
            }
        };
        public final int id;
        public final boolean isPrimary;
        public final Key key;
        public final EntryConsumer keyExportLogger;
        public final boolean keyParsingFailed;
        public final KeyStatus keyStatus;
        public final KeyStatusType keyStatusType;

        public interface EntryConsumer {
            void accept(Entry entry);
        }

        public static /* synthetic */ void $r8$lambda$fqJLUCS8wTacREp7yRjjxlrq1p8(Entry entry) {
        }

        public /* synthetic */ Entry(Key key, KeyStatusType keyStatusType, int i, boolean z, boolean z2, EntryConsumer entryConsumer, AnonymousClass1 anonymousClass1) {
            this(key, keyStatusType, i, z, z2, entryConsumer);
        }

        public Entry(Key key, KeyStatusType keyStatusType, int id, boolean isPrimary, boolean keyParsingFailed, EntryConsumer keyExportLogger) {
            this.key = key;
            this.keyStatusType = keyStatusType;
            this.keyStatus = KeysetHandle.parseStatusWithDisabledFallback(keyStatusType);
            this.id = id;
            this.isPrimary = isPrimary;
            this.keyParsingFailed = keyParsingFailed;
            this.keyExportLogger = keyExportLogger;
        }

        @Override // com.google.crypto.tink.internal.KeysetHandleInterface.Entry
        public Key getKey() {
            this.keyExportLogger.accept(this);
            return this.key;
        }

        @Override // com.google.crypto.tink.internal.KeysetHandleInterface.Entry
        public KeyStatus getStatus() {
            return this.keyStatus;
        }

        @Override // com.google.crypto.tink.internal.KeysetHandleInterface.Entry
        public int getId() {
            return this.id;
        }

        public boolean isPrimary() {
            return this.isPrimary;
        }
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.KeysetHandle$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$crypto$tink$proto$KeyStatusType;

        static {
            int[] iArr = new int[KeyStatusType.values().length];
            $SwitchMap$com$google$crypto$tink$proto$KeyStatusType = iArr;
            try {
                iArr[KeyStatusType.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$KeyStatusType[KeyStatusType.DESTROYED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$KeyStatusType[KeyStatusType.DISABLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static KeyStatus parseStatusWithDisabledFallback(KeyStatusType in) {
        int i = AnonymousClass1.$SwitchMap$com$google$crypto$tink$proto$KeyStatusType[in.ordinal()];
        if (i == 1) {
            return KeyStatus.ENABLED;
        }
        if (i == 2) {
            return KeyStatus.DESTROYED;
        }
        return KeyStatus.DISABLED;
    }

    public static boolean isValidKeyStatusType(KeyStatusType in) {
        int i = AnonymousClass1.$SwitchMap$com$google$crypto$tink$proto$KeyStatusType[in.ordinal()];
        return i == 1 || i == 2 || i == 3;
    }

    public static KeyStatusType serializeStatus(KeyStatus in) {
        if (KeyStatus.ENABLED.equals(in)) {
            return KeyStatusType.ENABLED;
        }
        if (KeyStatus.DISABLED.equals(in)) {
            return KeyStatusType.DISABLED;
        }
        if (KeyStatus.DESTROYED.equals(in)) {
            return KeyStatusType.DESTROYED;
        }
        throw new IllegalStateException("Unknown key status");
    }

    public static List<Entry> getEntriesFromKeyset(Keyset keyset) throws GeneralSecurityException {
        Key legacyProtoKey;
        boolean z;
        ArrayList arrayList = new ArrayList(keyset.getKeyCount());
        for (Keyset.Key key : keyset.getKeyList()) {
            int keyId = key.getKeyId();
            try {
                legacyProtoKey = toKey(key);
                z = false;
            } catch (GeneralSecurityException e) {
                if (GlobalTinkFlags.validateKeysetsOnParsing.getValue()) {
                    throw e;
                }
                legacyProtoKey = new LegacyProtoKey(toProtoKeySerialization(key), InsecureSecretKeyAccess.get());
                z = true;
            }
            if (GlobalTinkFlags.validateKeysetsOnParsing.getValue() && !isValidKeyStatusType(key.getStatus())) {
                throw new GeneralSecurityException("Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets.");
            }
            arrayList.add(new Entry(legacyProtoKey, key.getStatus(), keyId, keyId == keyset.getPrimaryKeyId(), z, Entry.NO_LOGGING, null));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final Entry entryByIndex(int i) {
        Entry entry = this.entries.get(i);
        if (isValidKeyStatusType(entry.keyStatusType)) {
            if (entry.keyParsingFailed) {
                throw new IllegalStateException("Keyset-Entry at position " + i + " didn't parse correctly");
            }
            return this.entries.get(i);
        }
        throw new IllegalStateException("Keyset-Entry at position " + i + " has wrong status");
    }

    public static Builder.Entry generateEntryFromParameters(Parameters parameters) {
        return new Builder.Entry(parameters, null);
    }

    public final KeysetHandle getUnmonitoredHandle() {
        KeysetHandle keysetHandle = this.unmonitoredHandle;
        return keysetHandle == null ? this : keysetHandle;
    }

    public static void validateNoDuplicateIds(List<Entry> entries) throws GeneralSecurityException {
        HashSet hashSet = new HashSet();
        boolean z = false;
        for (Entry entry : entries) {
            if (hashSet.contains(Integer.valueOf(entry.getId()))) {
                throw new GeneralSecurityException("KeyID " + entry.getId() + " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
            }
            hashSet.add(Integer.valueOf(entry.getId()));
            if (entry.isPrimary()) {
                z = true;
            }
        }
        if (!z) {
            throw new GeneralSecurityException("Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
        }
    }

    public KeysetHandle(List<Entry> entries, MonitoringAnnotations annotations) throws GeneralSecurityException {
        this.entries = entries;
        this.annotations = annotations;
        if (GlobalTinkFlags.validateKeysetsOnParsing.getValue()) {
            validateNoDuplicateIds(entries);
        }
        this.unmonitoredHandle = null;
    }

    public KeysetHandle(List<Entry> entries, MonitoringAnnotations annotations, KeysetHandle unmonitoredHandle) {
        this.entries = entries;
        this.annotations = annotations;
        this.unmonitoredHandle = unmonitoredHandle;
    }

    public static KeysetHandle addMonitoringIfNeeded(final KeysetHandle unmonitoredHandle) {
        final MonitoringAnnotations monitoringAnnotations = unmonitoredHandle.annotations;
        if (monitoringAnnotations.isEmpty()) {
            return unmonitoredHandle;
        }
        Entry.EntryConsumer entryConsumer = new Entry.EntryConsumer() { // from class: com.google.crypto.tink.KeysetHandle$$ExternalSyntheticLambda0
            @Override // com.google.crypto.tink.KeysetHandle.Entry.EntryConsumer
            public final void accept(KeysetHandle.Entry entry) {
                MutableMonitoringRegistry.globalInstance().getMonitoringClient().createLogger(this.f$0, monitoringAnnotations, "keyset_handle", "get_key").logKeyExport(entry.getId());
            }
        };
        ArrayList arrayList = new ArrayList(unmonitoredHandle.entries.size());
        for (Entry entry : unmonitoredHandle.entries) {
            arrayList.add(new Entry(entry.key, entry.keyStatusType, entry.id, entry.isPrimary, entry.keyParsingFailed, entryConsumer, null));
        }
        return new KeysetHandle(arrayList, monitoringAnnotations, unmonitoredHandle);
    }

    public static final KeysetHandle fromKeyset(Keyset keyset) throws GeneralSecurityException {
        assertEnoughKeyMaterial(keyset);
        return new KeysetHandle(getEntriesFromKeyset(keyset), MonitoringAnnotations.EMPTY);
    }

    public Keyset getKeyset() {
        try {
            Keyset.Builder builderNewBuilder = Keyset.newBuilder();
            for (Entry entry : this.entries) {
                builderNewBuilder.addKey(createKeysetKey(entry.getKey(), entry.keyStatusType, entry.getId()));
                if (entry.isPrimary()) {
                    builderNewBuilder.setPrimaryKeyId(entry.getId());
                }
            }
            return builderNewBuilder.build();
        } catch (GeneralSecurityException e) {
            throw new TinkBugException(e);
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Override // com.google.crypto.tink.internal.KeysetHandleInterface
    public Entry getPrimary() {
        for (Entry entry : this.entries) {
            if (entry != null && entry.isPrimary()) {
                if (entry.getStatus() == KeyStatus.ENABLED) {
                    return entry;
                }
                throw new IllegalStateException("Keyset has primary which isn't enabled");
            }
        }
        throw new IllegalStateException("Keyset has no valid primary");
    }

    @Override // com.google.crypto.tink.internal.KeysetHandleInterface
    public int size() {
        return this.entries.size();
    }

    @Override // com.google.crypto.tink.internal.KeysetHandleInterface
    public Entry getAt(int i) {
        if (i < 0 || i >= size()) {
            throw new IndexOutOfBoundsException("Invalid index " + i + " for keyset of size " + size());
        }
        return entryByIndex(i);
    }

    @Deprecated
    public KeysetInfo getKeysetInfo() {
        return Util.getKeysetInfo(getKeyset());
    }

    public static final KeysetHandle generateNew(Parameters parameters) throws GeneralSecurityException {
        return newBuilder().addEntry(generateEntryFromParameters(parameters).withRandomId().makePrimary()).build();
    }

    @Deprecated
    public static final KeysetHandle readNoSecret(KeysetReader reader) throws GeneralSecurityException, IOException {
        try {
            return readNoSecret(reader.read().toByteArray());
        } catch (InvalidProtocolBufferException unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }

    @Deprecated
    public static final KeysetHandle readNoSecret(final byte[] serialized) throws GeneralSecurityException {
        try {
            Keyset from = Keyset.parseFrom(serialized, ExtensionRegistryLite.getEmptyRegistry());
            assertNoSecretKeyMaterial(from);
            return fromKeyset(from);
        } catch (InvalidProtocolBufferException unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }

    public String toString() {
        return getKeysetInfo().toString();
    }

    public static void assertNoSecretKeyMaterial(Keyset keyset) throws GeneralSecurityException {
        for (Keyset.Key key : keyset.getKeyList()) {
            if (key.getKeyData().getKeyMaterialType() == KeyData.KeyMaterialType.UNKNOWN_KEYMATERIAL || key.getKeyData().getKeyMaterialType() == KeyData.KeyMaterialType.SYMMETRIC || key.getKeyData().getKeyMaterialType() == KeyData.KeyMaterialType.ASYMMETRIC_PRIVATE) {
                throw new GeneralSecurityException(String.format("keyset contains key material of type %s for type url %s", key.getKeyData().getKeyMaterialType().name(), key.getKeyData().getTypeUrl()));
            }
        }
    }

    public static void assertEnoughKeyMaterial(Keyset keyset) throws GeneralSecurityException {
        if (keyset == null || keyset.getKeyCount() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
    }

    public final <P> P getPrimitiveInternal(InternalConfiguration internalConfiguration, Class<P> cls) throws GeneralSecurityException {
        Keyset keyset = getUnmonitoredHandle().getKeyset();
        Util.validateKeyset(keyset);
        for (int i = 0; i < size(); i++) {
            if (this.entries.get(i).keyParsingFailed || !isValidKeyStatusType(this.entries.get(i).keyStatusType)) {
                throw new GeneralSecurityException("Key parsing of key with index " + i + " and type_url " + keyset.getKey(i).getKeyData().getTypeUrl() + " failed, unable to get primitive");
            }
        }
        return (P) internalConfiguration.wrap(getUnmonitoredHandle(), this.annotations, cls);
    }

    public <P> P getPrimitive(Configuration configuration, Class<P> cls) throws GeneralSecurityException {
        if (!(configuration instanceof InternalConfiguration)) {
            throw new GeneralSecurityException("Currently only subclasses of InternalConfiguration are accepted");
        }
        return (P) getPrimitiveInternal((InternalConfiguration) configuration, cls);
    }

    public static ProtoKeySerialization toProtoKeySerialization(Keyset.Key protoKey) throws GeneralSecurityException {
        return ProtoKeySerialization.create(protoKey.getKeyData().getTypeUrl(), protoKey.getKeyData().getValue(), protoKey.getKeyData().getKeyMaterialType(), protoKey.getOutputPrefixType(), protoKey.getOutputPrefixType() == OutputPrefixType.RAW ? null : Integer.valueOf(protoKey.getKeyId()));
    }

    public static Key toKey(Keyset.Key protoKey) throws GeneralSecurityException {
        return MutableSerializationRegistry.globalInstance().parseKeyWithLegacyFallback(toProtoKeySerialization(protoKey), InsecureSecretKeyAccess.get());
    }

    public static Keyset.Key toKeysetKey(int id, KeyStatusType status, ProtoKeySerialization protoKeySerialization) {
        return Keyset.Key.newBuilder().setKeyData(KeyData.newBuilder().setTypeUrl(protoKeySerialization.getTypeUrl()).setValue(protoKeySerialization.getValue()).setKeyMaterialType(protoKeySerialization.getKeyMaterialType())).setStatus(status).setKeyId(id).setOutputPrefixType(protoKeySerialization.getOutputPrefixType()).build();
    }

    public static void validateKeyId(Key key, int id) throws GeneralSecurityException {
        Integer idRequirementOrNull = key.getIdRequirementOrNull();
        if (idRequirementOrNull != null && idRequirementOrNull.intValue() != id) {
            throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
        }
    }

    public static Keyset.Key createKeysetKey(Key key, KeyStatusType keyStatus, int id) throws GeneralSecurityException {
        ProtoKeySerialization protoKeySerialization = (ProtoKeySerialization) MutableSerializationRegistry.globalInstance().serializeKey(key, ProtoKeySerialization.class, InsecureSecretKeyAccess.get());
        validateKeyId(key, id);
        return toKeysetKey(id, keyStatus, protoKeySerialization);
    }
}
