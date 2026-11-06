package com.google.protobuf;

import com.google.protobuf.Field;
import com.google.protobuf.FieldKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FieldKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class FieldKtKt {
    /* JADX INFO: renamed from: -initializefield, reason: not valid java name */
    public static final Field m824initializefield(Function1<? super FieldKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        FieldKt.Dsl.Companion companion = FieldKt.Dsl.Companion;
        Field.Builder builderNewBuilder = Field.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
        FieldKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final Field copy(Field field, Function1<? super FieldKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(field, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        FieldKt.Dsl.Companion companion = FieldKt.Dsl.Companion;
        Field.Builder builder = field.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        FieldKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
