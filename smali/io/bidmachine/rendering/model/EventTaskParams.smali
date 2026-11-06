###### Class io.bidmachine.rendering.model.EventTaskParams (io.bidmachine.rendering.model.EventTaskParams)
.class public final Lio/bidmachine/rendering/model/EventTaskParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/EventTaskType;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Lio/bidmachine/rendering/model/animation/AnimationParams;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;Lio/bidmachine/rendering/model/animation/AnimationParams;Ljava/lang/String;)V
    .registers 7

    const-string v0, "eventTaskType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->a:Lio/bidmachine/rendering/model/EventTaskType;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/model/EventTaskParams;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/model/EventTaskParams;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/model/EventTaskParams;->d:Lio/bidmachine/rendering/model/animation/AnimationParams;

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/model/EventTaskParams;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;Lio/bidmachine/rendering/model/animation/AnimationParams;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_b

    move-object p4, v0

    :cond_b
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_16

    move-object p6, v0

    :goto_10
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_18

    :cond_16
    move-object p6, p5

    goto :goto_10

    .line 7
    :goto_18
    invoke-direct/range {p1 .. p6}, Lio/bidmachine/rendering/model/EventTaskParams;-><init>(Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;Lio/bidmachine/rendering/model/animation/AnimationParams;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/model/EventTaskParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/model/EventTaskParams;

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->a:Lio/bidmachine/rendering/model/EventTaskType;

    iget-object v3, p1, Lio/bidmachine/rendering/model/EventTaskParams;->a:Lio/bidmachine/rendering/model/EventTaskType;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/rendering/model/EventTaskParams;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->c:Ljava/lang/Object;

    iget-object v3, p1, Lio/bidmachine/rendering/model/EventTaskParams;->c:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->d:Lio/bidmachine/rendering/model/animation/AnimationParams;

    iget-object v3, p1, Lio/bidmachine/rendering/model/EventTaskParams;->d:Lio/bidmachine/rendering/model/animation/AnimationParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->e:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/rendering/model/EventTaskParams;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    return v2

    :cond_3f
    return v0
.end method

.method public final getAnimationEffectRaw()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskParams;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getAnimationParams()Lio/bidmachine/rendering/model/animation/AnimationParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskParams;->d:Lio/bidmachine/rendering/model/animation/AnimationParams;

    return-object v0
.end method

.method public final getEventTaskType()Lio/bidmachine/rendering/model/EventTaskType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskParams;->a:Lio/bidmachine/rendering/model/EventTaskType;

    return-object v0
.end method

.method public final getTarget()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskParams;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskParams;->a:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->d:Lio/bidmachine/rendering/model/animation/AnimationParams;

    if-nez v1, :cond_25

    move v1, v2

    goto :goto_29

    :cond_25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_29
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->e:Ljava/lang/String;

    if-nez v1, :cond_31

    goto :goto_35

    :cond_31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_35
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventTaskParams(eventTaskType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->a:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animationParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->d:Lio/bidmachine/rendering/model/animation/AnimationParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animationEffectRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/EventTaskParams;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
