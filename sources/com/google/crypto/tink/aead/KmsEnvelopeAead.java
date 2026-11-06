package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.TinkProtoParametersFormat;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.MutableSerializationRegistry;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KeyTemplate;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class KmsEnvelopeAead implements Aead {
    public static final byte[] EMPTY_AAD = new byte[0];
    public static final Set<String> supportedDekKeyTypes = listSupportedDekKeyTypes();
    public final Parameters parametersForNewKeys;
    public final Aead remote;
    public final String typeUrlForParsing;

    public static Set<String> listSupportedDekKeyTypes() {
        HashSet hashSet = new HashSet();
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesEaxKey");
        return Collections.unmodifiableSet(hashSet);
    }

    public static boolean isSupportedDekKeyType(String dekKeyTypeUrl) {
        return supportedDekKeyTypes.contains(dekKeyTypeUrl);
    }

    public final Parameters getRawParameters(KeyTemplate dekTemplate) throws GeneralSecurityException {
        return TinkProtoParametersFormat.parse(KeyTemplate.newBuilder(dekTemplate).setOutputPrefixType(OutputPrefixType.RAW).build().toByteArray());
    }

    @Deprecated
    public KmsEnvelopeAead(KeyTemplate dekTemplate, Aead remote) throws GeneralSecurityException {
        if (!isSupportedDekKeyType(dekTemplate.getTypeUrl())) {
            throw new IllegalArgumentException("Unsupported DEK key type: " + dekTemplate.getTypeUrl() + ". Only Tink AEAD key types are supported.");
        }
        this.typeUrlForParsing = dekTemplate.getTypeUrl();
        this.parametersForNewKeys = getRawParameters(dekTemplate);
        this.remote = remote;
    }

    public static Aead create(AeadParameters dekParameters, Aead remote) throws GeneralSecurityException {
        try {
            return new KmsEnvelopeAead(KeyTemplate.parseFrom(TinkProtoParametersFormat.serialize(dekParameters), ExtensionRegistryLite.getEmptyRegistry()), remote);
        } catch (InvalidProtocolBufferException e) {
            throw new GeneralSecurityException(e);
        }
    }

    @Override // com.google.crypto.tink.Aead
    public byte[] decrypt(final byte[] ciphertext, final byte[] associatedData) throws GeneralSecurityException {
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(ciphertext);
            int i = byteBufferWrap.getInt();
            if (i <= 0 || i > 4096 || i > ciphertext.length - 4) {
                throw new GeneralSecurityException("length of encrypted DEK too large");
            }
            byte[] bArr = new byte[i];
            byteBufferWrap.get(bArr, 0, i);
            byte[] bArr2 = new byte[byteBufferWrap.remaining()];
            byteBufferWrap.get(bArr2, 0, byteBufferWrap.remaining());
            return ((Aead) MutablePrimitiveRegistry.globalInstance().getPrimitive(MutableSerializationRegistry.globalInstance().parseKey(ProtoKeySerialization.create(this.typeUrlForParsing, ByteString.copyFrom(this.remote.decrypt(bArr, EMPTY_AAD)), KeyData.KeyMaterialType.SYMMETRIC, OutputPrefixType.RAW, null), InsecureSecretKeyAccess.get()), Aead.class)).decrypt(bArr2, associatedData);
        } catch (IndexOutOfBoundsException e) {
            e = e;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (NegativeArraySizeException e2) {
            e = e2;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (BufferUnderflowException e3) {
            e = e3;
            throw new GeneralSecurityException("invalid ciphertext", e);
        }
    }
}
