###### Class io.blueflower.stapel2d.drawing.Font (io.blueflower.stapel2d.drawing.Font)
.class public Lio/blueflower/stapel2d/drawing/Font;
.super Ljava/lang/Object;
.source "Font.java"


# instance fields
.field public image:Lio/blueflower/stapel2d/drawing/Image;

.field public scale:F

.field public shader:Lio/blueflower/stapel2d/drawing/Shader;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Shader;Lio/blueflower/stapel2d/drawing/Image;F)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Font;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    .line 12
    iput-object p2, p0, Lio/blueflower/stapel2d/drawing/Font;->image:Lio/blueflower/stapel2d/drawing/Image;

    .line 13
    iput p3, p0, Lio/blueflower/stapel2d/drawing/Font;->scale:F

    return-void
.end method


# virtual methods
.method public getCodepointWidth(I)F
    .registers 4

    .line 29
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Font;->scale:F

    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Font;->image:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Image;->getCodepointWidth(I)F

    move-result p1

    mul-float/2addr v0, p1

    return v0
.end method

.method public getHeight()F
    .registers 3

    .line 25
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Font;->scale:F

    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Font;->image:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Image;->getTextHeight()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHeight(Ljava/lang/String;)F
    .registers 2

    .line 21
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result p1

    return p1
.end method

.method public getWidth(Ljava/lang/String;)F
    .registers 4

    .line 17
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Font;->scale:F

    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Font;->image:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Image;->getTextWidth(Ljava/lang/String;)F

    move-result p1

    mul-float/2addr v0, p1

    return v0
.end method
