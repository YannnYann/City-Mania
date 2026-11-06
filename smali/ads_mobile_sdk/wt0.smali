###### Class ads_mobile_sdk.wt0 (ads_mobile_sdk.wt0)
.class public final Lads_mobile_sdk/wt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/jl0;->a:Lads_mobile_sdk/kl0;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lads_mobile_sdk/wt0;->a:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/wt0;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/il0;

    .line 3
    const-string v1, "delayPageClosedGmsgHandler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v1, Lads_mobile_sdk/i50;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i50;-><init>(Lads_mobile_sdk/r41;)V

    return-object v1
.end method
