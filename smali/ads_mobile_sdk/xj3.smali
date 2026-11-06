###### Class ads_mobile_sdk.xj3 (ads_mobile_sdk.xj3)
.class public final Lads_mobile_sdk/xj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;

.field public final c:Lads_mobile_sdk/dw2;

.field public final d:Lads_mobile_sdk/dw2;

.field public final e:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lads_mobile_sdk/xj3;->a:Lads_mobile_sdk/dw2;

    .line 46
    iput-object p2, p0, Lads_mobile_sdk/xj3;->b:Lads_mobile_sdk/dw2;

    .line 47
    iput-object p3, p0, Lads_mobile_sdk/xj3;->c:Lads_mobile_sdk/dw2;

    .line 48
    iput-object p4, p0, Lads_mobile_sdk/xj3;->d:Lads_mobile_sdk/dw2;

    .line 49
    iput-object p5, p0, Lads_mobile_sdk/xj3;->e:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/xj3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/na;

    iget-object v0, p0, Lads_mobile_sdk/xj3;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/xj3;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lads_mobile_sdk/rj3;

    iget-object v1, p0, Lads_mobile_sdk/xj3;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lads_mobile_sdk/xj3;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lads_mobile_sdk/ts3;

    .line 3
    new-instance v1, Lads_mobile_sdk/wj3;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/tj3;

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/wj3;-><init>(Lads_mobile_sdk/na;Lads_mobile_sdk/tj3;Lads_mobile_sdk/rj3;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/ts3;)V

    return-object v1
.end method
