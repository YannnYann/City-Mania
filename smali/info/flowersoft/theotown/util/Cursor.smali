###### Class info.flowersoft.theotown.util.Cursor (info.flowersoft.theotown.util.Cursor)
.class public Linfo/flowersoft/theotown/util/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"


# instance fields
.field public startX:F

.field public startY:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1, p1}, Linfo/flowersoft/theotown/util/Cursor;->resetTo(FF)V

    return-void
.end method


# virtual methods
.method public clone()Linfo/flowersoft/theotown/util/Cursor;
    .registers 4

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/util/Cursor;

    iget v1, p0, Linfo/flowersoft/theotown/util/Cursor;->startX:F

    iget v2, p0, Linfo/flowersoft/theotown/util/Cursor;->startY:F

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/Cursor;-><init>(FF)V

    .line 73
    iget v1, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    iget v2, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/Cursor;->move(FF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/Cursor;->clone()Linfo/flowersoft/theotown/util/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .registers 2

    .line 42
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 46
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    return v0
.end method

.method public move(FF)V
    .registers 4

    .line 29
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    .line 30
    iget p1, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    return-void
.end method

.method public moveX(F)V
    .registers 3

    .line 34
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    return-void
.end method

.method public moveY(F)V
    .registers 3

    .line 38
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    return-void
.end method

.method public reset()V
    .registers 2

    .line 58
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->startX:F

    iput v0, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    .line 59
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->startY:F

    iput v0, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    return-void
.end method

.method public resetTo()V
    .registers 3

    .line 63
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    iget v1, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/Cursor;->resetTo(FF)V

    return-void
.end method

.method public resetTo(FF)V
    .registers 3

    .line 22
    iput p1, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    .line 23
    iput p2, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    .line 24
    iput p1, p0, Linfo/flowersoft/theotown/util/Cursor;->startX:F

    .line 25
    iput p2, p0, Linfo/flowersoft/theotown/util/Cursor;->startY:F

    return-void
.end method

.method public resetTo(Linfo/flowersoft/theotown/util/Cursor;)V
    .registers 3

    .line 67
    iget v0, p1, Linfo/flowersoft/theotown/util/Cursor;->x:F

    iget p1, p1, Linfo/flowersoft/theotown/util/Cursor;->y:F

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/util/Cursor;->resetTo(FF)V

    return-void
.end method

.method public resetX()V
    .registers 2

    .line 50
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->startX:F

    iput v0, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    return-void
.end method

.method public resetY()V
    .registers 2

    .line 54
    iget v0, p0, Linfo/flowersoft/theotown/util/Cursor;->startY:F

    iput v0, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cursor at ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/Cursor;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/Cursor;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
