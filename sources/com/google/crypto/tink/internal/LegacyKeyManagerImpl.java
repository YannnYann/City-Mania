package com.google.crypto.tink.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.PrivateKeyManager;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KeyTemplate;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import com.google.crypto.tink.shaded.protobuf.Parser;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public class LegacyKeyManagerImpl<P> implements KeyManager<P> {
    public final KeyData.KeyMaterialType keyMaterialType;
    public final Class<P> primitiveClass;
    public final Parser<? extends MessageLite> protobufKeyParser;
    public final String typeUrl;

    public static <P> KeyManager<P> create(String typeUrl, Class<P> primitiveClass, KeyData.KeyMaterialType keyMaterialType, Parser<? extends MessageLite> protobufKeyParser) {
        return new LegacyKeyManagerImpl(typeUrl, primitiveClass, keyMaterialType, protobufKeyParser);
    }

    public LegacyKeyManagerImpl(String typeUrl, Class<P> primitiveClass, KeyData.KeyMaterialType keyMaterialType, Parser<? extends MessageLite> protobufKeyParser) {
        this.protobufKeyParser = protobufKeyParser;
        this.typeUrl = typeUrl;
        this.primitiveClass = primitiveClass;
        this.keyMaterialType = keyMaterialType;
    }

    @Override // com.google.crypto.tink.KeyManager
    public P getPrimitive(ByteString byteString) throws GeneralSecurityException {
        return (P) MutablePrimitiveRegistry.globalInstance().getPrimitive(MutableSerializationRegistry.globalInstance().parseKey(ProtoKeySerialization.create(this.typeUrl, byteString, this.keyMaterialType, OutputPrefixType.RAW, null), InsecureSecretKeyAccess.get()), this.primitiveClass);
    }

    @Override // com.google.crypto.tink.KeyManager
    public final String getKeyType() {
        return this.typeUrl;
    }

    @Override // com.google.crypto.tink.KeyManager
    public final KeyData newKeyData(ByteString serializedKeyFormat) throws GeneralSecurityException {
        ProtoKeySerialization protoKeySerialization = (ProtoKeySerialization) MutableSerializationRegistry.globalInstance().serializeKey(MutableKeyCreationRegistry.globalInstance().createKey(MutableSerializationRegistry.globalInstance().parseParameters(ProtoParametersSerialization.checkedCreate(KeyTemplate.newBuilder().setTypeUrl(this.typeUrl).setValue(serializedKeyFormat).setOutputPrefixType(OutputPrefixType.RAW).build())), null), ProtoKeySerialization.class, InsecureSecretKeyAccess.get());
        return KeyData.newBuilder().setTypeUrl(protoKeySerialization.getTypeUrl()).setValue(protoKeySerialization.getValue()).setKeyMaterialType(protoKeySerialization.getKeyMaterialType()).build();
    }

    @Override // com.google.crypto.tink.KeyManager
    public final Class<P> getPrimitiveClass() {
        return this.primitiveClass;
    }

    public static class LegacyPrivateKeyManagerImpl<P> extends LegacyKeyManagerImpl<P> implements PrivateKeyManager<P> {
        public LegacyPrivateKeyManagerImpl(String typeUrl, Class<P> primitiveClass, Parser<? extends MessageLite> protobufKeyParser) {
            super(typeUrl, primitiveClass, KeyData.KeyMaterialType.ASYMMETRIC_PRIVATE, protobufKeyParser);
        }
    }

    public static <P> PrivateKeyManager<P> createPrivateKeyManager(String typeUrl, Class<P> primitiveClass, Parser<? extends MessageLite> protobufKeyParser) {
        return new LegacyPrivateKeyManagerImpl(typeUrl, primitiveClass, protobufKeyParser);
    }
}
