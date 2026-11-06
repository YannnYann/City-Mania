package com.google.crypto.tink.proto;

import com.google.crypto.tink.shaded.protobuf.Internal;

/* JADX INFO: loaded from: classes3.dex */
public enum HashType implements Internal.EnumLite {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    SHA224(5),
    UNRECOGNIZED(-1);

    public static final Internal.EnumLiteMap<HashType> internalValueMap = new Internal.EnumLiteMap<HashType>() { // from class: com.google.crypto.tink.proto.HashType.1
        @Override // com.google.crypto.tink.shaded.protobuf.Internal.EnumLiteMap
        public HashType findValueByNumber(int number) {
            return HashType.forNumber(number);
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

    public static HashType forNumber(int value) {
        if (value == 0) {
            return UNKNOWN_HASH;
        }
        if (value == 1) {
            return SHA1;
        }
        if (value == 2) {
            return SHA384;
        }
        if (value == 3) {
            return SHA256;
        }
        if (value == 4) {
            return SHA512;
        }
        if (value != 5) {
            return null;
        }
        return SHA224;
    }

    HashType(int value) {
        this.value = value;
    }
}
