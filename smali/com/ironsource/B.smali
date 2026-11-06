###### Class com.ironsource.B (com.ironsource.B)
.class public final Lcom/ironsource/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/x0;

.field private final b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field private final c:Lcom/ironsource/v2;

.field private final d:Lcom/ironsource/c1;

.field private e:Lcom/ironsource/y2;

.field private final f:I

.field private final g:Z

.field private final h:Lcom/ironsource/I;

.field private final i:Lcom/ironsource/mediationsdk/IronSource$a;

.field private final j:Lorg/json/JSONObject;

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:Ljava/lang/String;

.field private final n:Lcom/ironsource/y2;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:I

.field private final r:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;


# direct methods
.method public constructor <init>(Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/v2;Lcom/ironsource/c1;Lcom/ironsource/y2;IZ)V
    .registers 9

    const-string v0, "adUnitData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionResponseItem"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/B;->a:Lcom/ironsource/x0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/B;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 4
    iput-object p3, p0, Lcom/ironsource/B;->c:Lcom/ironsource/v2;

    .line 5
    iput-object p4, p0, Lcom/ironsource/B;->d:Lcom/ironsource/c1;

    .line 6
    iput-object p5, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    .line 7
    iput p6, p0, Lcom/ironsource/B;->f:I

    .line 9
    iput-boolean p7, p0, Lcom/ironsource/B;->g:Z

    .line 12
    new-instance p2, Lcom/ironsource/I;

    sget-object p5, Lcom/ironsource/r0$a;->a:Lcom/ironsource/r0$a;

    invoke-direct {p2, p5}, Lcom/ironsource/I;-><init>(Lcom/ironsource/r0$a;)V

    iput-object p2, p0, Lcom/ironsource/B;->h:Lcom/ironsource/I;

    .line 14
    invoke-virtual {p1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/B;->i:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 15
    invoke-virtual {p3}, Lcom/ironsource/v2;->h()Lorg/json/JSONObject;

    move-result-object p5

    iput-object p5, p0, Lcom/ironsource/B;->j:Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p3}, Lcom/ironsource/v2;->g()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/ironsource/B;->k:Ljava/lang/String;

    .line 17
    invoke-virtual {p3}, Lcom/ironsource/v2;->i()I

    move-result p5

    iput p5, p0, Lcom/ironsource/B;->l:I

    .line 18
    invoke-virtual {p3}, Lcom/ironsource/v2;->f()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/ironsource/B;->m:Ljava/lang/String;

    .line 19
    invoke-virtual {p3}, Lcom/ironsource/v2;->j()Lcom/ironsource/y2;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/B;->n:Lcom/ironsource/y2;

    .line 21
    invoke-virtual {p4}, Lcom/ironsource/c1;->f()Ljava/lang/String;

    move-result-object p3

    const-string p5, "getProviderName(...)"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ironsource/B;->o:Ljava/lang/String;

    .line 22
    sget-object p5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Lcom/ironsource/B;->hashCode()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p3

    const/4 p5, 0x2

    invoke-static {p3, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    const-string p5, "%s %s"

    invoke-static {p5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "format(...)"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ironsource/B;->p:Ljava/lang/String;

    .line 23
    invoke-virtual {p4}, Lcom/ironsource/c1;->d()I

    move-result p3

    iput p3, p0, Lcom/ironsource/B;->q:I

    .line 26
    iget-object p3, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    invoke-virtual {p3}, Lcom/ironsource/y2;->k()Ljava/lang/String;

    move-result-object p3

    .line 27
    iget-object p5, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    invoke-virtual {p5}, Lcom/ironsource/y2;->a()Lorg/json/JSONObject;

    move-result-object p5

    invoke-static {p5}, Lcom/ironsource/pa;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p5

    const-string p6, "jsonObjectToMap(...)"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-string p7, "adUnit"

    invoke-interface {p5, p7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-virtual {p4}, Lcom/ironsource/c1;->c()Lorg/json/JSONObject;

    move-result-object p4

    invoke-static {p4}, Lcom/ironsource/pa;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p4

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 31
    invoke-virtual {p1}, Lcom/ironsource/x0;->s()Ljava/lang/String;

    move-result-object p4

    const-string p6, "userId"

    invoke-interface {p5, p6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object p1

    const-string p4, "adUnitId"

    invoke-interface {p5, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p4, "isMultipleAdUnits"

    invoke-interface {p5, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-direct {p1, p3, p2, p5}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 35
    iput-object p1, p0, Lcom/ironsource/B;->r:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/v2;Lcom/ironsource/c1;Lcom/ironsource/y2;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 19

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    move v8, v0

    :goto_6
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    goto :goto_11

    :cond_e
    move/from16 v8, p7

    goto :goto_6

    .line 36
    :goto_11
    invoke-direct/range {v1 .. v8}, Lcom/ironsource/B;-><init>(Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/v2;Lcom/ironsource/c1;Lcom/ironsource/y2;IZ)V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/B;Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/v2;Lcom/ironsource/c1;Lcom/ironsource/y2;IZILjava/lang/Object;)Lcom/ironsource/B;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/B;->a:Lcom/ironsource/x0;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/ironsource/B;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-object p3, p0, Lcom/ironsource/B;->c:Lcom/ironsource/v2;

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lcom/ironsource/B;->d:Lcom/ironsource/c1;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p5, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget p6, p0, Lcom/ironsource/B;->f:I

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-boolean p7, p0, Lcom/ironsource/B;->g:Z

    :cond_2a
    move p8, p6

    move p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/ironsource/B;->a(Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/v2;Lcom/ironsource/c1;Lcom/ironsource/y2;IZ)Lcom/ironsource/B;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/v2;Lcom/ironsource/c1;Lcom/ironsource/y2;IZ)Lcom/ironsource/B;
    .registers 17

    .line 2
    const-string v0, "adUnitData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionResponseItem"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/B;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/B;-><init>(Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/v2;Lcom/ironsource/c1;Lcom/ironsource/y2;IZ)V

    return-object v1
.end method

.method public final a()Lcom/ironsource/x0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->a:Lcom/ironsource/x0;

    return-object v0
.end method

.method public final a(Lcom/ironsource/r0$a;)V
    .registers 3

    const-string v0, "performance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/B;->h:Lcom/ironsource/I;

    invoke-virtual {v0, p1}, Lcom/ironsource/I;->b(Lcom/ironsource/r0$a;)V

    return-void
.end method

.method public final a(Lcom/ironsource/y2;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    return-void
.end method

.method public final b()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v0
.end method

.method public final c()Lcom/ironsource/v2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->c:Lcom/ironsource/v2;

    return-object v0
.end method

.method public final d()Lcom/ironsource/c1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->d:Lcom/ironsource/c1;

    return-object v0
.end method

.method public final e()Lcom/ironsource/y2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/B;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/B;

    iget-object v1, p0, Lcom/ironsource/B;->a:Lcom/ironsource/x0;

    iget-object v3, p1, Lcom/ironsource/B;->a:Lcom/ironsource/x0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/ironsource/B;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    iget-object v3, p1, Lcom/ironsource/B;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/ironsource/B;->c:Lcom/ironsource/v2;

    iget-object v3, p1, Lcom/ironsource/B;->c:Lcom/ironsource/v2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/ironsource/B;->d:Lcom/ironsource/c1;

    iget-object v3, p1, Lcom/ironsource/B;->d:Lcom/ironsource/c1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    iget-object v3, p1, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget v1, p0, Lcom/ironsource/B;->f:I

    iget v3, p1, Lcom/ironsource/B;->f:I

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget-boolean v1, p0, Lcom/ironsource/B;->g:Z

    iget-boolean p1, p1, Lcom/ironsource/B;->g:Z

    if-eq v1, p1, :cond_51

    return v2

    :cond_51
    return v0
.end method

.method public final f()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/B;->f:I

    return v0
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/B;->g:Z

    return v0
.end method

.method public final h()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->r:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->a:Lcom/ironsource/x0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/B;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/B;->c:Lcom/ironsource/v2;

    invoke-virtual {v1}, Lcom/ironsource/v2;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/B;->d:Lcom/ironsource/c1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ironsource/B;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ironsource/B;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lcom/ironsource/mediationsdk/IronSource$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->i:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object v0
.end method

.method public final j()Lcom/ironsource/x0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->a:Lcom/ironsource/x0;

    return-object v0
.end method

.method public final k()Lcom/ironsource/c1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->d:Lcom/ironsource/c1;

    return-object v0
.end method

.method public final l()Lcom/ironsource/v2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->c:Lcom/ironsource/v2;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lcom/ironsource/y2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    return-object v0
.end method

.method public final p()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/B;->l:I

    return v0
.end method

.method public final q()Lcom/ironsource/y2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->n:Lcom/ironsource/y2;

    return-object v0
.end method

.method public final r()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final t()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/B;->q:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->a:Lcom/ironsource/x0;

    iget-object v1, p0, Lcom/ironsource/B;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    iget-object v2, p0, Lcom/ironsource/B;->c:Lcom/ironsource/v2;

    iget-object v3, p0, Lcom/ironsource/B;->d:Lcom/ironsource/c1;

    iget-object v4, p0, Lcom/ironsource/B;->e:Lcom/ironsource/y2;

    iget v5, p0, Lcom/ironsource/B;->f:I

    iget-boolean v6, p0, Lcom/ironsource/B;->g:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdInstanceData(adUnitData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", providerSettings="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", auctionData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adapterConfig="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", auctionResponseItem="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sessionDepth="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isPreloaded="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/ironsource/I;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->h:Lcom/ironsource/I;

    return-object v0
.end method

.method public final v()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->b:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v0
.end method

.method public final w()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/B;->f:I

    return v0
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/B;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/B;->g:Z

    return v0
.end method
