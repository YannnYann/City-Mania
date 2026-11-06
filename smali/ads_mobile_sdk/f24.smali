###### Class ads_mobile_sdk.f24 (ads_mobile_sdk.f24)
.class public final Lads_mobile_sdk/f24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/o24;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Ljava/util/Optional;

.field public final c:Lads_mobile_sdk/zy;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/Optional;Lads_mobile_sdk/zy;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "uiScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalWebView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/f24;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 23
    iput-object p2, p0, Lads_mobile_sdk/f24;->b:Ljava/util/Optional;

    .line 24
    iput-object p3, p0, Lads_mobile_sdk/f24;->c:Lads_mobile_sdk/zy;

    .line 25
    iput-object p4, p0, Lads_mobile_sdk/f24;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)Lkotlin/Unit;
    .registers 12

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/f24;->b:Ljava/util/Optional;

    invoke-static {v0}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/r31;

    if-nez v2, :cond_e

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_e
    if-eqz p1, :cond_13

    .line 5
    const-string v0, "1"

    goto :goto_15

    .line 7
    :cond_13
    const-string v0, "0"

    .line 9
    :goto_15
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "isVisible"

    invoke-virtual {v3, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lads_mobile_sdk/f24;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/e24;

    const/4 v6, 0x0

    move-object v5, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/e24;-><init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;ZLads_mobile_sdk/f24;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    move-object v7, v1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 20
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
