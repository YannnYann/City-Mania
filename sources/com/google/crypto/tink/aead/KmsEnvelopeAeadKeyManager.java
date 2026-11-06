package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyManager;
import com.google.crypto.tink.KmsClients;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.aead.internal.LegacyFullAead;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.KeyCreator;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyKeyManagerImpl;
import com.google.crypto.tink.internal.MutableKeyCreationRegistry;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KmsEnvelopeAeadKey;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public class KmsEnvelopeAeadKeyManager {
    public static final KeyManager<Aead> legacyKeyManager = LegacyKeyManagerImpl.create(getKeyType(), Aead.class, KeyData.KeyMaterialType.SYMMETRIC, KmsEnvelopeAeadKey.parser());
    public static final KeyCreator<LegacyKmsEnvelopeAeadParameters> KEY_CREATOR = new KeyCreator() { // from class: com.google.crypto.tink.aead.KmsEnvelopeAeadKeyManager$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.KeyCreator
        public final Key createKey(Parameters parameters, Integer num) {
            return KmsEnvelopeAeadKeyManager.newKey((LegacyKmsEnvelopeAeadParameters) parameters, num);
        }
    };
    public static final PrimitiveConstructor<LegacyKmsEnvelopeAeadKey, Aead> LEGACY_KMS_ENVELOPE_AEAD_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.aead.KmsEnvelopeAeadKeyManager$$ExternalSyntheticLambda1
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return KmsEnvelopeAeadKeyManager.create((LegacyKmsEnvelopeAeadKey) key);
        }
    }, LegacyKmsEnvelopeAeadKey.class, Aead.class);

    public static LegacyKmsEnvelopeAeadKey newKey(LegacyKmsEnvelopeAeadParameters parameters, Integer idRequirement) throws GeneralSecurityException {
        return LegacyKmsEnvelopeAeadKey.create(parameters, idRequirement);
    }

    public static Aead create(LegacyKmsEnvelopeAeadKey key) throws GeneralSecurityException {
        String kekUri = key.getParameters().getKekUri();
        return LegacyFullAead.create(KmsEnvelopeAead.create(key.getParameters().getDekParametersForNewKeys(), KmsClients.get(kekUri).getAead(kekUri)), key.getOutputPrefix());
    }

    public static String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    public static void register(boolean newKeyAllowed) throws GeneralSecurityException {
        if (!TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS.isCompatible()) {
            throw new GeneralSecurityException("Registering KMS Envelope AEAD is not supported in FIPS mode");
        }
        LegacyKmsEnvelopeAeadProtoSerialization.register();
        MutableKeyCreationRegistry.globalInstance().add(KEY_CREATOR, LegacyKmsEnvelopeAeadParameters.class);
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(LEGACY_KMS_ENVELOPE_AEAD_PRIMITIVE_CONSTRUCTOR);
        KeyManagerRegistry.globalInstance().registerKeyManager(legacyKeyManager, newKeyAllowed);
    }
}
