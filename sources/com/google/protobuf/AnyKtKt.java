package com.google.protobuf;

import com.google.protobuf.Any;
import com.google.protobuf.AnyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnyKt.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class AnyKtKt {
    /* JADX INFO: renamed from: -initializeany, reason: not valid java name */
    public static final Any m815initializeany(Function1<? super AnyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AnyKt.Dsl.Companion companion = AnyKt.Dsl.Companion;
        Any.Builder builderNewBuilder = Any.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
        AnyKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final Any copy(Any any, Function1<? super AnyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(any, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AnyKt.Dsl.Companion companion = AnyKt.Dsl.Companion;
        Any.Builder builder = any.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        AnyKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
