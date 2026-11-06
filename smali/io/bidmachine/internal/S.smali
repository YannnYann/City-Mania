###### Class io.bidmachine.internal.S (io.bidmachine.internal.S)
.class public final Lio/bidmachine/internal/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/util/version/Version;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Lio/bidmachine/util/version/Version;IJJJJ)V
    .registers 12

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/internal/S;->a:Lio/bidmachine/util/version/Version;

    .line 3
    iput p2, p0, Lio/bidmachine/internal/S;->b:I

    .line 4
    iput-wide p3, p0, Lio/bidmachine/internal/S;->c:J

    .line 5
    iput-wide p5, p0, Lio/bidmachine/internal/S;->d:J

    .line 6
    iput-wide p7, p0, Lio/bidmachine/internal/S;->e:J

    .line 7
    iput-wide p9, p0, Lio/bidmachine/internal/S;->f:J

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/internal/S;Lio/bidmachine/util/version/Version;IJJJJILjava/lang/Object;)Lio/bidmachine/internal/S;
    .registers 13

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_6

    .line 2
    iget-object p1, p0, Lio/bidmachine/internal/S;->a:Lio/bidmachine/util/version/Version;

    :cond_6
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_c

    iget p2, p0, Lio/bidmachine/internal/S;->b:I

    :cond_c
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_12

    iget-wide p3, p0, Lio/bidmachine/internal/S;->c:J

    :cond_12
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_18

    iget-wide p5, p0, Lio/bidmachine/internal/S;->d:J

    :cond_18
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_1e

    iget-wide p7, p0, Lio/bidmachine/internal/S;->e:J

    :cond_1e
    and-int/lit8 p11, p11, 0x20

    if-eqz p11, :cond_24

    iget-wide p9, p0, Lio/bidmachine/internal/S;->f:J

    :cond_24
    move-wide p11, p9

    move-wide p9, p7

    move-wide p7, p5

    move-wide p5, p3

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Lio/bidmachine/internal/S;->a(Lio/bidmachine/util/version/Version;IJJJJ)Lio/bidmachine/internal/S;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 3
    iget-wide v0, p0, Lio/bidmachine/internal/S;->e:J

    return-wide v0
.end method

.method public final a(Lio/bidmachine/util/version/Version;IJJJJ)Lio/bidmachine/internal/S;
    .registers 23

    .line 1
    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/bidmachine/internal/S;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lio/bidmachine/internal/S;-><init>(Lio/bidmachine/util/version/Version;IJJJJ)V

    return-object v1
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/internal/S;->c:J

    return-wide v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/internal/S;->f:J

    return-wide v0
.end method

.method public final d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/internal/S;->d:J

    return-wide v0
.end method

.method public final e()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/internal/S;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/internal/S;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/internal/S;

    iget-object v1, p0, Lio/bidmachine/internal/S;->a:Lio/bidmachine/util/version/Version;

    iget-object v3, p1, Lio/bidmachine/internal/S;->a:Lio/bidmachine/util/version/Version;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lio/bidmachine/internal/S;->b:I

    iget v3, p1, Lio/bidmachine/internal/S;->b:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lio/bidmachine/internal/S;->c:J

    iget-wide v5, p1, Lio/bidmachine/internal/S;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_27

    return v2

    :cond_27
    iget-wide v3, p0, Lio/bidmachine/internal/S;->d:J

    iget-wide v5, p1, Lio/bidmachine/internal/S;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_30

    return v2

    :cond_30
    iget-wide v3, p0, Lio/bidmachine/internal/S;->e:J

    iget-wide v5, p1, Lio/bidmachine/internal/S;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_39

    return v2

    :cond_39
    iget-wide v3, p0, Lio/bidmachine/internal/S;->f:J

    iget-wide v5, p1, Lio/bidmachine/internal/S;->f:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_42

    return v2

    :cond_42
    return v0
.end method

.method public final f()Lio/bidmachine/util/version/Version;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/S;->a:Lio/bidmachine/util/version/Version;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/S;->a:Lio/bidmachine/util/version/Version;

    invoke-virtual {v0}, Lio/bidmachine/util/version/Version;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/internal/S;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/internal/S;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/internal/S;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/internal/S;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/internal/S;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersionMilestone(version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/internal/S;->a:Lio/bidmachine/util/version/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/internal/S;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstSessionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/internal/S;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastSessionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/internal/S;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentSessionDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/internal/S;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastSessionDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/internal/S;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
