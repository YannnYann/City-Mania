###### Class com.ironsource.Hb (com.ironsource.Hb)
.class public final Lcom/ironsource/Hb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/x9;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/x9;Ljava/lang/String;JZZ)V
    .registers 8

    const-string v0, "instanceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceNameForEvents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Hb;->a:Lcom/ironsource/x9;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Hb;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/ironsource/Hb;->c:J

    .line 5
    iput-boolean p5, p0, Lcom/ironsource/Hb;->d:Z

    .line 6
    iput-boolean p6, p0, Lcom/ironsource/Hb;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/x9;Ljava/lang/String;JZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_5

    const/4 p6, 0x1

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/Hb;-><init>(Lcom/ironsource/x9;Ljava/lang/String;JZZ)V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Hb;Lcom/ironsource/x9;Ljava/lang/String;JZZILjava/lang/Object;)Lcom/ironsource/Hb;
    .registers 9

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/Hb;->a:Lcom/ironsource/x9;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/ironsource/Hb;->b:Ljava/lang/String;

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    iget-wide p3, p0, Lcom/ironsource/Hb;->c:J

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_18

    iget-boolean p5, p0, Lcom/ironsource/Hb;->d:Z

    :cond_18
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_1e

    iget-boolean p6, p0, Lcom/ironsource/Hb;->e:Z

    :cond_1e
    move p7, p5

    move p8, p6

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/ironsource/Hb;->a(Lcom/ironsource/x9;Ljava/lang/String;JZZ)Lcom/ironsource/Hb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/x9;Ljava/lang/String;JZZ)Lcom/ironsource/Hb;
    .registers 15

    .line 2
    const-string v0, "instanceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceNameForEvents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/Hb;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/Hb;-><init>(Lcom/ironsource/x9;Ljava/lang/String;JZZ)V

    return-object v1
.end method

.method public final a()Lcom/ironsource/x9;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hb;->a:Lcom/ironsource/x9;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Hb;->c:J

    return-wide v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Hb;->d:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Hb;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/Hb;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/Hb;

    iget-object v1, p0, Lcom/ironsource/Hb;->a:Lcom/ironsource/x9;

    iget-object v3, p1, Lcom/ironsource/Hb;->a:Lcom/ironsource/x9;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/ironsource/Hb;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/Hb;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lcom/ironsource/Hb;->c:J

    iget-wide v5, p1, Lcom/ironsource/Hb;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_27

    return v2

    :cond_27
    iget-boolean v1, p0, Lcom/ironsource/Hb;->d:Z

    iget-boolean v3, p1, Lcom/ironsource/Hb;->d:Z

    if-eq v1, v3, :cond_2e

    return v2

    :cond_2e
    iget-boolean v1, p0, Lcom/ironsource/Hb;->e:Z

    iget-boolean p1, p1, Lcom/ironsource/Hb;->e:Z

    if-eq v1, p1, :cond_35

    return v2

    :cond_35
    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/ironsource/x9;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hb;->a:Lcom/ironsource/x9;

    return-object v0
.end method

.method public final h()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Hb;->c:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hb;->a:Lcom/ironsource/x9;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/Hb;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/Hb;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ironsource/Hb;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ironsource/Hb;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Hb;->e:Z

    return v0
.end method

.method public final j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Hb;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hb;->a:Lcom/ironsource/x9;

    iget-object v1, p0, Lcom/ironsource/Hb;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/ironsource/Hb;->c:J

    iget-boolean v4, p0, Lcom/ironsource/Hb;->d:Z

    iget-boolean v5, p0, Lcom/ironsource/Hb;->e:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadTaskConfig(instanceType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adSourceNameForEvents="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", loadTimeoutInMills="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isOneFlow="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isMultipleAdObjects="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
