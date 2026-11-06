###### Class ads_mobile_sdk.pp (ads_mobile_sdk.pp)
.class public final Lads_mobile_sdk/pp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lads_mobile_sdk/pp;->a:Z

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->q:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/op;

    iget-boolean v1, p0, Lads_mobile_sdk/pp;->a:Z

    invoke-direct {v0, v1}, Lads_mobile_sdk/op;-><init>(Z)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
