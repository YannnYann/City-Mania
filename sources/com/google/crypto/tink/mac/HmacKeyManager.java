package com.google.crypto.tink.mac;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.Mac;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.aead.AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda1;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.KeyCreator;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyKeyManagerImpl;
import com.google.crypto.tink.internal.MutableKeyCreationRegistry;
import com.google.crypto.tink.internal.MutableKeyDerivationRegistry;
import com.google.crypto.tink.internal.MutableParametersRegistry;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.mac.HmacParameters;
import com.google.crypto.tink.mac.internal.ChunkedHmacImpl;
import com.google.crypto.tink.mac.internal.HmacProtoSerialization;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.subtle.PrfMac;
import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class HmacKeyManager {
    public static final PrimitiveConstructor<HmacKey, ChunkedMac> CHUNKED_MAC_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.mac.HmacKeyManager$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return new ChunkedHmacImpl((HmacKey) key);
        }
    }, HmacKey.class, ChunkedMac.class);
    public static final PrimitiveConstructor<HmacKey, Mac> MAC_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.mac.HmacKeyManager$$ExternalSyntheticLambda1
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return PrfMac.create((HmacKey) key);
        }
    }, HmacKey.class, Mac.class);
    public static final KeyManager<Mac> legacyKeyManager = LegacyKeyManagerImpl.create("type.googleapis.com/google.crypto.tink.HmacKey", Mac.class, KeyData.KeyMaterialType.SYMMETRIC, com.google.crypto.tink.proto.HmacKey.parser());
    public static final MutableKeyDerivationRegistry.InsecureKeyCreator<HmacParameters> KEY_DERIVER = new AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda1();
    public static final KeyCreator<HmacParameters> KEY_CREATOR = new KeyCreator() { // from class: com.google.crypto.tink.mac.HmacKeyManager$$ExternalSyntheticLambda2
        @Override // com.google.crypto.tink.internal.KeyCreator
        public final Key createKey(Parameters parameters, Integer num) {
            return HmacKeyManager.createNewHmacKey((HmacParameters) parameters, num);
        }
    };
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;

    public static HmacKey createNewHmacKey(HmacParameters parameters, Integer idRequirement) throws GeneralSecurityException {
        return HmacKey.builder().setParameters(parameters).setKeyBytes(SecretBytes.randomBytes(parameters.getKeySizeBytes())).setIdRequirement(idRequirement).build();
    }

    public static Map<String, Parameters> namedParameters() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("HMAC_SHA256_128BITTAG", PredefinedMacParameters.HMAC_SHA256_128BITTAG);
        HmacParameters.Builder tagSizeBytes = HmacParameters.builder().setKeySizeBytes(32).setTagSizeBytes(16);
        HmacParameters.Variant variant = HmacParameters.Variant.NO_PREFIX;
        HmacParameters.Builder variant2 = tagSizeBytes.setVariant(variant);
        HmacParameters.HashType hashType = HmacParameters.HashType.SHA256;
        map.put("HMAC_SHA256_128BITTAG_RAW", variant2.setHashType(hashType).build());
        HmacParameters.Builder tagSizeBytes2 = HmacParameters.builder().setKeySizeBytes(32).setTagSizeBytes(32);
        HmacParameters.Variant variant3 = HmacParameters.Variant.TINK;
        map.put("HMAC_SHA256_256BITTAG", tagSizeBytes2.setVariant(variant3).setHashType(hashType).build());
        map.put("HMAC_SHA256_256BITTAG_RAW", HmacParameters.builder().setKeySizeBytes(32).setTagSizeBytes(32).setVariant(variant).setHashType(hashType).build());
        HmacParameters.Builder variant4 = HmacParameters.builder().setKeySizeBytes(64).setTagSizeBytes(16).setVariant(variant3);
        HmacParameters.HashType hashType2 = HmacParameters.HashType.SHA512;
        map.put("HMAC_SHA512_128BITTAG", variant4.setHashType(hashType2).build());
        map.put("HMAC_SHA512_128BITTAG_RAW", HmacParameters.builder().setKeySizeBytes(64).setTagSizeBytes(16).setVariant(variant).setHashType(hashType2).build());
        map.put("HMAC_SHA512_256BITTAG", HmacParameters.builder().setKeySizeBytes(64).setTagSizeBytes(32).setVariant(variant3).setHashType(hashType2).build());
        map.put("HMAC_SHA512_256BITTAG_RAW", HmacParameters.builder().setKeySizeBytes(64).setTagSizeBytes(32).setVariant(variant).setHashType(hashType2).build());
        map.put("HMAC_SHA512_512BITTAG", PredefinedMacParameters.HMAC_SHA512_512BITTAG);
        map.put("HMAC_SHA512_512BITTAG_RAW", HmacParameters.builder().setKeySizeBytes(64).setTagSizeBytes(64).setVariant(variant).setHashType(hashType2).build());
        return Collections.unmodifiableMap(map);
    }

    public static void register(boolean newKeyAllowed) throws GeneralSecurityException {
        TinkFipsUtil.AlgorithmFipsCompatibility algorithmFipsCompatibility = FIPS;
        if (!algorithmFipsCompatibility.isCompatible()) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        HmacProtoSerialization.register();
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(CHUNKED_MAC_PRIMITIVE_CONSTRUCTOR);
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(MAC_PRIMITIVE_CONSTRUCTOR);
        MutableParametersRegistry.globalInstance().putAll(namedParameters());
        MutableKeyCreationRegistry.globalInstance().add(KEY_CREATOR, HmacParameters.class);
        MutableKeyDerivationRegistry.globalInstance().add(KEY_DERIVER, HmacParameters.class);
        KeyManagerRegistry.globalInstance().registerKeyManagerWithFipsCompatibility(legacyKeyManager, algorithmFipsCompatibility, newKeyAllowed);
    }
}
