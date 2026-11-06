###### Class ads_mobile_sdk.yi2 (ads_mobile_sdk.yi2)
.class public final Lads_mobile_sdk/yi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/m13;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/m13;)V
    .registers 3

    .line 1
    const-string v0, "recursiveAdData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/yi2;->a:Lads_mobile_sdk/m13;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->L:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/xi2;

    iget-object v1, p0, Lads_mobile_sdk/yi2;->a:Lads_mobile_sdk/m13;

    invoke-direct {v0, v1}, Lads_mobile_sdk/xi2;-><init>(Lads_mobile_sdk/m13;)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
