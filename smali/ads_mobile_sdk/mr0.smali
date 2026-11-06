###### Class ads_mobile_sdk.mr0 (ads_mobile_sdk.mr0)
.class public final Lads_mobile_sdk/mr0;
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
.method public constructor <init>(Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/md0;Lads_mobile_sdk/vh1;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/mr0;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/mr0;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/mr0;->c:Lads_mobile_sdk/dw2;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/mr0;->d:Lads_mobile_sdk/dw2;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/mr0;->e:Lads_mobile_sdk/dw2;

    .line 8
    iput-object p6, p0, Lads_mobile_sdk/mr0;->f:Lads_mobile_sdk/dw2;

    .line 9
    iput-object p7, p0, Lads_mobile_sdk/mr0;->g:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 10

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/mr0;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lads_mobile_sdk/mr0;->b:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v3

    iget-object v0, p0, Lads_mobile_sdk/mr0;->c:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v4

    iget-object v0, p0, Lads_mobile_sdk/mr0;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/hl3;

    iget-object v0, p0, Lads_mobile_sdk/mr0;->e:Lads_mobile_sdk/dw2;

    invoke-static {v0}, Lads_mobile_sdk/do0;->a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;

    move-result-object v6

    iget-object v7, p0, Lads_mobile_sdk/mr0;->f:Lads_mobile_sdk/dw2;

    iget-object v0, p0, Lads_mobile_sdk/mr0;->g:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/na;

    .line 3
    new-instance v1, Lads_mobile_sdk/kr0;

    invoke-direct/range {v1 .. v8}, Lads_mobile_sdk/kr0;-><init>(Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/hl3;Lads_mobile_sdk/ks1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/na;)V

    return-object v1
.end method
