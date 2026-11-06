###### Class ads_mobile_sdk.uf2 (ads_mobile_sdk.uf2)
.class public final Lads_mobile_sdk/uf2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public synthetic a:Lads_mobile_sdk/k9;

.field public final synthetic b:Lads_mobile_sdk/vf2;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf2;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/uf2;->b:Lads_mobile_sdk/vf2;

    iput-object p2, p0, Lads_mobile_sdk/uf2;->c:Landroid/view/View;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Lads_mobile_sdk/r31;

    check-cast p2, Lads_mobile_sdk/k9;

    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/uf2;

    iget-object v0, p0, Lads_mobile_sdk/uf2;->b:Lads_mobile_sdk/vf2;

    iget-object v1, p0, Lads_mobile_sdk/uf2;->c:Landroid/view/View;

    invoke-direct {p1, v0, v1, p3}, Lads_mobile_sdk/uf2;-><init>(Lads_mobile_sdk/vf2;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lads_mobile_sdk/uf2;->a:Lads_mobile_sdk/k9;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/uf2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 241
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/uf2;->a:Lads_mobile_sdk/k9;

    .line 242
    iget-object v0, p0, Lads_mobile_sdk/uf2;->b:Lads_mobile_sdk/vf2;

    .line 243
    iget-object v0, v0, Lads_mobile_sdk/vf2;->f:Lads_mobile_sdk/kd2;

    .line 244
    iget-object v1, p0, Lads_mobile_sdk/uf2;->c:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/kd2;->a(Lads_mobile_sdk/k9;Landroid/view/View;)Lkotlin/Unit;

    .line 245
    iget-object p1, p0, Lads_mobile_sdk/uf2;->b:Lads_mobile_sdk/vf2;

    .line 246
    iget-object p1, p1, Lads_mobile_sdk/vf2;->n:Ljava/util/List;

    .line 247
    iget-object v0, p0, Lads_mobile_sdk/uf2;->c:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
