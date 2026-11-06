###### Class ads_mobile_sdk.qo0 (ads_mobile_sdk.qo0)
.class public final Lads_mobile_sdk/qo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/q52;


# instance fields
.field public final a:Lads_mobile_sdk/fl1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/fl1;)V
    .registers 3

    .line 1
    const-string v0, "internalJavascriptEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lads_mobile_sdk/qo0;->a:Lads_mobile_sdk/fl1;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/nr1;
    .registers 2

    .line 183
    iget-object v0, p0, Lads_mobile_sdk/qo0;->a:Lads_mobile_sdk/fl1;

    .line 184
    iget-object v0, v0, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    .line 185
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 94
    iget-object p2, p0, Lads_mobile_sdk/qo0;->a:Lads_mobile_sdk/fl1;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p2, p1, v0, p3}, Lads_mobile_sdk/fl1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_f

    return-object p1

    :cond_f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 92
    iget-object v0, p0, Lads_mobile_sdk/qo0;->a:Lads_mobile_sdk/fl1;

    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/fl1;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 283
    iget-object v0, p0, Lads_mobile_sdk/qo0;->a:Lads_mobile_sdk/fl1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fl1;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
