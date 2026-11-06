###### Class io.bidmachine.analytics.internal.g.C4116c (io.bidmachine.analytics.internal.g.c)
.class public final Lio/bidmachine/analytics/internal/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Lio/bidmachine/analytics/internal/g/a;

.field private final e:F

.field private final f:Lio/bidmachine/analytics/internal/g/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLio/bidmachine/analytics/internal/g/a;FLio/bidmachine/analytics/internal/g/g;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/g/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/g/c;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lio/bidmachine/analytics/internal/g/c;->c:J

    .line 5
    iput-object p5, p0, Lio/bidmachine/analytics/internal/g/c;->d:Lio/bidmachine/analytics/internal/g/a;

    .line 6
    iput p6, p0, Lio/bidmachine/analytics/internal/g/c;->e:F

    .line 7
    iput-object p7, p0, Lio/bidmachine/analytics/internal/g/c;->f:Lio/bidmachine/analytics/internal/g/g;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/g/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/g/c;->d:Lio/bidmachine/analytics/internal/g/a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/g/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/internal/g/c;->c:J

    return-wide v0
.end method

.method public final d()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/g/c;->e:F

    return v0
.end method

.method public final e()Lio/bidmachine/analytics/internal/g/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/g/c;->f:Lio/bidmachine/analytics/internal/g/g;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/internal/g/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/internal/g/c;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/g/c;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/g/c;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-wide v3, p0, Lio/bidmachine/analytics/internal/g/c;->c:J

    iget-wide v5, p1, Lio/bidmachine/analytics/internal/g/c;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/c;->d:Lio/bidmachine/analytics/internal/g/a;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/g/c;->d:Lio/bidmachine/analytics/internal/g/a;

    if-eq v1, v3, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lio/bidmachine/analytics/internal/g/c;->e:F

    iget v3, p1, Lio/bidmachine/analytics/internal/g/c;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3d

    return v2

    :cond_3d
    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/c;->f:Lio/bidmachine/analytics/internal/g/g;

    iget-object p1, p1, Lio/bidmachine/analytics/internal/g/c;->f:Lio/bidmachine/analytics/internal/g/g;

    if-eq v1, p1, :cond_44

    return v2

    :cond_44
    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/g/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/g/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/analytics/internal/g/c;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/c;->d:Lio/bidmachine/analytics/internal/g/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/analytics/internal/g/c;->e:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/c;->f:Lio/bidmachine/analytics/internal/g/g;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
