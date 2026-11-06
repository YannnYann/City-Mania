###### Class ads_mobile_sdk.fx1 (ads_mobile_sdk.fx1)
.class public final Lads_mobile_sdk/fx1;
.super Lads_mobile_sdk/rr3;
.source "SourceFile"


# instance fields
.field public final g:Lads_mobile_sdk/uj2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;Lads_mobile_sdk/ks3;IILads_mobile_sdk/rr3;Z)V
    .registers 29

    .line 1
    const-string v0, "cuiName"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v5, p7

    move/from16 v8, p8

    .line 24
    invoke-direct/range {v1 .. v8}, Lads_mobile_sdk/rr3;-><init>(Lads_mobile_sdk/s11;Lads_mobile_sdk/ks3;Ljava/util/UUID;Lads_mobile_sdk/rr3;JZ)V

    .line 34
    new-instance v1, Lads_mobile_sdk/uj2;

    if-eqz p7, :cond_33

    .line 40
    invoke-virtual/range {p7 .. p7}, Lads_mobile_sdk/rr3;->c()I

    move-result v0

    :goto_31
    move v7, v0

    goto :goto_35

    :cond_33
    const/4 v0, -0x1

    goto :goto_31

    .line 42
    :goto_35
    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/rr3;->f()J

    move-result-wide v9

    .line 43
    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/rr3;->f()J

    move-result-wide v2

    sget-wide v4, Lads_mobile_sdk/xl;->a:J

    sub-long v11, v2, v4

    .line 45
    sget-wide v2, Lads_mobile_sdk/xl;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_4d

    const-wide/16 v2, -0x1

    :goto_4b
    move-wide v13, v2

    goto :goto_55

    .line 48
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/rr3;->f()J

    move-result-wide v2

    sget-wide v4, Lads_mobile_sdk/xl;->b:J

    sub-long/2addr v2, v4

    goto :goto_4b

    :goto_55
    const/16 v18, 0x0

    const/16 v19, -0x800

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move/from16 v8, p5

    move/from16 v2, p6

    move/from16 v15, p8

    .line 49
    invoke-direct/range {v1 .. v19}, Lads_mobile_sdk/uj2;-><init>(ILads_mobile_sdk/ks3;Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;IIJJJZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    move-object v0, v1

    move-object/from16 v1, p0

    iput-object v0, v1, Lads_mobile_sdk/fx1;->g:Lads_mobile_sdk/uj2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;
    .registers 14

    .line 1
    const-string v0, "cuiName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lads_mobile_sdk/fx1;

    .line 58
    iget-object v0, p0, Lads_mobile_sdk/fx1;->g:Lads_mobile_sdk/uj2;

    .line 59
    iget-object v4, v0, Lads_mobile_sdk/uj2;->e:Ljava/util/UUID;

    .line 60
    iget-object v5, p0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 61
    iget v2, v0, Lads_mobile_sdk/uj2;->g:I

    add-int/lit8 v6, v2, 0x1

    .line 62
    iget v0, v0, Lads_mobile_sdk/uj2;->a:I

    add-int/lit8 v7, v0, 0x1

    move-object v8, p0

    move-object v2, p1

    move-object v3, p2

    move v9, p3

    .line 63
    invoke-direct/range {v1 .. v9}, Lads_mobile_sdk/fx1;-><init>(Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;Lads_mobile_sdk/ks3;IILads_mobile_sdk/rr3;Z)V

    return-object v1
.end method

.method public final e()Lads_mobile_sdk/uj2;
    .registers 2

    .line 27
    iget-object v0, p0, Lads_mobile_sdk/fx1;->g:Lads_mobile_sdk/uj2;

    return-object v0
.end method

.method public final h()V
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/fx1;->g:Lads_mobile_sdk/uj2;

    .line 3
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    .line 4
    iget-wide v4, p0, Lads_mobile_sdk/rr3;->c:J

    .line 5
    invoke-static {v4, v5, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v1

    .line 6
    iput-wide v1, v0, Lads_mobile_sdk/uj2;->p:J

    return-void
.end method
