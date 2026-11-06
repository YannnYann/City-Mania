package com.google.protobuf.kotlin;

import com.google.protobuf.ExtensionLite;
import com.google.protobuf.GeneratedMessageLite;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExtendableMessageLiteExtensions.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class ExtendableMessageLiteExtensionsKt {
    public static final <M extends GeneratedMessageLite.ExtendableMessage<M, ?>, MOrBT extends GeneratedMessageLite.ExtendableMessageOrBuilder<M, ?>, T> T get(MOrBT morbt, ExtensionLite<M, T> extension) {
        Intrinsics.checkNotNullParameter(morbt, "<this>");
        Intrinsics.checkNotNullParameter(extension, "extension");
        T t = (T) morbt.getExtension(extension);
        Intrinsics.checkNotNullExpressionValue(t, "getExtension(extension)");
        return t;
    }

    public static final <M extends GeneratedMessageLite.ExtendableMessage<M, B>, B extends GeneratedMessageLite.ExtendableBuilder<M, B>, T> void set(B b, ExtensionLite<M, T> extension, T value) {
        Intrinsics.checkNotNullParameter(b, "<this>");
        Intrinsics.checkNotNullParameter(extension, "extension");
        Intrinsics.checkNotNullParameter(value, "value");
        b.setExtension(extension, value);
    }

    public static final <M extends GeneratedMessageLite.ExtendableMessage<M, ?>, MorBT extends GeneratedMessageLite.ExtendableMessageOrBuilder<M, ?>> boolean contains(MorBT morbt, ExtensionLite<M, ?> extension) {
        Intrinsics.checkNotNullParameter(morbt, "<this>");
        Intrinsics.checkNotNullParameter(extension, "extension");
        return morbt.hasExtension(extension);
    }
}
