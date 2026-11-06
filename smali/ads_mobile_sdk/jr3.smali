###### Class ads_mobile_sdk.jr3 (ads_mobile_sdk.jr3)
.class public final Lads_mobile_sdk/jr3;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Map;

.field public final g:Lads_mobile_sdk/fl3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/fl3;Ljava/util/Map;Lads_mobile_sdk/ts3;)V
    .registers 13

    .line 60
    sget-object v0, Lads_mobile_sdk/lq0;->A:Lads_mobile_sdk/lq0;

    .line 63
    invoke-virtual {p5, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 64
    const-string v2, "//yzYZ1sObODOuJVRUkTv/8xSmTDNf3CUi9s5msjbPeqhsxxt6fWwuCvPvazrIKE"

    const-string v3, "nOhJ0hE2Nx8yeQtcKLaGdM30AUThZhyn71DvNE+XkMw="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 70
    iput-object p4, v1, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 71
    iput-object p3, v1, Lads_mobile_sdk/jr3;->g:Lads_mobile_sdk/fl3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 16

    const/16 v0, 0x9

    .line 74
    new-array v1, v0, [Ljava/lang/Long;

    const-wide/16 v2, -0x1

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    iget-object v3, p0, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 77
    const-string v4, "tcq"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 78
    iget-object v3, p0, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 79
    const-string v5, "tpq"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    .line 80
    iget-object v3, p0, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 81
    const-string v6, "tcv"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v6, 0x2

    aput-object v3, v1, v6

    .line 82
    iget-object v3, p0, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 83
    const-string v7, "tpv"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v7, 0x3

    aput-object v3, v1, v7

    .line 84
    iget-object v3, p0, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 86
    const-string v8, "tchv"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 87
    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v8, 0x4

    aput-object v3, v1, v8

    .line 89
    iget-object v3, p0, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 91
    const-string v9, "tphv"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 92
    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v9, 0x5

    aput-object v3, v1, v9

    .line 94
    iget-object v3, p0, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 95
    const-string v10, "tcc"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v10, 0x6

    aput-object v3, v1, v10

    .line 96
    iget-object v3, p0, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 97
    const-string v11, "tpc"

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v11, 0x7

    aput-object v3, v1, v11

    .line 98
    iget-object v3, p0, Lads_mobile_sdk/jr3;->f:Ljava/util/Map;

    .line 99
    const-string v12, "tst"

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/16 v12, 0x8

    aput-object v3, v1, v12

    move v3, v4

    :goto_ba
    if-ge v3, v0, :cond_c5

    .line 102
    aget-object v12, v1, v3

    if-nez v12, :cond_c2

    .line 103
    aput-object v2, v1, v3

    :cond_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 109
    :cond_c5
    iget-object v0, p0, Lads_mobile_sdk/jr3;->g:Lads_mobile_sdk/fl3;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    .line 112
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    .line 115
    monitor-enter p2

    .line 116
    :try_start_e2
    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->l(J)V

    .line 117
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->J(J)V

    .line 118
    aget-object v0, p1, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->I(J)V

    .line 119
    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->H(J)V

    .line 120
    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->o(J)V

    .line 121
    aget-object v0, p1, v9

    .line 122
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 123
    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->n(J)V

    .line 125
    aget-object v0, p1, v10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->j(J)V

    .line 126
    aget-object p1, p1, v11

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->k(J)V

    .line 127
    monitor-exit p2

    return-void

    :catchall_12c
    move-exception p1

    .line 128
    monitor-exit p2
    :try_end_12e
    .catchall {:try_start_e2 .. :try_end_12e} :catchall_12c

    throw p1
.end method
