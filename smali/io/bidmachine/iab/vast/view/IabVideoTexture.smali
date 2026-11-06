###### Class io.bidmachine.iab.vast.view.IabVideoTexture (io.bidmachine.iab.vast.view.IabVideoTexture)
.class public Lio/bidmachine/iab/vast/view/IabVideoTexture;
.super Landroid/view/TextureView;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 8

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    .line 2
    iget v1, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    .line 3
    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    if-lez v2, :cond_75

    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    if-lez v2, :cond_75

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_3e

    if-ne v1, v2, :cond_3e

    .line 16
    iget v0, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    mul-int v1, v0, p2

    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_38

    .line 18
    div-int v0, v1, v2

    :goto_36
    move v1, p2

    goto :goto_75

    :cond_38
    if-le v1, v3, :cond_5b

    .line 21
    div-int v1, v3, v0

    :goto_3c
    move v0, p1

    goto :goto_75

    :cond_3e
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_4f

    .line 26
    iget v0, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    mul-int/2addr v0, p1

    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_4d

    if-le v0, p2, :cond_4d

    goto :goto_5b

    :cond_4d
    move v1, v0

    goto :goto_3c

    :cond_4f
    if-ne v1, v2, :cond_5f

    .line 34
    iget v1, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    mul-int/2addr v1, p2

    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5d

    if-le v1, p1, :cond_5d

    :cond_5b
    :goto_5b
    move v0, p1

    goto :goto_36

    :cond_5d
    move v0, v1

    goto :goto_36

    .line 41
    :cond_5f
    iget v2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    .line 42
    iget v4, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    if-ne v1, v3, :cond_6b

    if-le v4, p2, :cond_6b

    mul-int v1, p2, v2

    .line 46
    div-int/2addr v1, v4

    goto :goto_6d

    :cond_6b
    move v1, v2

    move p2, v4

    :goto_6d
    if-ne v0, v3, :cond_5d

    if-le v1, p1, :cond_5d

    mul-int/2addr v4, p1

    .line 51
    div-int v1, v4, v2

    goto :goto_3c

    .line 57
    :cond_75
    :goto_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Size"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setVideoSize(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    iput p1, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->a:I

    .line 2
    iput p2, p0, Lio/bidmachine/iab/vast/view/IabVideoTexture;->b:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
