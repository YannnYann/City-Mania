package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.aead.AesCtrHmacAeadParameters;
import com.google.crypto.tink.aead.internal.AesCtrHmacAeadProtoSerialization;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.KeyCreator;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyKeyManagerImpl;
import com.google.crypto.tink.internal.MutableKeyCreationRegistry;
import com.google.crypto.tink.internal.MutableKeyDerivationRegistry;
import com.google.crypto.tink.internal.MutableParametersRegistry;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.subtle.EncryptThenAuthenticate;
import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class AesCtrHmacAeadKeyManager {
    public static final PrimitiveConstructor<AesCtrHmacAeadKey, Aead> AES_CTR_HMAC_AEAD_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.aead.AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return EncryptThenAuthenticate.create((AesCtrHmacAeadKey) key);
        }
    }, AesCtrHmacAeadKey.class, Aead.class);
    public static final KeyManager<Aead> legacyKeyManager = LegacyKeyManagerImpl.create(getKeyType(), Aead.class, KeyData.KeyMaterialType.SYMMETRIC, com.google.crypto.tink.proto.AesCtrHmacAeadKey.parser());
    public static final MutableKeyDerivationRegistry.InsecureKeyCreator<AesCtrHmacAeadParameters> KEY_DERIVER = new AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda1();
    public static final KeyCreator<AesCtrHmacAeadParameters> KEY_CREATOR = new KeyCreator() { // from class: com.google.crypto.tink.aead.AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda2
        @Override // com.google.crypto.tink.internal.KeyCreator
        public final Key createKey(Parameters parameters, Integer num) {
            return AesCtrHmacAeadKeyManager.createAesCtrHmacAeadKey((AesCtrHmacAeadParameters) parameters, num);
        }
    };
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;

    public static void validate(AesCtrHmacAeadParameters parameters) throws GeneralSecurityException {
        if (parameters.getAesKeySizeBytes() != 16 && parameters.getAesKeySizeBytes() != 32) {
            throw new GeneralSecurityException("AES key size must be 16 or 32 bytes");
        }
    }

    public static String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    public static AesCtrHmacAeadKey createAesCtrHmacAeadKey(AesCtrHmacAeadParameters parameters, Integer idRequirement) throws GeneralSecurityException {
        validate(parameters);
        return AesCtrHmacAeadKey.builder().setParameters(parameters).setIdRequirement(idRequirement).setAesKeyBytes(SecretBytes.randomBytes(parameters.getAesKeySizeBytes())).setHmacKeyBytes(SecretBytes.randomBytes(parameters.getHmacKeySizeBytes())).build();
    }

    public static Map<String, Parameters> namedParameters() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("AES128_CTR_HMAC_SHA256", PredefinedAeadParameters.AES128_CTR_HMAC_SHA256);
        AesCtrHmacAeadParameters.Builder ivSizeBytes = AesCtrHmacAeadParameters.builder().setAesKeySizeBytes(16).setHmacKeySizeBytes(32).setTagSizeBytes(16).setIvSizeBytes(16);
        AesCtrHmacAeadParameters.HashType hashType = AesCtrHmacAeadParameters.HashType.SHA256;
        AesCtrHmacAeadParameters.Builder hashType2 = ivSizeBytes.setHashType(hashType);
        AesCtrHmacAeadParameters.Variant variant = AesCtrHmacAeadParameters.Variant.NO_PREFIX;
        map.put("AES128_CTR_HMAC_SHA256_RAW", hashType2.setVariant(variant).build());
        map.put("AES256_CTR_HMAC_SHA256", PredefinedAeadParameters.AES256_CTR_HMAC_SHA256);
        map.put("AES256_CTR_HMAC_SHA256_RAW", AesCtrHmacAeadParameters.builder().setAesKeySizeBytes(32).setHmacKeySizeBytes(32).setTagSizeBytes(32).setIvSizeBytes(16).setHashType(hashType).setVariant(variant).build());
        return Collections.unmodifiableMap(map);
    }

    public static void register(boolean newKeyAllowed) throws GeneralSecurityException {
        TinkFipsUtil.AlgorithmFipsCompatibility algorithmFipsCompatibility = FIPS;
        if (!algorithmFipsCompatibility.isCompatible()) {
            throw new GeneralSecurityException("Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        AesCtrHmacAeadProtoSerialization.register();
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(AES_CTR_HMAC_AEAD_PRIMITIVE_CONSTRUCTOR);
        MutableParametersRegistry.globalInstance().putAll(namedParameters());
        MutableKeyDerivationRegistry.globalInstance().add(KEY_DERIVER, AesCtrHmacAeadParameters.class);
        MutableKeyCreationRegistry.globalInstance().add(KEY_CREATOR, AesCtrHmacAeadParameters.class);
        KeyManagerRegistry.globalInstance().registerKeyManagerWithFipsCompatibility(legacyKeyManager, algorithmFipsCompatibility, newKeyAllowed);
    }
}
