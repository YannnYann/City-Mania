###### Class ads_mobile_sdk.xz2 (ads_mobile_sdk.xz2)
.class public final Lads_mobile_sdk/xz2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/zz2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zz2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xz2;->a:Lads_mobile_sdk/zz2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 94
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 95
    const-string v0, "targetPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lads_mobile_sdk/xz2;->a:Lads_mobile_sdk/zz2;

    invoke-virtual {v0}, Lads_mobile_sdk/zz2;->f()Lads_mobile_sdk/ao2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    const-string v1, "position"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    iget-object v1, v0, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    if-nez v1, :cond_1a

    goto :goto_3e

    .line 618
    :cond_1a
    iget-object v2, v0, Lads_mobile_sdk/ao2;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/un2;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, p1, v4}, Lads_mobile_sdk/un2;-><init>(Lads_mobile_sdk/do2;Lads_mobile_sdk/ao2;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;Lkotlin/coroutines/Continuation;)V

    move-object p1, v3

    .line 619
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 620
    const-string v0, "<this>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, p1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 879
    :goto_3e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
