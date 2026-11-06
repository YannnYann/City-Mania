###### Class ads_mobile_sdk.uj3 (ads_mobile_sdk.uj3)
.class public final Lads_mobile_sdk/uj3;
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


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lads_mobile_sdk/uj3;->a:Lads_mobile_sdk/dw2;

    .line 60
    iput-object p2, p0, Lads_mobile_sdk/uj3;->b:Lads_mobile_sdk/dw2;

    .line 61
    iput-object p3, p0, Lads_mobile_sdk/uj3;->c:Lads_mobile_sdk/dw2;

    .line 62
    iput-object p4, p0, Lads_mobile_sdk/uj3;->d:Lads_mobile_sdk/dw2;

    .line 63
    iput-object p5, p0, Lads_mobile_sdk/uj3;->e:Lads_mobile_sdk/dw2;

    .line 64
    iput-object p6, p0, Lads_mobile_sdk/uj3;->f:Lads_mobile_sdk/dw2;

    .line 65
    iput-object p7, p0, Lads_mobile_sdk/uj3;->g:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 10

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/uj3;->a:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v2

    iget-object v0, p0, Lads_mobile_sdk/uj3;->b:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v3

    iget-object v0, p0, Lads_mobile_sdk/uj3;->c:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v4

    iget-object v0, p0, Lads_mobile_sdk/uj3;->d:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v5

    iget-object v0, p0, Lads_mobile_sdk/uj3;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/na;

    iget-object v0, p0, Lads_mobile_sdk/uj3;->f:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lads_mobile_sdk/uj3;->g:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/ts3;

    .line 3
    new-instance v1, Lads_mobile_sdk/tj3;

    invoke-direct/range {v1 .. v8}, Lads_mobile_sdk/tj3;-><init>(Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/na;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/ts3;)V

    return-object v1
.end method
