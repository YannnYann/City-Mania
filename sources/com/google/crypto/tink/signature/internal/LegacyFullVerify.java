package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyProtoKey;
import com.google.crypto.tink.internal.OutputPrefixUtil;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.subtle.Bytes;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class LegacyFullVerify implements PublicKeyVerify {
    public final byte[] messageSuffix;
    public final byte[] outputPrefix;
    public final PublicKeyVerify rawVerifier;

    public static PublicKeyVerify create(LegacyProtoKey key) throws GeneralSecurityException {
        ProtoKeySerialization serialization = key.getSerialization(InsecureSecretKeyAccess.get());
        return new LegacyFullVerify((PublicKeyVerify) KeyManagerRegistry.globalInstance().getKeyManager(serialization.getTypeUrl(), PublicKeyVerify.class).getPrimitive(serialization.getValue()), getOutputPrefix(serialization), getMessageSuffix(serialization));
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.signature.internal.LegacyFullVerify$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType;

        static {
            int[] iArr = new int[OutputPrefixType.values().length];
            $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType = iArr;
            try {
                iArr[OutputPrefixType.LEGACY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType[OutputPrefixType.CRUNCHY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType[OutputPrefixType.TINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType[OutputPrefixType.RAW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static byte[] getOutputPrefix(ProtoKeySerialization key) throws GeneralSecurityException {
        int i = AnonymousClass1.$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType[key.getOutputPrefixType().ordinal()];
        if (i == 1 || i == 2) {
            return OutputPrefixUtil.getLegacyOutputPrefix(key.getIdRequirementOrNull().intValue()).toByteArray();
        }
        if (i == 3) {
            return OutputPrefixUtil.getTinkOutputPrefix(key.getIdRequirementOrNull().intValue()).toByteArray();
        }
        if (i == 4) {
            return OutputPrefixUtil.EMPTY_PREFIX.toByteArray();
        }
        throw new GeneralSecurityException("unknown output prefix type");
    }

    public static byte[] getMessageSuffix(ProtoKeySerialization key) {
        if (key.getOutputPrefixType().equals(OutputPrefixType.LEGACY)) {
            return new byte[]{0};
        }
        return new byte[0];
    }

    public LegacyFullVerify(PublicKeyVerify rawVerifier, byte[] outputPrefix, byte[] messageSuffix) {
        this.rawVerifier = rawVerifier;
        this.outputPrefix = outputPrefix;
        this.messageSuffix = messageSuffix;
    }

    @Override // com.google.crypto.tink.PublicKeyVerify
    public void verify(byte[] signature, byte[] data) throws GeneralSecurityException {
        byte[] bArr = this.outputPrefix;
        if (bArr.length == 0 && this.messageSuffix.length == 0) {
            this.rawVerifier.verify(signature, data);
            return;
        }
        if (!Util.isPrefix(bArr, signature)) {
            throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
        }
        byte[] bArr2 = this.messageSuffix;
        if (bArr2.length != 0) {
            data = Bytes.concat(data, bArr2);
        }
        this.rawVerifier.verify(Arrays.copyOfRange(signature, this.outputPrefix.length, signature.length), data);
    }
}
