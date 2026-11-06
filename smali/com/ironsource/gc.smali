###### Class com.ironsource.C3621gc (com.ironsource.gc)
.class public final Lcom/ironsource/gc;
.super Lcom/ironsource/V;
.source "SourceFile"


# instance fields
.field private final s:Ljava/lang/String;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/ironsource/Wb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/Wb;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/Wb;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "configs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->e:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/Wb;->d()Lcom/ironsource/A2;

    move-result-object v4

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/Wb;->b()I

    move-result v5

    .line 6
    invoke-virtual {v0}, Lcom/ironsource/Wb;->c()J

    move-result-wide v2

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr v2, v6

    long-to-int v6, v2

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/Wb;->a()Z

    move-result v7

    .line 8
    invoke-virtual {v0}, Lcom/ironsource/Wb;->f()I

    move-result v8

    .line 10
    new-instance v9, Lcom/ironsource/M0;

    .line 11
    sget-object v10, Lcom/ironsource/M0$a;->a:Lcom/ironsource/M0$a;

    .line 12
    invoke-virtual {v0}, Lcom/ironsource/Wb;->d()Lcom/ironsource/A2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/A2;->j()J

    move-result-wide v11

    .line 13
    invoke-virtual {v0}, Lcom/ironsource/Wb;->d()Lcom/ironsource/A2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/A2;->b()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    .line 14
    invoke-direct/range {v9 .. v16}, Lcom/ironsource/M0;-><init>(Lcom/ironsource/M0$a;JJJ)V

    .line 19
    new-instance v11, Lcom/ironsource/I0;

    const-wide/16 v2, -0x1

    invoke-direct {v11, v2, v3}, Lcom/ironsource/I0;-><init>(J)V

    .line 20
    invoke-virtual {v0}, Lcom/ironsource/Wb;->h()J

    move-result-wide v12

    .line 21
    invoke-virtual {v0}, Lcom/ironsource/Wb;->i()Z

    move-result v14

    .line 22
    invoke-virtual {v0}, Lcom/ironsource/Wb;->k()Z

    move-result v15

    .line 23
    invoke-virtual {v0}, Lcom/ironsource/Wb;->j()Z

    move-result v16

    const v18, 0x8000

    const/16 v19, 0x0

    move-object v10, v9

    const/4 v9, -0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 24
    invoke-direct/range {v0 .. v19}, Lcom/ironsource/V;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;Lcom/ironsource/I0;JZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object v2, v0, Lcom/ironsource/gc;->s:Ljava/lang/String;

    .line 26
    iput-object v3, v0, Lcom/ironsource/gc;->t:Ljava/util/List;

    move-object/from16 v1, p3

    .line 27
    iput-object v1, v0, Lcom/ironsource/gc;->u:Lcom/ironsource/Wb;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/gc;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/Wb;ILjava/lang/Object;)Lcom/ironsource/gc;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    .line 2
    iget-object p1, p0, Lcom/ironsource/gc;->s:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/ironsource/gc;->t:Ljava/util/List;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/ironsource/gc;->u:Lcom/ironsource/Wb;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/gc;->a(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/Wb;)Lcom/ironsource/gc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/Wb;)Lcom/ironsource/gc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/Wb;",
            ")",
            "Lcom/ironsource/gc;"
        }
    .end annotation

    .line 1
    const-string v0, "configs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/gc;

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/gc;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/Wb;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/gc;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/gc;

    iget-object v1, p0, Lcom/ironsource/gc;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/gc;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/ironsource/gc;->t:Ljava/util/List;

    iget-object v3, p1, Lcom/ironsource/gc;->t:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/ironsource/gc;->u:Lcom/ironsource/Wb;

    iget-object p1, p1, Lcom/ironsource/gc;->u:Lcom/ironsource/Wb;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/gc;->s:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/gc;->t:Ljava/util/List;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/gc;->u:Lcom/ironsource/Wb;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/gc;->t:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/gc;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/gc;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/gc;->t:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/gc;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/gc;->t:Ljava/util/List;

    iget-object v2, p0, Lcom/ironsource/gc;->u:Lcom/ironsource/Wb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NativeAdManagerData(userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", providerList="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", configs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/ironsource/Wb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/gc;->u:Lcom/ironsource/Wb;

    return-object v0
.end method

.method public final v()Lcom/ironsource/Wb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/gc;->u:Lcom/ironsource/Wb;

    return-object v0
.end method
