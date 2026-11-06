###### Class gatewayprotocol.v1.ModuleInitParamsKtKt (gatewayprotocol.v1.ModuleInitParamsKtKt)
.class public final Lgatewayprotocol/v1/ModuleInitParamsKtKt;
.super Ljava/lang/Object;
.source "ModuleInitParamsKt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleInitParamsKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleInitParamsKt.kt\ngatewayprotocol/v1/ModuleInitParamsKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n1#2:116\n*E\n"
.end annotation


# direct methods
.method public static final -initializemoduleInitParams(Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->Companion:Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->newBuilder()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;)Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_build()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->Companion:Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    const-string v1, "toBuilder(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;)Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_build()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    move-result-object p0

    return-object p0
.end method
