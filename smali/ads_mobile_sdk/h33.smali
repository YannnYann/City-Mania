###### Class ads_mobile_sdk.h33 (ads_mobile_sdk.h33)
.class public final Lads_mobile_sdk/h33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/g33;


# instance fields
.field public a:Lads_mobile_sdk/g33;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/e33;)V
    .registers 3

    .line 1
    const-string v0, "refreshListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/h33;->a:Lads_mobile_sdk/g33;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/h33;->a:Lads_mobile_sdk/g33;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1, p2}, Lads_mobile_sdk/g33;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_f

    return-object p1

    :cond_f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 42
    :cond_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 37
    iget-object v0, p0, Lads_mobile_sdk/h33;->a:Lads_mobile_sdk/g33;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1}, Lads_mobile_sdk/g33;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_f

    return-object p1

    :cond_f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 38
    :cond_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final c(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 45
    iget-object v0, p0, Lads_mobile_sdk/h33;->a:Lads_mobile_sdk/g33;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1, p2}, Lads_mobile_sdk/g33;->c(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_f

    return-object p1

    :cond_f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 46
    :cond_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final f()V
    .registers 2

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lads_mobile_sdk/h33;->a:Lads_mobile_sdk/g33;

    return-void
.end method
