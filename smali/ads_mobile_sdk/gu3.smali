###### Class ads_mobile_sdk.gu3 (ads_mobile_sdk.gu3)
.class public final Lads_mobile_sdk/gu3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r31;

.field public final synthetic b:Landroid/widget/Toolbar;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Landroid/widget/Toolbar;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gu3;->a:Lads_mobile_sdk/r31;

    iput-object p2, p0, Lads_mobile_sdk/gu3;->b:Landroid/widget/Toolbar;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/gu3;

    iget-object v0, p0, Lads_mobile_sdk/gu3;->a:Lads_mobile_sdk/r31;

    iget-object v1, p0, Lads_mobile_sdk/gu3;->b:Landroid/widget/Toolbar;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/gu3;-><init>(Lads_mobile_sdk/r31;Landroid/widget/Toolbar;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/gu3;

    iget-object v0, p0, Lads_mobile_sdk/gu3;->a:Lads_mobile_sdk/r31;

    iget-object v1, p0, Lads_mobile_sdk/gu3;->b:Landroid/widget/Toolbar;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/gu3;-><init>(Lads_mobile_sdk/r31;Landroid/widget/Toolbar;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/gu3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 205
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 206
    iget-object p1, p0, Lads_mobile_sdk/gu3;->a:Lads_mobile_sdk/r31;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object v0, p0, Lads_mobile_sdk/gu3;->b:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method
