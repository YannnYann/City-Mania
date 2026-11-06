###### Class ads_mobile_sdk.jk1 (ads_mobile_sdk.jk1)
.class public final Lads_mobile_sdk/jk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lads_mobile_sdk/jk1;->a:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/jk1;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/pp;

    .line 3
    const-string v0, "bannerRefreshSignalSource"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lads_mobile_sdk/jb2;

    .line 48
    sget-object v3, Lads_mobile_sdk/lg3;->a:Lads_mobile_sdk/lg3;

    .line 49
    sget-object v4, Lads_mobile_sdk/qf3;->a:Lads_mobile_sdk/qf3;

    .line 50
    sget-object v0, Lads_mobile_sdk/ph3;->a:Lads_mobile_sdk/ph3;

    .line 51
    sget-object v0, Lads_mobile_sdk/kj3;->b:Lads_mobile_sdk/kj3;

    .line 52
    iget-wide v5, v0, Lads_mobile_sdk/kj3;->a:J

    .line 53
    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jb2;-><init>(Lads_mobile_sdk/rh3;Lads_mobile_sdk/lg3;Lads_mobile_sdk/qf3;J)V

    return-object v1
.end method
