###### Class io.blueflower.stapel2d.touch.TouchPoint (io.blueflower.stapel2d.touch.TouchPoint)
.class public Lio/blueflower/stapel2d/touch/TouchPoint;
.super Ljava/lang/Object;
.source "TouchPoint.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public button:I

.field public firstX:F

.field public firstY:F

.field public ghost:Lio/blueflower/stapel2d/touch/TouchPoint;

.field public id:I

.field public lastX:F

.field public lastY:F

.field public mouse:Z

.field public primary:Z

.field public timestamp:J

.field public updateCounter:I

.field public valid:Z

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->valid:Z

    return-void
.end method

.method public constructor <init>(IZFFIZ)V
    .registers 8

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->valid:Z

    .line 38
    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->id:I

    .line 39
    iput-boolean p2, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->primary:Z

    .line 40
    iput p3, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->firstX:F

    .line 41
    iput p4, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->firstY:F

    .line 42
    iput p3, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    .line 43
    iput p4, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    .line 44
    iput p3, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastX:F

    .line 45
    iput p4, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastY:F

    .line 46
    iput p5, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->button:I

    .line 47
    iput-boolean p6, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->mouse:Z

    .line 48
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->timestamp:J

    return-void
.end method


# virtual methods
.method public clone()Lio/blueflower/stapel2d/touch/TouchPoint;
    .registers 2

    .line 172
    new-instance v0, Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-direct {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;-><init>()V

    .line 174
    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/touch/TouchPoint;->fillWith(Lio/blueflower/stapel2d/touch/TouchPoint;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lio/blueflower/stapel2d/touch/TouchPoint;->clone()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 183
    instance-of v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 184
    check-cast p1, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 185
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getID()I

    move-result v0

    iget v2, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->id:I

    if-ne v0, v2, :cond_1b

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->timestamp:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    return v1
.end method

.method public fillWith(Lio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 4

    .line 156
    iget v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->id:I

    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->id:I

    .line 157
    iget-boolean v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->primary:Z

    iput-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->primary:Z

    .line 158
    iget v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->firstX:F

    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->firstX:F

    .line 159
    iget v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->firstY:F

    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->firstY:F

    .line 160
    iget v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    .line 161
    iget v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    .line 162
    iget v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->lastX:F

    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastX:F

    .line 163
    iget v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->lastY:F

    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastY:F

    .line 164
    iget v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->button:I

    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->button:I

    .line 165
    iget-boolean v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->mouse:Z

    iput-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->mouse:Z

    .line 166
    iget-wide v0, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->timestamp:J

    iput-wide v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->timestamp:J

    .line 167
    iget p1, p1, Lio/blueflower/stapel2d/touch/TouchPoint;->updateCounter:I

    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->updateCounter:I

    return-void
.end method

.method public getButton()I
    .registers 2

    .line 144
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->button:I

    return v0
.end method

.method public getFirstX()F
    .registers 2

    .line 92
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->firstX:F

    return v0
.end method

.method public getFirstY()F
    .registers 2

    .line 100
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->firstY:F

    return v0
.end method

.method public getGhost()Lio/blueflower/stapel2d/touch/TouchPoint;
    .registers 2

    .line 207
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->ghost:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .line 56
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->id:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 140
    iget-wide v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->timestamp:J

    return-wide v0
.end method

.method public getX()F
    .registers 2

    .line 108
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    return v0
.end method

.method public getXSpeed()F
    .registers 3

    .line 124
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    iget v1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .registers 2

    .line 116
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    return v0
.end method

.method public getYSpeed()F
    .registers 3

    .line 132
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    iget v1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public isMouse()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->mouse:Z

    return v0
.end method

.method public isPrimary()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->primary:Z

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->valid:Z

    return v0
.end method

.method public setGhost(Lio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->ghost:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-void
.end method

.method public setInvalid()V
    .registers 2

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->valid:Z

    return-void
.end method

.method public setLastPosition(FF)V
    .registers 3

    .line 83
    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastX:F

    .line 84
    iput p2, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastY:F

    return-void
.end method

.method public setPosition(FF)V
    .registers 3

    .line 73
    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    .line 74
    iput p2, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TouchPoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(x:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",y:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",xs:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",ys:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",btn:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->button:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->mouse:Z

    if-eqz v0, :cond_67

    const-string v0, "mouse"

    goto :goto_69

    :cond_67
    const-string v0, "touch"

    :goto_69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "which is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchPoint;->primary:Z

    if-eqz v0, :cond_89

    const-string v0, "primary"

    goto :goto_8b

    :cond_89
    const-string v0, "not primary"

    :goto_8b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
