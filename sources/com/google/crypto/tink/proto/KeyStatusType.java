package com.google.crypto.tink.proto;

import com.google.crypto.tink.shaded.protobuf.Internal;

/* JADX INFO: loaded from: classes3.dex */
public enum KeyStatusType implements Internal.EnumLite {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);

    public static final Internal.EnumLiteMap<KeyStatusType> internalValueMap = new Internal.EnumLiteMap<KeyStatusType>() { // from class: com.google.crypto.tink.proto.KeyStatusType.1
        @Override // com.google.crypto.tink.shaded.protobuf.Internal.EnumLiteMap
        public KeyStatusType findValueByNumber(int number) {
            return KeyStatusType.forNumber(number);
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

    public static KeyStatusType forNumber(int value) {
        if (value == 0) {
            return UNKNOWN_STATUS;
        }
        if (value == 1) {
            return ENABLED;
        }
        if (value == 2) {
            return DISABLED;
        }
        if (value != 3) {
            return null;
        }
        return DESTROYED;
    }

    KeyStatusType(int value) {
        this.value = value;
    }
}
