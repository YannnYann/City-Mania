###### Class com.google.protobuf.SourceContextKtKt (com.google.protobuf.SourceContextKtKt)
.class public final Lcom/google/protobuf/SourceContextKtKt;
.super Ljava/lang/Object;
.source "SourceContextKt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSourceContextKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceContextKt.kt\ncom/google/protobuf/SourceContextKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"
.end annotation


# direct methods
.method public static final -initializesourceContext(Lkotlin/jvm/functions/Function1;)Lcom/google/protobuf/SourceContext;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/protobuf/SourceContextKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/protobuf/SourceContext;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/google/protobuf/SourceContextKt$Dsl;->Companion:Lcom/google/protobuf/SourceContextKt$Dsl$Companion;

    invoke-static {}, Lcom/google/protobuf/SourceContext;->newBuilder()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SourceContextKt$Dsl$Companion;->_create(Lcom/google/protobuf/SourceContext$Builder;)Lcom/google/protobuf/SourceContextKt$Dsl;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/protobuf/SourceContextKt$Dsl;->_build()Lcom/google/protobuf/SourceContext;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lcom/google/protobuf/SourceContext;Lkotlin/jvm/functions/Function1;)Lcom/google/protobuf/SourceContext;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/SourceContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/protobuf/SourceContextKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/protobuf/SourceContext;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/google/protobuf/SourceContextKt$Dsl;->Companion:Lcom/google/protobuf/SourceContextKt$Dsl$Companion;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    const-string v1, "this.toBuilder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/protobuf/SourceContext$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/SourceContextKt$Dsl$Companion;->_create(Lcom/google/protobuf/SourceContext$Builder;)Lcom/google/protobuf/SourceContextKt$Dsl;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/SourceContextKt$Dsl;->_build()Lcom/google/protobuf/SourceContext;

    move-result-object p0

    return-object p0
.end method
