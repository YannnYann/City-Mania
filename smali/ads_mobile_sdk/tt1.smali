###### Class ads_mobile_sdk.tt1 (ads_mobile_sdk.tt1)
.class public final Lads_mobile_sdk/tt1;
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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lads_mobile_sdk/tt1;->a:Lads_mobile_sdk/dw2;

    .line 49
    iput-object p2, p0, Lads_mobile_sdk/tt1;->b:Lads_mobile_sdk/dw2;

    .line 50
    iput-object p3, p0, Lads_mobile_sdk/tt1;->c:Lads_mobile_sdk/dw2;

    .line 51
    iput-object p4, p0, Lads_mobile_sdk/tt1;->d:Lads_mobile_sdk/dw2;

    .line 52
    iput-object p5, p0, Lads_mobile_sdk/tt1;->e:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lads_mobile_sdk/tt1;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    iget-object v1, v0, Lads_mobile_sdk/tt1;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lads_mobile_sdk/ja3;

    iget-object v1, v0, Lads_mobile_sdk/tt1;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/concurrent/ExecutorService;

    iget-object v1, v0, Lads_mobile_sdk/tt1;->d:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lads_mobile_sdk/n71;

    iget-object v1, v0, Lads_mobile_sdk/tt1;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/na;

    .line 3
    new-instance v2, Lads_mobile_sdk/st1;

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 9
    invoke-virtual {v1}, Lads_mobile_sdk/na;->P()Lads_mobile_sdk/wt1;

    move-result-object v8

    invoke-virtual {v8}, Lads_mobile_sdk/wt1;->z()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v1}, Lads_mobile_sdk/na;->P()Lads_mobile_sdk/wt1;

    move-result-object v9

    invoke-virtual {v9}, Lads_mobile_sdk/wt1;->w()J

    move-result-wide v9

    .line 11
    invoke-virtual {v1}, Lads_mobile_sdk/na;->P()Lads_mobile_sdk/wt1;

    move-result-object v11

    invoke-virtual {v11}, Lads_mobile_sdk/wt1;->x()J

    move-result-wide v11

    .line 12
    invoke-virtual {v1}, Lads_mobile_sdk/na;->P()Lads_mobile_sdk/wt1;

    move-result-object v13

    invoke-virtual {v13}, Lads_mobile_sdk/wt1;->y()F

    move-result v13

    float-to-double v13, v13

    .line 13
    invoke-virtual {v1}, Lads_mobile_sdk/na;->M()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v1}, Lads_mobile_sdk/na;->L()Lads_mobile_sdk/ma;

    move-result-object v16

    .line 15
    invoke-virtual {v1}, Lads_mobile_sdk/na;->T()Lads_mobile_sdk/kb;

    move-result-object v1

    .line 16
    iget v1, v1, Lads_mobile_sdk/kb;->a:I

    int-to-long v0, v1

    move-wide/from16 v17, v0

    .line 17
    invoke-direct/range {v2 .. v18}, Lads_mobile_sdk/st1;-><init>(Landroid/content/Context;Lads_mobile_sdk/ja3;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/n71;Ljava/util/Random;Ljava/lang/String;JJDLjava/lang/String;Lads_mobile_sdk/ma;J)V

    return-object v2
.end method
