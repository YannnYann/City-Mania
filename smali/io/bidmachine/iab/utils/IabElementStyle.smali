###### Class io.bidmachine.iab.utils.IabElementStyle (io.bidmachine.iab.utils.IabElementStyle)
.class public Lio/bidmachine/iab/utils/IabElementStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/Integer;

.field public q:Ljava/lang/Integer;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/Float;

.field public t:Ljava/lang/Float;

.field public u:Ljava/lang/Float;

.field public v:Ljava/lang/Integer;

.field public w:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "copyFrom"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->merge(Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void
.end method


# virtual methods
.method public applyAlignment(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutParams"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->positionAsGravity()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public applyMargin(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "layoutParams"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getMarginLeft(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getMarginTop(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getMarginRight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getMarginBottom(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public applyPadding(Landroid/content/Context;Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getPaddingLeft(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getPaddingTop(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getPaddingRight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getPaddingBottom(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public applyRelativeAlignment(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutParams"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->getHorizontalPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    if-eq v0, v2, :cond_22

    goto :goto_27

    :cond_16
    const/16 v0, 0xb

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_27

    :cond_1c
    const/16 v0, 0x9

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_27

    :cond_22
    const/16 v0, 0xe

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 22
    :goto_27
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->getVerticalPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4a

    if-eq v0, v2, :cond_4a

    const/16 v1, 0x30

    if-eq v0, v1, :cond_44

    const/16 v1, 0x50

    if-eq v0, v1, :cond_3e

    return-void

    :cond_3e
    const/16 v0, 0xc

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_44
    const/16 v0, 0xa

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_4a
    const/16 v0, 0xf

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method public copyWith(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "copyFrom"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lio/bidmachine/iab/utils/IabElementStyle;->merge(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->merge(Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getFillColor()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    return-object v0

    .line 4
    :cond_5
    sget v0, Lio/bidmachine/iab/utils/Assets;->BACKGROUND_COLOR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize(Landroid/content/Context;)Ljava/lang/Float;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_12
    const/high16 v0, 0x41800000    # 16.0f

    .line 4
    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFontStyle()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    if-eqz v0, :cond_3f

    .line 2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_19
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_30

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_30
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3f
    const/4 p1, -0x2

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getHideAfter()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    return-object v0
.end method

.method public getHorizontalPosition()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMarginBottom(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMarginLeft(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMarginRight(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMarginTop(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getOpacity()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getPaddingBottom(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getPaddingLeft(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getPaddingRight(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getPaddingTop(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getStrokeColor()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    return-object v0

    .line 4
    :cond_5
    sget v0, Lio/bidmachine/iab/utils/Assets;->MAIN_ASSETS_COLOR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth(Landroid/content/Context;)Ljava/lang/Float;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getStyle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalPosition()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/16 v0, 0x30

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getWidth(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    if-eqz v0, :cond_3f

    .line 2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_19
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_30

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_30
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3f
    const/4 p1, -0x2

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public hasFillColor()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasStrokeColor()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isOutlined()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    return-object v0

    .line 4
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVisible()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    return-object v0

    .line 4
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public merge(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    if-nez p1, :cond_4

    goto/16 :goto_8e

    .line 1
    :cond_4
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 2
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    .line 4
    :cond_a
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 5
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    .line 7
    :cond_10
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    .line 8
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    .line 10
    :cond_16
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    .line 11
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    .line 13
    :cond_1c
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    .line 14
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    .line 16
    :cond_22
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_28

    .line 17
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    .line 19
    :cond_28
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 20
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    .line 22
    :cond_2e
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    if-eqz v0, :cond_34

    .line 23
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    .line 25
    :cond_34
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    if-eqz v0, :cond_3a

    .line 26
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    .line 28
    :cond_3a
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_40

    .line 29
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    .line 31
    :cond_40
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_46

    .line 32
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    .line 34
    :cond_46
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_4c

    .line 35
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    .line 37
    :cond_4c
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_52

    .line 38
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    .line 40
    :cond_52
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_58

    .line 41
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    .line 43
    :cond_58
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_5e

    .line 44
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    .line 46
    :cond_5e
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_64

    .line 47
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    .line 49
    :cond_64
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_6a

    .line 50
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    .line 52
    :cond_6a
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 53
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    .line 55
    :cond_70
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    if-eqz v0, :cond_76

    .line 56
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    .line 58
    :cond_76
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    if-eqz v0, :cond_7c

    .line 59
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    .line 61
    :cond_7c
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    if-eqz v0, :cond_82

    .line 62
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    .line 64
    :cond_82
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_88

    .line 65
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    .line 67
    :cond_88
    iget-object p1, p1, Lio/bidmachine/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    if-eqz p1, :cond_8e

    .line 68
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    :cond_8e
    :goto_8e
    return-void
.end method

.method public positionAsGravity()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->getVerticalPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->getHorizontalPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    return-void
.end method

.method public setFillColor(Ljava/lang/Integer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fillColor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    return-void
.end method

.method public setFontSize(Ljava/lang/Float;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontSize"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    return-void
.end method

.method public setFontStyle(Ljava/lang/Integer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontStyle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    return-void
.end method

.method public setHeight(Ljava/lang/Number;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 2
    :goto_c
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    return-void
.end method

.method public setHideAfter(Ljava/lang/Float;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hideAfter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    return-void
.end method

.method public setHorizontalPosition(Ljava/lang/Integer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "horizontalPosition"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    return-void
.end method

.method public setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    .line 2
    iput-object p2, p0, Lio/bidmachine/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    .line 3
    iput-object p3, p0, Lio/bidmachine/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    .line 4
    iput-object p4, p0, Lio/bidmachine/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    return-void
.end method

.method public setMargin(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, p1, p1, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 9
    :cond_b
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    .line 11
    aget-object p1, p1, v1

    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 13
    :cond_34
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_60

    .line 14
    aget-object v0, p1, v1

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 15
    aget-object p1, p1, v2

    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 17
    :cond_60
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_96

    .line 18
    aget-object v0, p1, v1

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 19
    aget-object v1, p1, v2

    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 20
    aget-object p1, p1, v3

    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v1, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 22
    :cond_96
    array-length v0, p1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_d5

    .line 23
    aget-object v0, p1, v1

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 24
    aget-object v1, p1, v2

    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 25
    aget-object v2, p1, v3

    invoke-static {v2}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 26
    aget-object p1, p1, v4

    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_d5
    return-void
.end method

.method public setOpacity(Ljava/lang/Float;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opacity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    return-void
.end method

.method public setOutlined(Ljava/lang/Boolean;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlined"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    .line 2
    iput-object p2, p0, Lio/bidmachine/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    .line 3
    iput-object p3, p0, Lio/bidmachine/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    .line 4
    iput-object p4, p0, Lio/bidmachine/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    return-void
.end method

.method public setPadding(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, p1, p1, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 9
    :cond_b
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    .line 11
    aget-object p1, p1, v1

    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 13
    :cond_34
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_60

    .line 14
    aget-object v0, p1, v1

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 15
    aget-object p1, p1, v2

    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 17
    :cond_60
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_96

    .line 18
    aget-object v0, p1, v1

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 19
    aget-object v1, p1, v2

    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 20
    aget-object p1, p1, v3

    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v1, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 22
    :cond_96
    array-length v0, p1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_d5

    .line 23
    aget-object v0, p1, v1

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 24
    aget-object v1, p1, v2

    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 25
    aget-object v2, p1, v3

    invoke-static {v2}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 26
    aget-object p1, p1, v4

    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_d5
    return-void
.end method

.method public setStrokeColor(Ljava/lang/Integer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeColor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    return-void
.end method

.method public setStrokeWidth(Ljava/lang/Float;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeWidth"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    return-void
.end method

.method public setVerticalPosition(Ljava/lang/Integer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticalPosition"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    return-void
.end method

.method public setVisible(Ljava/lang/Boolean;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public setWidth(Ljava/lang/Number;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 2
    :goto_c
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    return-void
.end method
