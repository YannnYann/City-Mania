package com.google.crypto.tink.mac.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.Mac;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyProtoKey;
import com.google.crypto.tink.internal.OutputPrefixUtil;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.subtle.Bytes;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class LegacyFullMac implements Mac {
    public static final byte[] formatVersion = {0};
    public final byte[] identifier;
    public final OutputPrefixType outputPrefixType;
    public final Mac rawMac;

    public static Mac create(LegacyProtoKey key) throws GeneralSecurityException {
        byte[] byteArray;
        ProtoKeySerialization serialization = key.getSerialization(InsecureSecretKeyAccess.get());
        Mac mac = (Mac) KeyManagerRegistry.globalInstance().getKeyManager(serialization.getTypeUrl(), Mac.class).getPrimitive(serialization.getValue());
        OutputPrefixType outputPrefixType = serialization.getOutputPrefixType();
        int i = AnonymousClass1.$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType[outputPrefixType.ordinal()];
        if (i == 1) {
            byteArray = OutputPrefixUtil.EMPTY_PREFIX.toByteArray();
        } else if (i == 2 || i == 3) {
            byteArray = OutputPrefixUtil.getLegacyOutputPrefix(key.getIdRequirementOrNull().intValue()).toByteArray();
        } else if (i == 4) {
            byteArray = OutputPrefixUtil.getTinkOutputPrefix(key.getIdRequirementOrNull().intValue()).toByteArray();
        } else {
            throw new GeneralSecurityException("unknown output prefix type");
        }
        return new LegacyFullMac(mac, outputPrefixType, byteArray);
    }

    /* JADX INFO: renamed from: com.google.crypto.tink.mac.internal.LegacyFullMac$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType;

        static {
            int[] iArr = new int[OutputPrefixType.values().length];
            $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType = iArr;
            try {
                iArr[OutputPrefixType.RAW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType[OutputPrefixType.LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType[OutputPrefixType.CRUNCHY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType[OutputPrefixType.TINK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public LegacyFullMac(Mac rawMac, OutputPrefixType outputPrefixType, byte[] identifier) {
        this.rawMac = rawMac;
        this.outputPrefixType = outputPrefixType;
        this.identifier = identifier;
    }

    @Override // com.google.crypto.tink.Mac
    public void verifyMac(byte[] mac, byte[] data) throws GeneralSecurityException {
        if (mac.length < 10) {
            throw new GeneralSecurityException("tag too short");
        }
        if (this.outputPrefixType.equals(OutputPrefixType.LEGACY)) {
            data = Bytes.concat(data, formatVersion);
        }
        byte[] bArr = new byte[0];
        if (!this.outputPrefixType.equals(OutputPrefixType.RAW)) {
            byte[] bArrCopyOf = Arrays.copyOf(mac, 5);
            mac = Arrays.copyOfRange(mac, 5, mac.length);
            bArr = bArrCopyOf;
        }
        if (!Arrays.equals(this.identifier, bArr)) {
            throw new GeneralSecurityException("wrong prefix");
        }
        this.rawMac.verifyMac(mac, data);
    }
}
