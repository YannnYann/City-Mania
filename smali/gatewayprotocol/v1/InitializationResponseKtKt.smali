###### Class gatewayprotocol.v1.InitializationResponseKtKt (gatewayprotocol.v1.InitializationResponseKtKt)
.class public final Lgatewayprotocol/v1/InitializationResponseKtKt;
.super Ljava/lang/Object;
.source "InitializationResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInitializationResponseKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializationResponseKt.kt\ngatewayprotocol/v1/InitializationResponseKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,583:1\n1#2:584\n*E\n"
.end annotation


# direct methods
.method public static final -initializeinitializationResponse(Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/InitializationResponseKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationResponseKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->newBuilder()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/InitializationResponseKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;)Lgatewayprotocol/v1/InitializationResponseKt$Dsl;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/InitializationResponseKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationResponseKt$Dsl$Companion;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    const-string v1, "toBuilder(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/InitializationResponseKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;)Lgatewayprotocol/v1/InitializationResponseKt$Dsl;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationResponseKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final getErrorOrNull(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-interface {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;->hasError()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getNativeConfigurationOrNull(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-interface {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;->hasNativeConfiguration()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method
