###### Class com.ironsource.mediationsdk.b (com.ironsource.mediationsdk.b)
.class final Lcom/ironsource/mediationsdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/q$d;

.field private final b:Z

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/q$d;ZZZ)V
    .registers 6

    const-string v0, "sdkState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/b;->a:Lcom/ironsource/mediationsdk/q$d;

    .line 3
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/b;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/b;->c:Z

    .line 5
    iput-boolean p4, p0, Lcom/ironsource/mediationsdk/b;->d:Z

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/mediationsdk/b;Lcom/ironsource/mediationsdk/q$d;ZZZILjava/lang/Object;)Lcom/ironsource/mediationsdk/b;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/mediationsdk/b;->a:Lcom/ironsource/mediationsdk/q$d;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-boolean p2, p0, Lcom/ironsource/mediationsdk/b;->b:Z

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-boolean p3, p0, Lcom/ironsource/mediationsdk/b;->c:Z

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-boolean p4, p0, Lcom/ironsource/mediationsdk/b;->d:Z

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/b;->a(Lcom/ironsource/mediationsdk/q$d;ZZZ)Lcom/ironsource/mediationsdk/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/mediationsdk/q$d;ZZZ)Lcom/ironsource/mediationsdk/b;
    .registers 6

    .line 2
    const-string v0, "sdkState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/mediationsdk/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/b;-><init>(Lcom/ironsource/mediationsdk/q$d;ZZZ)V

    return-object v0
.end method

.method public final a()Lcom/ironsource/mediationsdk/q$d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/b;->a:Lcom/ironsource/mediationsdk/q$d;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/b;->b:Z

    return v0
.end method

.method public final c()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/b;->c:Z

    return v0
.end method

.method public final d()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/b;->d:Z

    return v0
.end method

.method public final e()Lcom/ironsource/mediationsdk/q$d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/b;->a:Lcom/ironsource/mediationsdk/q$d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/ironsource/mediationsdk/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/mediationsdk/b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/b;->a:Lcom/ironsource/mediationsdk/q$d;

    iget-object v3, p1, Lcom/ironsource/mediationsdk/b;->a:Lcom/ironsource/mediationsdk/q$d;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/b;->b:Z

    iget-boolean v3, p1, Lcom/ironsource/mediationsdk/b;->b:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/b;->c:Z

    iget-boolean v3, p1, Lcom/ironsource/mediationsdk/b;->c:Z

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/b;->d:Z

    iget-boolean p1, p1, Lcom/ironsource/mediationsdk/b;->d:Z

    if-eq v1, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/b;->d:Z

    return v0
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/b;->c:Z

    return v0
.end method

.method public final h()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/b;->b:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/b;->a:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/b;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/b;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/b;->a:Lcom/ironsource/mediationsdk/q$d;

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/b;->b:Z

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/b;->c:Z

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/b;->d:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdUnitInitStateInfo(sdkState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isRetryForMoreThan15Secs="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDemandOnlyInitRequested="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAdUnitInitRequested="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
