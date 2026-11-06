package com.google.crypto.tink.mac;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.Mac;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.KeyCreator;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyKeyManagerImpl;
import com.google.crypto.tink.internal.MutableKeyCreationRegistry;
import com.google.crypto.tink.internal.MutableParametersRegistry;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.mac.AesCmacParameters;
import com.google.crypto.tink.mac.internal.AesCmacProtoSerialization;
import com.google.crypto.tink.mac.internal.ChunkedAesCmacImpl;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.subtle.PrfMac;
import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class AesCmacKeyManager {
    public static final KeyCreator<AesCmacParameters> KEY_CREATOR = new KeyCreator() { // from class: com.google.crypto.tink.mac.AesCmacKeyManager$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.KeyCreator
        public final Key createKey(Parameters parameters, Integer num) {
            return AesCmacKeyManager.createAesCmacKey((AesCmacParameters) parameters, num);
        }
    };
    public static final PrimitiveConstructor<AesCmacKey, ChunkedMac> CHUNKED_MAC_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.mac.AesCmacKeyManager$$ExternalSyntheticLambda1
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return AesCmacKeyManager.createChunkedMac((AesCmacKey) key);
        }
    }, AesCmacKey.class, ChunkedMac.class);
    public static final PrimitiveConstructor<AesCmacKey, Mac> MAC_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.mac.AesCmacKeyManager$$ExternalSyntheticLambda2
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return AesCmacKeyManager.createMac((AesCmacKey) key);
        }
    }, AesCmacKey.class, Mac.class);
    public static final KeyManager<Mac> legacyKeyManager = LegacyKeyManagerImpl.create("type.googleapis.com/google.crypto.tink.AesCmacKey", Mac.class, KeyData.KeyMaterialType.SYMMETRIC, com.google.crypto.tink.proto.AesCmacKey.parser());

    public static void validateParameters(AesCmacParameters parameters) throws GeneralSecurityException {
        if (parameters.getKeySizeBytes() != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
    }

    public static AesCmacKey createAesCmacKey(AesCmacParameters parameters, Integer idRequirement) throws GeneralSecurityException {
        validateParameters(parameters);
        return AesCmacKey.builder().setParameters(parameters).setAesKeyBytes(SecretBytes.randomBytes(parameters.getKeySizeBytes())).setIdRequirement(idRequirement).build();
    }

    public static ChunkedMac createChunkedMac(AesCmacKey key) throws GeneralSecurityException {
        validateParameters(key.getParameters());
        return ChunkedAesCmacImpl.create(key);
    }

    public static Mac createMac(AesCmacKey key) throws GeneralSecurityException {
        validateParameters(key.getParameters());
        return PrfMac.create(key);
    }

    public static void register(boolean newKeyAllowed) throws GeneralSecurityException {
        if (!TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS.isCompatible()) {
            throw new GeneralSecurityException("Registering AES CMAC is not supported in FIPS mode");
        }
        AesCmacProtoSerialization.register();
        MutableKeyCreationRegistry.globalInstance().add(KEY_CREATOR, AesCmacParameters.class);
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(CHUNKED_MAC_PRIMITIVE_CONSTRUCTOR);
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(MAC_PRIMITIVE_CONSTRUCTOR);
        MutableParametersRegistry.globalInstance().putAll(namedParameters());
        KeyManagerRegistry.globalInstance().registerKeyManager(legacyKeyManager, newKeyAllowed);
    }

    public static Map<String, Parameters> namedParameters() throws GeneralSecurityException {
        HashMap map = new HashMap();
        AesCmacParameters aesCmacParameters = PredefinedMacParameters.AES_CMAC;
        map.put("AES_CMAC", aesCmacParameters);
        map.put("AES256_CMAC", aesCmacParameters);
        map.put("AES256_CMAC_RAW", AesCmacParameters.builder().setKeySizeBytes(32).setTagSizeBytes(16).setVariant(AesCmacParameters.Variant.NO_PREFIX).build());
        return Collections.unmodifiableMap(map);
    }
}
