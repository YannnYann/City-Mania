###### Class ads_mobile_sdk.c12 (ads_mobile_sdk.c12)
.class public final Lads_mobile_sdk/c12;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/google/gson/JsonObject;

.field public final synthetic b:Lads_mobile_sdk/s02;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;Lads_mobile_sdk/s02;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c12;->a:Lcom/google/gson/JsonObject;

    iput-object p2, p0, Lads_mobile_sdk/c12;->b:Lads_mobile_sdk/s02;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/c12;

    iget-object v0, p0, Lads_mobile_sdk/c12;->a:Lcom/google/gson/JsonObject;

    iget-object v1, p0, Lads_mobile_sdk/c12;->b:Lads_mobile_sdk/s02;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/c12;-><init>(Lcom/google/gson/JsonObject;Lads_mobile_sdk/s02;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/c12;

    iget-object v0, p0, Lads_mobile_sdk/c12;->a:Lcom/google/gson/JsonObject;

    iget-object v1, p0, Lads_mobile_sdk/c12;->b:Lads_mobile_sdk/s02;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/c12;-><init>(Lcom/google/gson/JsonObject;Lads_mobile_sdk/s02;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/c12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    sget-object p1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object p1, p0, Lads_mobile_sdk/c12;->a:Lcom/google/gson/JsonObject;

    const-string v0, "watermark_overlay_png_base64"

    .line 141
    const-string v1, ""

    invoke-static {p1, v0, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lads_mobile_sdk/c12;->b:Lads_mobile_sdk/s02;

    iput-object p1, v0, Lads_mobile_sdk/s02;->v:Ljava/lang/String;

    .line 143
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
