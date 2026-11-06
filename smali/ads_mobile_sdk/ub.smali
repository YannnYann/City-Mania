###### Class ads_mobile_sdk.ub (ads_mobile_sdk.ub)
.class public final Lads_mobile_sdk/ub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/rb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rb;)V
    .registers 3

    .line 1
    const-string v0, "adSpamClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ub;->a:Lads_mobile_sdk/rb;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->j:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/tb;

    iget-object v1, p0, Lads_mobile_sdk/ub;->a:Lads_mobile_sdk/rb;

    .line 2
    invoke-virtual {v1}, Lads_mobile_sdk/rb;->g()Lads_mobile_sdk/fa;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lads_mobile_sdk/rb;->i()Landroid/content/Context;

    move-result-object v1

    .line 4
    iget-object v2, v2, Lads_mobile_sdk/fa;->a:Lads_mobile_sdk/ia;

    .line 5
    invoke-virtual {v2, v1}, Lads_mobile_sdk/ia;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6
    const-string v2, "getQuerySignals(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {v0, v1}, Lads_mobile_sdk/tb;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
