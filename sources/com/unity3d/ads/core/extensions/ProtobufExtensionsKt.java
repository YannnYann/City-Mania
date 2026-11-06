package com.unity3d.ads.core.extensions;

import android.util.Base64;
import com.google.protobuf.ByteString;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: ProtobufExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ProtobufExtensionsKt {
    private static final int URL_SAFE_AND_NO_WRAP = 10;

    public static final ByteString toByteString(UUID uuid) {
        Intrinsics.checkNotNullParameter(uuid, "<this>");
        ByteString byteStringCopyFrom = ByteString.copyFrom(ByteBuffer.wrap(new byte[16]).order(ByteOrder.BIG_ENDIAN).putLong(uuid.getMostSignificantBits()).putLong(uuid.getLeastSignificantBits()).array());
        Intrinsics.checkNotNullExpressionValue(byteStringCopyFrom, "copyFrom(...)");
        return byteStringCopyFrom;
    }

    public static final UUID toUUID(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        ByteBuffer byteBufferAsReadOnlyByteBuffer = byteString.asReadOnlyByteBuffer();
        Intrinsics.checkNotNullExpressionValue(byteBufferAsReadOnlyByteBuffer, "asReadOnlyByteBuffer(...)");
        if (byteBufferAsReadOnlyByteBuffer.remaining() == 36) {
            UUID uuidFromString = UUID.fromString(byteString.toStringUtf8());
            Intrinsics.checkNotNullExpressionValue(uuidFromString, "fromString(...)");
            return uuidFromString;
        }
        if (byteBufferAsReadOnlyByteBuffer.remaining() != 16) {
            throw new IllegalArgumentException("Expected 16 byte ByteString or UUID string");
        }
        return new UUID(byteBufferAsReadOnlyByteBuffer.getLong(), byteBufferAsReadOnlyByteBuffer.getLong());
    }

    public static /* synthetic */ String toBase64$default(ByteString byteString, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return toBase64(byteString, z);
    }

    public static final String toBase64(ByteString byteString, boolean z) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        String strEncodeToString = Base64.encodeToString(byteString.toByteArray(), z ? 10 : 2);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    public static /* synthetic */ ByteString fromBase64$default(String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return fromBase64(str, z);
    }

    public static final ByteString fromBase64(String str, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ByteString byteStringCopyFrom = ByteString.copyFrom(Base64.decode(str, z ? 10 : 2));
        Intrinsics.checkNotNullExpressionValue(byteStringCopyFrom, "copyFrom(...)");
        return byteStringCopyFrom;
    }

    public static final ByteString toISO8859ByteString(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.ISO_8859_1);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        ByteString byteStringCopyFrom = ByteString.copyFrom(bytes);
        Intrinsics.checkNotNullExpressionValue(byteStringCopyFrom, "copyFrom(...)");
        return byteStringCopyFrom;
    }

    public static final String toISO8859String(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        String string = byteString.toString(Charsets.ISO_8859_1);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
