###### Class ads_mobile_sdk.mh3 (ads_mobile_sdk.mh3)
.class public final Lads_mobile_sdk/mh3;
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

.field public final f:Lads_mobile_sdk/dw2;

.field public final g:Lads_mobile_sdk/dw2;

.field public final h:Lads_mobile_sdk/dw2;

.field public final i:Lads_mobile_sdk/dw2;

.field public final j:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;Lads_mobile_sdk/vh1;Lads_mobile_sdk/vh1;Lads_mobile_sdk/sc3;Lads_mobile_sdk/sc3;Lads_mobile_sdk/sc3;Lads_mobile_sdk/dw2;)V
    .registers 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/mh3;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/mh3;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/mh3;->c:Lads_mobile_sdk/dw2;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/mh3;->d:Lads_mobile_sdk/dw2;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/mh3;->e:Lads_mobile_sdk/dw2;

    .line 8
    iput-object p6, p0, Lads_mobile_sdk/mh3;->f:Lads_mobile_sdk/dw2;

    .line 9
    iput-object p7, p0, Lads_mobile_sdk/mh3;->g:Lads_mobile_sdk/dw2;

    .line 10
    iput-object p8, p0, Lads_mobile_sdk/mh3;->h:Lads_mobile_sdk/dw2;

    .line 11
    iput-object p9, p0, Lads_mobile_sdk/mh3;->i:Lads_mobile_sdk/dw2;

    .line 12
    iput-object p10, p0, Lads_mobile_sdk/mh3;->j:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 13

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/mh3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/common/util/concurrent/ListeningExecutorService;

    iget-object v0, p0, Lads_mobile_sdk/mh3;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/a;

    iget-object v0, p0, Lads_mobile_sdk/mh3;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/yw1;

    iget-object v0, p0, Lads_mobile_sdk/mh3;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/fl3;

    iget-object v0, p0, Lads_mobile_sdk/mh3;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lads_mobile_sdk/mh3;->f:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/xf;

    iget-object v8, p0, Lads_mobile_sdk/mh3;->g:Lads_mobile_sdk/dw2;

    iget-object v9, p0, Lads_mobile_sdk/mh3;->h:Lads_mobile_sdk/dw2;

    iget-object v10, p0, Lads_mobile_sdk/mh3;->i:Lads_mobile_sdk/dw2;

    iget-object v0, p0, Lads_mobile_sdk/mh3;->j:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lads_mobile_sdk/ts3;

    .line 3
    new-instance v1, Lads_mobile_sdk/lh3;

    invoke-direct/range {v1 .. v11}, Lads_mobile_sdk/lh3;-><init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lads_mobile_sdk/a;Lads_mobile_sdk/yw1;Lads_mobile_sdk/fl3;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ts3;)V

    return-object v1
.end method
