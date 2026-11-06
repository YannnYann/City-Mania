package com.google.crypto.tink.proto;

import com.google.crypto.tink.shaded.protobuf.Internal;

/* JADX INFO: loaded from: classes3.dex */
public enum EllipticCurveType implements Internal.EnumLite {
    UNKNOWN_CURVE(0),
    NIST_P256(2),
    NIST_P384(3),
    NIST_P521(4),
    CURVE25519(5),
    UNRECOGNIZED(-1);

    public static final Internal.EnumLiteMap<EllipticCurveType> internalValueMap = new Internal.EnumLiteMap<EllipticCurveType>() { // from class: com.google.crypto.tink.proto.EllipticCurveType.1
        @Override // com.google.crypto.tink.shaded.protobuf.Internal.EnumLiteMap
        public EllipticCurveType findValueByNumber(int number) {
            return EllipticCurveType.forNumber(number);
        }
    };
    public final int value;

    @Override // com.google.crypto.tink.shaded.protobuf.Internal.EnumLite
    public final int getNumber() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.value;
    }

    public static EllipticCurveType forNumber(int value) {
        if (value == 0) {
            return UNKNOWN_CURVE;
        }
        if (value == 2) {
            return NIST_P256;
        }
        if (value == 3) {
            return NIST_P384;
        }
        if (value == 4) {
            return NIST_P521;
        }
        if (value != 5) {
            return null;
        }
        return CURVE25519;
    }

    EllipticCurveType(int value) {
        this.value = value;
    }
}
