package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.aead.AesEaxParameters;
import com.google.crypto.tink.aead.internal.AesEaxProtoSerialization;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.KeyCreator;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyKeyManagerImpl;
import com.google.crypto.tink.internal.MutableKeyCreationRegistry;
import com.google.crypto.tink.internal.MutableParametersRegistry;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.subtle.AesEaxJce;
import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class AesEaxKeyManager {
    public static final PrimitiveConstructor<AesEaxKey, Aead> AES_EAX_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.aead.AesEaxKeyManager$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return AesEaxJce.create((AesEaxKey) key);
        }
    }, AesEaxKey.class, Aead.class);
    public static final KeyManager<Aead> legacyKeyManager = LegacyKeyManagerImpl.create(getKeyType(), Aead.class, KeyData.KeyMaterialType.SYMMETRIC, com.google.crypto.tink.proto.AesEaxKey.parser());
    public static final KeyCreator<AesEaxParameters> KEY_CREATOR = new KeyCreator() { // from class: com.google.crypto.tink.aead.AesEaxKeyManager$$ExternalSyntheticLambda1
        @Override // com.google.crypto.tink.internal.KeyCreator
        public final Key createKey(Parameters parameters, Integer num) {
            return AesEaxKeyManager.createAesEaxKey((AesEaxParameters) parameters, num);
        }
    };

    public static final void validate(AesEaxParameters parameters) throws GeneralSecurityException {
        if (parameters.getKeySizeBytes() == 24) {
            throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
        }
    }

    public static String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    public static Map<String, Parameters> namedParameters() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("AES128_EAX", PredefinedAeadParameters.AES128_EAX);
        AesEaxParameters.Builder tagSizeBytes = AesEaxParameters.builder().setIvSizeBytes(16).setKeySizeBytes(16).setTagSizeBytes(16);
        AesEaxParameters.Variant variant = AesEaxParameters.Variant.NO_PREFIX;
        map.put("AES128_EAX_RAW", tagSizeBytes.setVariant(variant).build());
        map.put("AES256_EAX", PredefinedAeadParameters.AES256_EAX);
        map.put("AES256_EAX_RAW", AesEaxParameters.builder().setIvSizeBytes(16).setKeySizeBytes(32).setTagSizeBytes(16).setVariant(variant).build());
        return Collections.unmodifiableMap(map);
    }

    public static AesEaxKey createAesEaxKey(AesEaxParameters parameters, Integer idRequirement) throws GeneralSecurityException {
        validate(parameters);
        return AesEaxKey.builder().setParameters(parameters).setIdRequirement(idRequirement).setKeyBytes(SecretBytes.randomBytes(parameters.getKeySizeBytes())).build();
    }

    public static void register(boolean newKeyAllowed) throws GeneralSecurityException {
        if (!TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS.isCompatible()) {
            throw new GeneralSecurityException("Registering AES EAX is not supported in FIPS mode");
        }
        AesEaxProtoSerialization.register();
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(AES_EAX_PRIMITIVE_CONSTRUCTOR);
        MutableParametersRegistry.globalInstance().putAll(namedParameters());
        MutableKeyCreationRegistry.globalInstance().add(KEY_CREATOR, AesEaxParameters.class);
        KeyManagerRegistry.globalInstance().registerKeyManager(legacyKeyManager, newKeyAllowed);
    }
}
