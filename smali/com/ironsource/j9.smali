###### Class com.ironsource.C3671j9 (com.ironsource.j9)
.class public final Lcom/ironsource/j9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/j9$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/ironsource/j9$a;

.field private final c:J


# direct methods
.method public constructor <init>(JLcom/ironsource/j9$a;J)V
    .registers 7

    const-string v0, "memory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/j9;->a:J

    .line 3
    iput-object p3, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    .line 4
    iput-wide p4, p0, Lcom/ironsource/j9;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/j9;JLcom/ironsource/j9$a;JILjava/lang/Object;)Lcom/ironsource/j9;
    .registers 14

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    .line 3
    iget-wide p1, p0, Lcom/ironsource/j9;->a:J

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_d

    iget-object p3, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    :cond_d
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_14

    iget-wide p4, p0, Lcom/ironsource/j9;->c:J

    :cond_14
    move-object v0, p0

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/j9;->a(JLcom/ironsource/j9$a;J)Lcom/ironsource/j9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->a:J

    return-wide v0
.end method

.method public final a(JLcom/ironsource/j9$a;J)Lcom/ironsource/j9;
    .registers 13

    .line 2
    const-string v0, "memory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/j9;

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/j9;-><init>(JLcom/ironsource/j9$a;J)V

    return-object v1
.end method

.method public final b()Lcom/ironsource/j9$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    return-object v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->c:J

    return-wide v0
.end method

.method public final d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->c:J

    return-wide v0
.end method

.method public final e()Lcom/ironsource/j9$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/j9;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/j9;

    iget-wide v3, p0, Lcom/ironsource/j9;->a:J

    iget-wide v5, p1, Lcom/ironsource/j9;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    iget-object v3, p1, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-wide v3, p0, Lcom/ironsource/j9;->c:J

    iget-wide v5, p1, Lcom/ironsource/j9;->c:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final f()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    invoke-virtual {v1}, Lcom/ironsource/j9$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/j9;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->a:J

    iget-object v2, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    iget-wide v3, p0, Lcom/ironsource/j9;->c:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InitParsingMetrics(parsingDurationMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", memory="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initResponseJsonSizeKb="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.C3671j9.a (com.ironsource.j9$a)
.class public final Lcom/ironsource/j9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/j9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/j9$a;->a:J

    .line 3
    iput-wide p3, p0, Lcom/ironsource/j9$a;->b:J

    .line 4
    iput-wide p5, p0, Lcom/ironsource/j9$a;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/j9$a;JJJILjava/lang/Object;)Lcom/ironsource/j9$a;
    .registers 16

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    .line 3
    iget-wide p1, p0, Lcom/ironsource/j9$a;->a:J

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_d

    iget-wide p3, p0, Lcom/ironsource/j9$a;->b:J

    :cond_d
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_14

    iget-wide p5, p0, Lcom/ironsource/j9$a;->c:J

    :cond_14
    move-object v0, p0

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/j9$a;->a(JJJ)Lcom/ironsource/j9$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9$a;->a:J

    return-wide v0
.end method

.method public final a(JJJ)Lcom/ironsource/j9$a;
    .registers 14

    .line 2
    new-instance v0, Lcom/ironsource/j9$a;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/j9$a;-><init>(JJJ)V

    return-object v0
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9$a;->b:J

    return-wide v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9$a;->c:J

    return-wide v0
.end method

.method public final d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9$a;->a:J

    return-wide v0
.end method

.method public final e()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9$a;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/j9$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/j9$a;

    iget-wide v3, p0, Lcom/ironsource/j9$a;->a:J

    iget-wide v5, p1, Lcom/ironsource/j9$a;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/ironsource/j9$a;->b:J

    iget-wide v5, p1, Lcom/ironsource/j9$a;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lcom/ironsource/j9$a;->c:J

    iget-wide v5, p1, Lcom/ironsource/j9$a;->c:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_27

    return v2

    :cond_27
    return v0
.end method

.method public final f()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9$a;->c:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/j9$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/j9$a;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9$a;->a:J

    iget-wide v2, p0, Lcom/ironsource/j9$a;->b:J

    iget-wide v4, p0, Lcom/ironsource/j9$a;->c:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Memory(javaHeapKb="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", nativeHeapKb="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", sharedOtherKb="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
