###### Class ads_mobile_sdk.Cif (ads_mobile_sdk.if)
.class public final Lads_mobile_sdk/if;
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

.field public final k:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ol0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V
    .registers 12

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/if;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/if;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/if;->c:Lads_mobile_sdk/dw2;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/if;->d:Lads_mobile_sdk/dw2;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/if;->e:Lads_mobile_sdk/dw2;

    .line 8
    iput-object p6, p0, Lads_mobile_sdk/if;->f:Lads_mobile_sdk/dw2;

    .line 9
    iput-object p7, p0, Lads_mobile_sdk/if;->g:Lads_mobile_sdk/dw2;

    .line 10
    iput-object p8, p0, Lads_mobile_sdk/if;->h:Lads_mobile_sdk/dw2;

    .line 11
    iput-object p9, p0, Lads_mobile_sdk/if;->i:Lads_mobile_sdk/dw2;

    .line 12
    iput-object p10, p0, Lads_mobile_sdk/if;->j:Lads_mobile_sdk/dw2;

    .line 13
    iput-object p11, p0, Lads_mobile_sdk/if;->k:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 14

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/if;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lads_mobile_sdk/if;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    iget-object v0, p0, Lads_mobile_sdk/if;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    iget-object v0, p0, Lads_mobile_sdk/if;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/rv1;

    iget-object v0, p0, Lads_mobile_sdk/if;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/kf;

    iget-object v0, p0, Lads_mobile_sdk/if;->f:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/f0;

    iget-object v0, p0, Lads_mobile_sdk/if;->g:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/pn;

    iget-object v0, p0, Lads_mobile_sdk/if;->h:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lads_mobile_sdk/tx;

    iget-object v0, p0, Lads_mobile_sdk/if;->i:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lads_mobile_sdk/ex0;

    iget-object v0, p0, Lads_mobile_sdk/if;->j:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lads_mobile_sdk/g83;

    iget-object v0, p0, Lads_mobile_sdk/if;->k:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lads_mobile_sdk/ja1;

    .line 3
    new-instance v1, Lads_mobile_sdk/hf;

    invoke-direct/range {v1 .. v12}, Lads_mobile_sdk/hf;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Lads_mobile_sdk/rv1;Lads_mobile_sdk/kf;Lads_mobile_sdk/f0;Lads_mobile_sdk/pn;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Lads_mobile_sdk/ja1;)V

    return-object v1
.end method
