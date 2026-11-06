###### Class ads_mobile_sdk.r04 (ads_mobile_sdk.r04)
.class public final Lads_mobile_sdk/r04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/gj1;


# instance fields
.field public final a:Lads_mobile_sdk/r14;

.field public final b:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r14;Lads_mobile_sdk/ex0;)V
    .registers 4

    .line 1
    const-string v0, "webViewProfileWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lads_mobile_sdk/r04;->a:Lads_mobile_sdk/r14;

    iput-object p2, p0, Lads_mobile_sdk/r04;->b:Lads_mobile_sdk/ex0;

    return-void
.end method


# virtual methods
.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 17
    iget-object p1, p0, Lads_mobile_sdk/r04;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string v0, "key"

    const-string v1, "gads:webview_optimize_profile:enabled"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v1, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 36
    iget-object p1, p0, Lads_mobile_sdk/r04;->a:Lads_mobile_sdk/r14;

    invoke-virtual {p1}, Lads_mobile_sdk/r14;->i()V

    .line 38
    :cond_21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
