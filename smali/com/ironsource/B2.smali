###### Class com.ironsource.B2 (com.ironsource.B2)
.class public final Lcom/ironsource/B2;
.super Lcom/ironsource/Kg;
.source "SourceFile"


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuctionWaterfallFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuctionWaterfallFetcher.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/fetch/AuctionWaterfallFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,249:1\n1#2:250\n*E\n"
.end annotation


# instance fields
.field private final e:Lcom/ironsource/T0;

.field private final f:Lcom/ironsource/x0;

.field private final g:Lcom/ironsource/C2;

.field private final h:Lcom/ironsource/cd;

.field private i:Lcom/ironsource/D2;


# direct methods
.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V
    .registers 4

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Kg;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    .line 7
    new-instance v0, Lcom/ironsource/C2;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/C2;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V

    iput-object v0, p0, Lcom/ironsource/B2;->g:Lcom/ironsource/C2;

    .line 11
    invoke-virtual {v0}, Lcom/ironsource/C2;->b()Lcom/ironsource/p2;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/B2;->h:Lcom/ironsource/cd;

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/B2;)Lcom/ironsource/T0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    return-object p0
.end method

.method public static final synthetic a(Lcom/ironsource/B2;Lcom/ironsource/D2;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/ironsource/B2;->i:Lcom/ironsource/D2;

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
    .registers 10

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/ironsource/B2;->a(Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .registers 15

    .line 3
    invoke-direct/range {p0 .. p14}, Lcom/ironsource/B2;->a(Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    return-void
.end method

.method private final a(Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
    .registers 18

    .line 88
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 89
    iget-object v1, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auction failed (error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p9, :cond_30

    .line 94
    invoke-virtual {p0}, Lcom/ironsource/Kg;->c()V

    .line 97
    :cond_30
    iget-object v0, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->e()Lcom/ironsource/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/A2;->n()Z

    move-result v0

    .line 98
    sget-object v1, Lcom/ironsource/i2;->a:Lcom/ironsource/i2;

    invoke-virtual {v1, v0}, Lcom/ironsource/i2;->a(Z)Ljava/lang/String;

    move-result-object v7

    .line 99
    new-instance v2, Lcom/ironsource/v2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p5

    move-object v3, v7

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/v2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/y2;ILjava/lang/String;)V

    move-object v7, v3

    .line 101
    iget-object v1, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    invoke-virtual {v1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    .line 102
    new-instance v3, Lcom/ironsource/e2;

    invoke-direct {v3, v2}, Lcom/ironsource/e2;-><init>(Lcom/ironsource/v2;)V

    invoke-virtual {v1, v3}, Lcom/ironsource/E5;->a(Lcom/ironsource/D0;)V

    .line 103
    invoke-virtual {v1}, Lcom/ironsource/E5;->b()Lcom/ironsource/b2;

    move-result-object v1

    move-wide v2, p7

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/ironsource/b2;->a(JILjava/lang/String;)V

    if-eqz v0, :cond_6c

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move-object v6, p6

    .line 107
    invoke-direct/range {v2 .. v7}, Lcom/ironsource/B2;->a(Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_6c
    invoke-direct {p0, p2}, Lcom/ironsource/B2;->a(Lcom/ironsource/Lg;)V

    return-void
.end method

.method private final a(Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 175
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Moving to fallback waterfall"

    invoke-static {v1, v4, v2, v3, v2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 176
    new-instance v2, Lcom/ironsource/Lc;

    iget-object v0, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    iget-object v1, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-direct {v2, v0, v1}, Lcom/ironsource/Lc;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V

    move-object v7, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 177
    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/Lc;->a(Lcom/ironsource/Lg;ILjava/lang/String;Ljava/lang/String;Lcom/ironsource/D;)V

    return-void
.end method

.method private final a(Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/D;",
            "Lcom/ironsource/Lg;",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            "Lcom/ironsource/A;",
            ")V"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, v3, v2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 69
    new-instance v2, Lcom/ironsource/v2;

    const-string v7, ""

    move-object v3, p5

    move-object v5, p6

    move-object v4, p7

    move/from16 v6, p9

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/v2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/y2;ILjava/lang/String;)V

    .line 71
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_30

    .line 72
    iget-object p5, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    invoke-virtual {p5}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p5

    invoke-virtual {p5}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object p5

    move/from16 p6, p12

    move-object/from16 v0, p13

    invoke-virtual {p5, p6, v0}, Lcom/ironsource/pg;->a(ILjava/lang/String;)V

    :cond_30
    move-object/from16 p5, p8

    .line 76
    invoke-direct {p0, p5}, Lcom/ironsource/B2;->a(Lorg/json/JSONObject;)V

    move-object v6, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p14

    move-object v5, v2

    move-object v2, p0

    .line 79
    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/Kg;->a(Ljava/util/List;Ljava/util/Map;Lcom/ironsource/v2;Lcom/ironsource/D;Lcom/ironsource/A;)Lcom/ironsource/Mg;

    move-result-object p1

    .line 81
    iget-object p3, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    invoke-virtual {p3}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p3

    new-instance p4, Lcom/ironsource/e2;

    invoke-direct {p4, v5}, Lcom/ironsource/e2;-><init>(Lcom/ironsource/v2;)V

    invoke-virtual {p3, p4}, Lcom/ironsource/E5;->a(Lcom/ironsource/D0;)V

    .line 82
    iget-object p3, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    invoke-virtual {p3}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/E5;->b()Lcom/ironsource/b2;

    move-result-object p3

    .line 83
    iget-object p4, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {p4}, Lcom/ironsource/x0;->w()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/ironsource/Mg;->c()I

    move-result p5

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ";wtf="

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    move-wide/from16 p5, p10

    .line 84
    invoke-virtual {p3, p5, p6, p4}, Lcom/ironsource/b2;->a(JLjava/lang/String;)V

    .line 86
    iget-object p3, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    invoke-virtual {p3}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/E5;->b()Lcom/ironsource/b2;

    move-result-object p3

    invoke-virtual {p1}, Lcom/ironsource/Mg;->d()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ironsource/b2;->c(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/ironsource/B2;->a(Lcom/ironsource/Mg;Lcom/ironsource/Lg;)V

    return-void
.end method

.method private final a(Lcom/ironsource/Lg;)V
    .registers 4

    const/16 v0, 0x1fd

    .line 178
    const-string v1, "Mediation No fill"

    invoke-interface {p1, v0, v1}, Lcom/ironsource/Lg;->a(ILjava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/ironsource/Mg;Lcom/ironsource/Lg;)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/T0;->h()Lcom/ironsource/Q0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/Q0;->a(Lcom/ironsource/Mg;)V

    .line 112
    invoke-interface {p2, p1}, Lcom/ironsource/Lg;->a(Lcom/ironsource/Mg;)V

    return-void
.end method

.method private final a(Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, "bidderExclusive"

    const-string v1, "parallelLoad"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez p1, :cond_36

    .line 113
    iget-object p1, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {p1, v2}, Lcom/ironsource/x0;->b(Z)V

    .line 114
    iget-object p1, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {p1, v4}, Lcom/ironsource/x0;->a(Lcom/ironsource/Eb;)V

    .line 115
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 116
    iget-object v0, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    .line 119
    iget-object v1, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->w()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading configuration from auction response is null, using the following: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1, v4, v3, v4}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 129
    :cond_36
    :try_start_36
    iget-object v5, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    .line 130
    sget-object v6, Lcom/ironsource/Eb;->b:Lcom/ironsource/Eb$a;

    const-string v7, "loadGrace"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ironsource/Eb$a;->a(Lorg/json/JSONObject;)Lcom/ironsource/Eb;

    move-result-object v6

    .line 131
    invoke-virtual {v5, v6}, Lcom/ironsource/x0;->a(Lcom/ironsource/Eb;)V

    .line 133
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 134
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5e

    .line 136
    iget-object v5, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v5, v1}, Lcom/ironsource/x0;->a(I)V

    goto :goto_5e

    :catchall_59
    move-exception p1

    goto/16 :goto_f7

    :catch_5c
    move-exception p1

    goto :goto_b4

    .line 139
    :cond_5e
    :goto_5e
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 140
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v1, v0}, Lcom/ironsource/x0;->a(Z)V

    goto :goto_97

    .line 142
    :cond_6e
    iget-object v0, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->h()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 143
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/u5;->n()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 144
    iget-object v0, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->l()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/x0;->a(I)V

    .line 148
    :cond_97
    :goto_97
    const-string v0, "showPriorityEnabled"

    .line 149
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 152
    iget-object v0, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v0, p1}, Lcom/ironsource/x0;->b(Z)V
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_a2} :catch_5c
    .catchall {:try_start_36 .. :try_end_a2} :catchall_59

    .line 161
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v0, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    iget-object v1, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v3, v4}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 162
    :goto_b4
    :try_start_b4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 163
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 165
    iget-object v1, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to update loading configuration for"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_b4 .. :try_end_e7} :catchall_59

    .line 174
    iget-object p1, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    iget-object v1, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4, v3, v4}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    :goto_f7
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/B2;->e:Lcom/ironsource/T0;

    iget-object v2, p0, Lcom/ironsource/B2;->f:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v3, v4}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/ironsource/cd;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/ironsource/B2;->h:Lcom/ironsource/cd;

    return-object v0
.end method

.method public a(Lcom/ironsource/D;Lcom/ironsource/Lg;)V
    .registers 4

    const-string v0, "adInstanceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waterfallFetcherListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/ironsource/B2$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/B2$a;-><init>(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;)V

    .line 65
    iget-object p1, p0, Lcom/ironsource/B2;->g:Lcom/ironsource/C2;

    invoke-virtual {p1, v0}, Lcom/ironsource/C2;->a(Lcom/ironsource/D2;)V

    .line 66
    iput-object v0, p0, Lcom/ironsource/B2;->i:Lcom/ironsource/D2;

    return-void
.end method

###### Class com.ironsource.B2.a (com.ironsource.B2$a)
.class public final Lcom/ironsource/B2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/D2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/B2;->a(Lcom/ironsource/D;Lcom/ironsource/Lg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/B2;

.field final synthetic b:Lcom/ironsource/D;

.field final synthetic c:Lcom/ironsource/Lg;


# direct methods
.method public static synthetic $r8$lambda$AnjpRc9T3qqxWQX7P3Yy5NqahjY(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .registers 15

    .line 0
    invoke-static/range {p0 .. p14}, Lcom/ironsource/B2$a;->a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FyB2NRQ6ezM7wwQe_Eo8LHP-Y_Q(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
    .registers 10

    .line 0
    invoke-static/range {p0 .. p9}, Lcom/ironsource/B2$a;->a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    iput-object p2, p0, Lcom/ironsource/B2$a;->b:Lcom/ironsource/D;

    iput-object p3, p0, Lcom/ironsource/B2$a;->c:Lcom/ironsource/Lg;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
    .registers 11

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;Lcom/ironsource/D2;)V

    .line 6
    invoke-static/range {p0 .. p9}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .registers 16

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;Lcom/ironsource/D2;)V

    .line 3
    invoke-static/range {p0 .. p14}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    const-string v0, "errorReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/B2$a;->c:Lcom/ironsource/Lg;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/Lg;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
    .registers 20

    const-string v0, "auctionFallback"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    invoke-static {v0}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;)Lcom/ironsource/T0;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    iget-object v3, p0, Lcom/ironsource/B2$a;->b:Lcom/ironsource/D;

    iget-object v4, p0, Lcom/ironsource/B2$a;->c:Lcom/ironsource/Lg;

    new-instance v1, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            "Lcom/ironsource/A;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "newWaterfall"

    move-object/from16 v6, p1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adInstancePayloads"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "auctionId"

    move-object/from16 v8, p3

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    invoke-static {v1}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;)Lcom/ironsource/T0;

    move-result-object v1

    iget-object v3, v0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    iget-object v4, v0, Lcom/ironsource/B2$a;->b:Lcom/ironsource/D;

    iget-object v5, v0, Lcom/ironsource/B2$a;->c:Lcom/ironsource/Lg;

    new-instance v2, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p8

    move/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v2 .. v17}, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.ironsource.B2$a$$ExternalSyntheticLambda0 (com.ironsource.B2$a$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/B2;

.field public final synthetic f$1:Lcom/ironsource/D;

.field public final synthetic f$10:J

.field public final synthetic f$11:I

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$13:Lcom/ironsource/A;

.field public final synthetic f$2:Lcom/ironsource/Lg;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/Map;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/ironsource/y2;

.field public final synthetic f$7:Lorg/json/JSONObject;

.field public final synthetic f$8:Lorg/json/JSONObject;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .registers 16

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/B2;

    iput-object p2, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/D;

    iput-object p3, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/Lg;

    iput-object p4, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$4:Ljava/util/Map;

    iput-object p6, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$6:Lcom/ironsource/y2;

    iput-object p8, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$7:Lorg/json/JSONObject;

    iput-object p9, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$8:Lorg/json/JSONObject;

    iput p10, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$9:I

    iput-wide p11, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$10:J

    iput p13, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$11:I

    iput-object p14, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$12:Ljava/lang/String;

    iput-object p15, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$13:Lcom/ironsource/A;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 0
    iget-object v0, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/B2;

    iget-object v1, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/D;

    iget-object v2, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/Lg;

    iget-object v3, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$4:Ljava/util/Map;

    iget-object v5, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$6:Lcom/ironsource/y2;

    iget-object v7, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$7:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$8:Lorg/json/JSONObject;

    iget v9, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$9:I

    iget-wide v10, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$10:J

    iget v12, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$11:I

    iget-object v13, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$12:Ljava/lang/String;

    iget-object v14, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;->f$13:Lcom/ironsource/A;

    invoke-static/range {v0 .. v14}, Lcom/ironsource/B2$a;->$r8$lambda$AnjpRc9T3qqxWQX7P3Yy5NqahjY(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    return-void
.end method

###### Class com.ironsource.B2$a$$ExternalSyntheticLambda1 (com.ironsource.B2$a$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/B2;

.field public final synthetic f$1:Lcom/ironsource/D;

.field public final synthetic f$2:Lcom/ironsource/Lg;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:J

.field public final synthetic f$8:Lcom/ironsource/A;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
    .registers 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/B2;

    iput-object p2, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/D;

    iput-object p3, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$2:Lcom/ironsource/Lg;

    iput p4, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$5:I

    iput-object p7, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    iput-wide p8, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$7:J

    iput-object p10, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$8:Lcom/ironsource/A;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/B2;

    iget-object v1, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/D;

    iget-object v2, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$2:Lcom/ironsource/Lg;

    iget v3, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$5:I

    iget-object v6, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    iget-wide v7, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$7:J

    iget-object v9, p0, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;->f$8:Lcom/ironsource/A;

    invoke-static/range {v0 .. v9}, Lcom/ironsource/B2$a;->$r8$lambda$FyB2NRQ6ezM7wwQe_Eo8LHP-Y_Q(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    return-void
.end method
