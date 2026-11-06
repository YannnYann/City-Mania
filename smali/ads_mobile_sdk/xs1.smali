###### Class ads_mobile_sdk.xs1 (ads_mobile_sdk.xs1)
.class public final Lads_mobile_sdk/xs1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r31;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lads_mobile_sdk/at1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;IILads_mobile_sdk/at1;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xs1;->a:Lads_mobile_sdk/r31;

    iput p2, p0, Lads_mobile_sdk/xs1;->b:I

    iput p3, p0, Lads_mobile_sdk/xs1;->c:I

    iput-object p4, p0, Lads_mobile_sdk/xs1;->d:Lads_mobile_sdk/at1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/xs1;

    iget-object v1, p0, Lads_mobile_sdk/xs1;->a:Lads_mobile_sdk/r31;

    iget v2, p0, Lads_mobile_sdk/xs1;->b:I

    iget v3, p0, Lads_mobile_sdk/xs1;->c:I

    iget-object v4, p0, Lads_mobile_sdk/xs1;->d:Lads_mobile_sdk/at1;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/xs1;-><init>(Lads_mobile_sdk/r31;IILads_mobile_sdk/at1;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/xs1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/xs1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/xs1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 112
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lads_mobile_sdk/xs1;->a:Lads_mobile_sdk/r31;

    iget v0, p0, Lads_mobile_sdk/xs1;->b:I

    iget v1, p0, Lads_mobile_sdk/xs1;->c:I

    .line 114
    new-instance v2, Lads_mobile_sdk/v14;

    sget-object v3, Lads_mobile_sdk/u14;->b:Lads_mobile_sdk/u14;

    const/16 v4, 0x8

    invoke-direct {v2, v3, v0, v1, v4}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 115
    invoke-virtual {p1, v2}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/v14;)V

    .line 117
    iget-object p1, p0, Lads_mobile_sdk/xs1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-object v0, p0, Lads_mobile_sdk/xs1;->d:Lads_mobile_sdk/at1;

    .line 118
    iget-object v0, v0, Lads_mobile_sdk/at1;->a:Lads_mobile_sdk/ex0;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    const-string v1, "gads:use_wide_viewport:enabled"

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 138
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 139
    iget-object p1, p0, Lads_mobile_sdk/xs1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-object v0, p0, Lads_mobile_sdk/xs1;->d:Lads_mobile_sdk/at1;

    .line 140
    iget-object v0, v0, Lads_mobile_sdk/at1;->a:Lads_mobile_sdk/ex0;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    const-string v1, "gads:load_with_overview_mode:enabled"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 160
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 161
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
