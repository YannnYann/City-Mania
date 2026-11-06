###### Class io.bidmachine.rendering.internal.meanbackground.c (io.bidmachine.rendering.internal.meanbackground.c)
.class public final Lio/bidmachine/rendering/internal/meanbackground/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/c$a;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/meanbackground/c$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/c$a;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/c;->a:Lio/bidmachine/rendering/internal/meanbackground/c$a;

    return-void
.end method


# virtual methods
.method public final a(IZ)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_1c

    .line 1
    iget-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/c;->a:Lio/bidmachine/rendering/internal/meanbackground/c$a;

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/meanbackground/c$a;->b()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_1c

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1}, Lio/bidmachine/util/ColorUtilsKt;->alphaToRatio$default(IFILjava/lang/Object;)F

    move-result p1

    iget-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/c;->a:Lio/bidmachine/rendering/internal/meanbackground/c$a;

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/meanbackground/c$a;->a()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4e

    goto :goto_4d

    .line 5
    :cond_1c
    iget-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/c;->a:Lio/bidmachine/rendering/internal/meanbackground/c$a;

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/meanbackground/c$a;->b()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3f

    .line 6
    sget-object p2, Lio/bidmachine/util/ColorUtils;->INSTANCE:Lio/bidmachine/util/ColorUtils;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c;->a:Lio/bidmachine/rendering/internal/meanbackground/c$a;

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/meanbackground/c$a;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lio/bidmachine/util/ColorUtils;->dist(II)F

    move-result p1

    iget-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/c;->a:Lio/bidmachine/rendering/internal/meanbackground/c$a;

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/meanbackground/c$a;->d()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4e

    goto :goto_4d

    .line 11
    :cond_3f
    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->brightness(I)F

    move-result p1

    iget-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/c;->a:Lio/bidmachine/rendering/internal/meanbackground/c$a;

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/meanbackground/c$a;->c()F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4e

    :goto_4d
    return v0

    :cond_4e
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.c.a (io.bidmachine.rendering.internal.meanbackground.c$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(Ljava/lang/Integer;FFF)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->a:Ljava/lang/Integer;

    .line 3
    iput p2, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->b:F

    .line 4
    iput p3, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->c:F

    .line 5
    iput p4, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->d:F

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->b:F

    return v0
.end method

.method public final b()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public final c()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->d:F

    return v0
.end method

.method public final d()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->c:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/internal/meanbackground/c$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/c$a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lio/bidmachine/rendering/internal/meanbackground/c$a;->a:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->b:F

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/c$a;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->c:F

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/c$a;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->d:F

    iget p1, p1, Lio/bidmachine/rendering/internal/meanbackground/c$a;->d:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->a:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config(backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alphaThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tolerance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", brightnessThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/c$a;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
