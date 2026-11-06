###### Class io.bidmachine.rendering.model.BrokenCreativeEvent (io.bidmachine.rendering.model.BrokenCreativeEvent)
.class public final Lio/bidmachine/rendering/model/BrokenCreativeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(DILjava/lang/String;JLjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adElementName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithmResults"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->a:D

    .line 3
    iput p3, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->b:I

    .line 4
    iput-object p4, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->c:Ljava/lang/String;

    .line 5
    iput-wide p5, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->d:J

    .line 6
    iput-object p7, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-class v2, Lio/bidmachine/rendering/model/BrokenCreativeEvent;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 5
    :cond_16
    const-string v1, "null cannot be cast to non-null type io.bidmachine.rendering.model.BrokenCreativeEvent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/bidmachine/rendering/model/BrokenCreativeEvent;

    .line 7
    iget-wide v3, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->a:D

    iget-wide v5, p1, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->a:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_38

    .line 10
    iget v1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->b:I

    iget v3, p1, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->b:I

    if-eq v1, v3, :cond_2c

    return v2

    .line 13
    :cond_2c
    iget-object v1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->c:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    return v2

    :cond_37
    return v0

    :cond_38
    return v2
.end method

.method public final getAdElementName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdPhaseSequence()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->b:I

    return v0
.end method

.method public final getAlgorithmResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getDurationMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->d:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isBroken()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->a:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBroken - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->a:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), adPhaseSequence - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adElementName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/rendering/model/BrokenCreativeEvent;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
