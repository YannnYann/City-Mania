###### Class androidx.core.view.insets.Protection (androidx.core.view.insets.Protection)
.class public abstract Landroidx/core/view/insets/Protection;
.super Ljava/lang/Object;
.source "Protection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/insets/Protection$Attributes;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

.field public static final DEFAULT_INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

.field public static final DEFAULT_INTERPOLATOR_MOVE_IN:Landroid/view/animation/Interpolator;

.field public static final DEFAULT_INTERPOLATOR_MOVE_OUT:Landroid/view/animation/Interpolator;


# instance fields
.field public mController:Ljava/lang/Object;

.field public mInsets:Landroidx/core/graphics/Insets;

.field public mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

.field public final mSide:I

.field public mSystemAlpha:F

.field public mSystemInsetAmount:F

.field public mUserAlpha:F

.field public mUserInsetAmount:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_MOVE_IN:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_MOVE_OUT:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public dispatchColorHint(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public dispatchInsets(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .registers 4

    .line 151
    iput-object p1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    .line 152
    iput-object p2, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    const/4 p1, 0x0

    .line 153
    invoke-static {p1, p3}, Landroidx/core/view/insets/Protection$Attributes;->access$000(Landroidx/core/view/insets/Protection$Attributes;Landroidx/core/graphics/Insets;)V

    .line 154
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->updateLayout()Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Landroidx/core/view/insets/Protection$Attributes;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getController()Ljava/lang/Object;
    .registers 2

    .line 202
    iget-object v0, p0, Landroidx/core/view/insets/Protection;->mController:Ljava/lang/Object;

    return-object v0
.end method

.method public getSide()I
    .registers 2

    .line 105
    iget v0, p0, Landroidx/core/view/insets/Protection;->mSide:I

    return v0
.end method

.method public getThickness(I)I
    .registers 2

    .line 0
    return p1
.end method

.method public occupiesCorners()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setController(Ljava/lang/Object;)V
    .registers 2

    .line 206
    iput-object p1, p0, Landroidx/core/view/insets/Protection;->mController:Ljava/lang/Object;

    return-void
.end method

.method public setSystemAlpha(F)V
    .registers 2

    .line 214
    iput p1, p0, Landroidx/core/view/insets/Protection;->mSystemAlpha:F

    .line 215
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->updateAlpha()V

    return-void
.end method

.method public setSystemInsetAmount(F)V
    .registers 2

    .line 288
    iput p1, p0, Landroidx/core/view/insets/Protection;->mSystemInsetAmount:F

    .line 289
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->updateInsetAmount()V

    return-void
.end method

.method public setSystemVisible(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 210
    invoke-static {v0, p1}, Landroidx/core/view/insets/Protection$Attributes;->access$300(Landroidx/core/view/insets/Protection$Attributes;Z)V

    return-void
.end method

.method public final updateAlpha()V
    .registers 3

    .line 251
    iget v0, p0, Landroidx/core/view/insets/Protection;->mSystemAlpha:F

    iget v1, p0, Landroidx/core/view/insets/Protection;->mUserAlpha:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/core/view/insets/Protection$Attributes;->access$400(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void
.end method

.method public final updateInsetAmount()V
    .registers 6

    .line 325
    iget v0, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmount:F

    iget v1, p0, Landroidx/core/view/insets/Protection;->mSystemInsetAmount:F

    mul-float/2addr v0, v1

    .line 326
    iget v1, p0, Landroidx/core/view/insets/Protection;->mSide:I

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_23

    const/16 v2, 0x8

    if-eq v1, v2, :cond_18

    return-void

    :cond_18
    sub-float/2addr v3, v0

    .line 337
    invoke-static {v4}, Landroidx/core/view/insets/Protection$Attributes;->access$700(Landroidx/core/view/insets/Protection$Attributes;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    invoke-static {v4, v3}, Landroidx/core/view/insets/Protection$Attributes;->access$800(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void

    :cond_23
    sub-float/2addr v3, v0

    .line 334
    invoke-static {v4}, Landroidx/core/view/insets/Protection$Attributes;->access$500(Landroidx/core/view/insets/Protection$Attributes;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    invoke-static {v4, v3}, Landroidx/core/view/insets/Protection$Attributes;->access$600(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void

    :cond_2e
    sub-float/2addr v3, v0

    neg-float v0, v3

    .line 331
    invoke-static {v4}, Landroidx/core/view/insets/Protection$Attributes;->access$700(Landroidx/core/view/insets/Protection$Attributes;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v4, v0}, Landroidx/core/view/insets/Protection$Attributes;->access$800(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void

    :cond_3a
    sub-float/2addr v3, v0

    neg-float v0, v3

    .line 328
    invoke-static {v4}, Landroidx/core/view/insets/Protection$Attributes;->access$500(Landroidx/core/view/insets/Protection$Attributes;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v4, v0}, Landroidx/core/view/insets/Protection$Attributes;->access$600(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void
.end method

.method public updateLayout()Landroidx/core/graphics/Insets;
    .registers 7

    .line 158
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 160
    iget v1, p0, Landroidx/core/view/insets/Protection;->mSide:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_70

    const/4 v5, 0x2

    if-eq v1, v5, :cond_52

    const/4 v5, 0x4

    if-eq v1, v5, :cond_34

    const/16 v5, 0x8

    if-eq v1, v5, :cond_16

    move v1, v4

    goto/16 :goto_8d

    .line 183
    :cond_16
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 184
    iget-object v5, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    iget v5, v5, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v5}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v5

    invoke-static {v3, v5}, Landroidx/core/view/insets/Protection$Attributes;->access$200(Landroidx/core/view/insets/Protection$Attributes;I)V

    .line 185
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 186
    invoke-virtual {p0, v1}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v0

    invoke-static {v4, v4, v4, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_8d

    .line 176
    :cond_34
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    iget v1, v1, Landroidx/core/graphics/Insets;->right:I

    .line 177
    iget-object v5, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    iget v5, v5, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {p0, v5}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v5

    invoke-static {v3, v5}, Landroidx/core/view/insets/Protection$Attributes;->access$100(Landroidx/core/view/insets/Protection$Attributes;I)V

    .line 178
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 179
    invoke-virtual {p0, v1}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v0

    invoke-static {v4, v4, v0, v4}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_8d

    .line 169
    :cond_52
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    iget v1, v1, Landroidx/core/graphics/Insets;->top:I

    .line 170
    iget-object v5, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    iget v5, v5, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {p0, v5}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v5

    invoke-static {v3, v5}, Landroidx/core/view/insets/Protection$Attributes;->access$200(Landroidx/core/view/insets/Protection$Attributes;I)V

    .line 171
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 172
    invoke-virtual {p0, v1}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v0

    invoke-static {v4, v0, v4, v4}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_8d

    .line 162
    :cond_70
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    iget v1, v1, Landroidx/core/graphics/Insets;->left:I

    .line 163
    iget-object v5, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    iget v5, v5, Landroidx/core/graphics/Insets;->left:I

    invoke-virtual {p0, v5}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v5

    invoke-static {v3, v5}, Landroidx/core/view/insets/Protection$Attributes;->access$100(Landroidx/core/view/insets/Protection$Attributes;I)V

    .line 164
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 165
    invoke-virtual {p0, v1}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v0

    invoke-static {v0, v4, v4, v4}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    :cond_8d
    :goto_8d
    if-lez v1, :cond_90

    goto :goto_91

    :cond_90
    move v2, v4

    .line 192
    :goto_91
    invoke-virtual {p0, v2}, Landroidx/core/view/insets/Protection;->setSystemVisible(Z)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v1, :cond_9b

    move v4, v3

    goto :goto_9c

    :cond_9b
    move v4, v2

    .line 193
    :goto_9c
    invoke-virtual {p0, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    if-lez v1, :cond_a2

    move v2, v3

    .line 194
    :cond_a2
    invoke-virtual {p0, v2}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    return-object v0
.end method

###### Class androidx.core.view.insets.Protection.Attributes (androidx.core.view.insets.Protection$Attributes)
.class public Landroidx/core/view/insets/Protection$Attributes;
.super Ljava/lang/Object;
.source "Protection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/insets/Protection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# direct methods
.method public static synthetic access$000(Landroidx/core/view/insets/Protection$Attributes;Landroidx/core/graphics/Insets;)V
    .registers 2

    const/4 p0, 0x0

    .line 382
    throw p0
.end method

.method public static synthetic access$100(Landroidx/core/view/insets/Protection$Attributes;I)V
    .registers 2

    const/4 p0, 0x0

    .line 382
    throw p0
.end method

.method public static synthetic access$200(Landroidx/core/view/insets/Protection$Attributes;I)V
    .registers 2

    const/4 p0, 0x0

    .line 382
    throw p0
.end method

.method public static synthetic access$300(Landroidx/core/view/insets/Protection$Attributes;Z)V
    .registers 2

    const/4 p0, 0x0

    .line 382
    throw p0
.end method

.method public static synthetic access$400(Landroidx/core/view/insets/Protection$Attributes;F)V
    .registers 2

    const/4 p0, 0x0

    .line 382
    throw p0
.end method

.method public static synthetic access$500(Landroidx/core/view/insets/Protection$Attributes;)I
    .registers 1

    const/4 p0, 0x0

    .line 382
    throw p0
.end method

.method public static synthetic access$600(Landroidx/core/view/insets/Protection$Attributes;F)V
    .registers 2

    const/4 p0, 0x0

    .line 382
    throw p0
.end method

.method public static synthetic access$700(Landroidx/core/view/insets/Protection$Attributes;)I
    .registers 1

    const/4 p0, 0x0

    .line 382
    throw p0
.end method

.method public static synthetic access$800(Landroidx/core/view/insets/Protection$Attributes;F)V
    .registers 2

    const/4 p0, 0x0

    .line 382
    throw p0
.end method
