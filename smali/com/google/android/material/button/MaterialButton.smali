###### Class com.google.android.material.button.MaterialButton (com.google.android.material.button.MaterialButton)
.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MaterialButton.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;,
        Lcom/google/android/material/button/MaterialButton$SavedState;,
        Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;,
        Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;
    }
.end annotation


# static fields
.field public static final CHECKABLE_STATE_SET:[I

.field public static final CHECKED_STATE_SET:[I

.field public static final DEF_STYLE_RES:I

.field public static final MATERIAL_SIZE_OVERLAY_ATTR:I

.field public static final WIDTH_INCREASE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessibilityClassName:Ljava/lang/String;

.field public allowedWidthDecrease:I

.field public broadcasting:Z

.field public checked:Z

.field public displayedWidthDecrease:F

.field public displayedWidthIncrease:F

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconGravity:I

.field public iconLeft:I

.field public iconPadding:I

.field public iconSize:I

.field public iconTint:Landroid/content/res/ColorStateList;

.field public iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public iconTop:I

.field public isInHorizontalButtonGroup:Z

.field public final materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

.field public final onCheckedChangeListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

.field public opticalCenterEnabled:Z

.field public opticalCenterShift:I

.field public orientation:I

.field public originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public originalPaddingEnd:I

.field public originalPaddingStart:I

.field public originalWidth:F

.field public secondaryIcon:Landroid/graphics/drawable/Drawable;

.field public secondaryIconGravity:I

.field public secondaryIconLeft:I

.field public secondaryIconTint:Landroid/content/res/ColorStateList;

.field public secondaryIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public secondaryIconTop:I

.field public sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

.field public stopNullSecondaryIconUpdate:Z

.field public widthChangeDirection:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

.field public widthChangeMax:I

.field public widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public static synthetic $r8$lambda$-n63mSAUlMv1ovFPtLcymPNJIzs(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 991
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$082l-6qUlajHJ6tYsmjt9Msiwck(Lcom/google/android/material/button/MaterialButton;)V
    .registers 2

    .line 2084
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getOpticalCenterShift()I

    move-result v0

    .line 2084
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterShift:I

    .line 2085
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->updatePaddingsAndSizeForWidthAnimation()V

    .line 2086
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bs8HZBuSJJrm54CbiwKYjTkjfPE(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1106
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KVPicg6bnY_VCCRO776v1KVM2PU(Lcom/google/android/material/button/MaterialButton;I)V
    .registers 2

    .line 958
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconSize(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$S8Bw1Ddl9QWyZUUtNEn-eBlX3wE(Lcom/google/android/material/button/MaterialButton;Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 376
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->recoverOriginalLayoutParams()V

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static synthetic $r8$lambda$ch2aaORFCLrGEn8lT2Fq9UtauwI(Lcom/google/android/material/button/MaterialButton;F)V
    .registers 3

    const v0, 0x3de147ae    # 0.11f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 2071
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterShift:I

    if-eq v0, p1, :cond_11

    .line 2072
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterShift:I

    .line 2073
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->updatePaddingsAndSizeForWidthAnimation()V

    .line 2074
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_11
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const v0, 0x101009f

    .line 155
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    const v0, 0x10100a0

    .line 156
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    .line 227
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Button:I

    sput v0, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    .line 229
    sget v0, Lcom/google/android/material/R$attr;->materialSizeOverlay:I

    sput v0, Lcom/google/android/material/button/MaterialButton;->MATERIAL_SIZE_OVERLAY_ATTR:I

    .line 2131
    new-instance v0, Lcom/google/android/material/button/MaterialButton$1;

    const-string v1, "widthIncrease"

    invoke-direct {v0, v1}, Lcom/google/android/material/button/MaterialButton$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->WIDTH_INCREASE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 288
    sget v0, Lcom/google/android/material/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 292
    sget v4, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    sget v0, Lcom/google/android/material/button/MaterialButton;->MATERIAL_SIZE_OVERLAY_ATTR:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 293
    invoke-static {p1, p2, p3, v4, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II[I)Landroid/content/Context;

    move-result-object p1

    .line 292
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 236
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    .line 257
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 258
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    const/high16 v0, -0x80000000

    .line 262
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->orientation:I

    const/high16 v1, -0x31000000

    .line 263
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 264
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalPaddingStart:I

    .line 265
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalPaddingEnd:I

    .line 275
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    .line 278
    sget-object v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->BOTH:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeDirection:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 299
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButton:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 300
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 303
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 304
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_iconTintMode:I

    const/4 v2, -0x1

    .line 306
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 305
    invoke-static {p3, v5}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v6, Lcom/google/android/material/R$styleable;->MaterialButton_iconTint:I

    .line 308
    invoke-static {p3, p2, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v6, Lcom/google/android/material/R$styleable;->MaterialButton_icon:I

    invoke-static {p3, p2, v6}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 311
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_iconGravity:I

    const/4 v6, 0x1

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 312
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_iconSize:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 314
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_secondaryIconTintMode:I

    .line 316
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 315
    invoke-static {p3, v5}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 318
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_secondaryIconTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_9a

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_secondaryIconTint:I

    .line 319
    invoke-static {p3, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_9c

    .line 321
    :cond_9a
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    :goto_9c
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTint:Landroid/content/res/ColorStateList;

    .line 322
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_secondaryIconGravity:I

    const/4 v2, 0x3

    .line 323
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_secondaryIcon:I

    .line 325
    invoke-static {p3, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_b7

    move p3, v6

    goto :goto_b8

    :cond_b7
    move p3, p1

    .line 328
    :goto_b8
    iput-boolean p3, p0, Lcom/google/android/material/button/MaterialButton;->stopNullSecondaryIconUpdate:Z

    .line 330
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_shapeAppearance:I

    .line 331
    invoke-static {v0, p2, p3}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->create(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object p3

    if-eqz p3, :cond_c3

    goto :goto_cb

    .line 336
    :cond_c3
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    .line 337
    :goto_cb
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_opticalCenterEnabled:I

    .line 338
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 341
    new-instance v1, Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-direct {v1, p0, p3}, Lcom/google/android/material/button/MaterialButtonHelper;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearance;)V

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 342
    invoke-virtual {v1, p2}, Lcom/google/android/material/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 345
    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_android_checked:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->setCheckedInternal(Z)V

    .line 347
    instance-of p3, p3, Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz p3, :cond_ef

    .line 348
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->createSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSpringForce(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 350
    :cond_ef
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setOpticalCenterEnabled(Z)V

    .line 352
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 354
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 355
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_100

    move p2, v6

    goto :goto_101

    :cond_100
    move p2, p1

    :goto_101
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 356
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_109

    move p1, v6

    :cond_109
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIcon(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/button/MaterialButton;)F
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getDisplayedWidthIncrease()F

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/button/MaterialButton;F)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthIncrease(F)V

    return-void
.end method

.method private getActualTextAlignment()Landroid/text/Layout$Alignment;
    .registers 3

    .line 735
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    .line 747
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 739
    :cond_13
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 742
    :cond_16
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 737
    :cond_19
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getGravityTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayedWidthIncrease()F
    .registers 2

    .line 2036
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    return v0
.end method

.method private getGravityTextAlignment()Landroid/text/Layout$Alignment;
    .registers 3

    .line 713
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    const v1, 0x800005

    if-eq v0, v1, :cond_16

    .line 722
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 718
    :cond_16
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 715
    :cond_19
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method private getOpticalCenterShift()I
    .registers 3

    .line 2120
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterEnabled:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->isInHorizontalButtonGroup:Z

    if-eqz v0, :cond_1a

    .line 2121
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2123
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCornerSizeDiffX()F

    move-result v0

    const v1, 0x3de147ae    # 0.11f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private getTextHeight()I
    .registers 6

    .line 877
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    .line 879
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0

    .line 881
    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 882
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 886
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    :cond_2e
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 890
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 892
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getTextLayoutWidth()I
    .registers 5

    .line 869
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_17

    .line 871
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    float-to-double v0, v1

    .line 873
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private setCheckedInternal(Z)V
    .registers 4

    .line 1745
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    if-eq v0, p1, :cond_45

    .line 1746
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 1748
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    .line 1751
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz p1, :cond_22

    .line 1752
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedStateChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 1756
    :cond_22
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    if-eqz p1, :cond_27

    goto :goto_45

    :cond_27
    const/4 p1, 0x1

    .line 1760
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 1761
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;

    .line 1762
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    goto :goto_30

    :cond_42
    const/4 p1, 0x0

    .line 1764
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    :cond_45
    :goto_45
    return-void
.end method

.method private setDisplayedWidthIncrease(F)V
    .registers 3

    .line 2040
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_22

    .line 2041
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    .line 2042
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->updatePaddingsAndSizeForWidthAnimation()V

    .line 2043
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2045
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonGroup;

    if-eqz p1, :cond_22

    .line 2046
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonGroup;

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    float-to-int v0, v0

    .line 2047
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->onButtonWidthChanged(Lcom/google/android/material/button/MaterialButton;I)V

    :cond_22
    return-void
.end method


# virtual methods
.method public final areIconsGravitySameAlignment()Z
    .registers 2

    .line 1264
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconStart()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1265
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconEnd()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1266
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconTop()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final calculateEffectiveWidthChangeMax()I
    .registers 4

    .line 1993
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeDirection:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_14

    if-eq v0, v2, :cond_14

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v0, 0x0

    return v0

    .line 1995
    :cond_11
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeMax:I

    return v0

    .line 1998
    :cond_14
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeMax:I

    div-int/2addr v0, v2

    return v0
.end method

.method public final canUpdateWithoutTextAlignment(I)Z
    .registers 5

    .line 822
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1b

    const/4 v2, 0x2

    if-ne p1, v2, :cond_11

    .line 823
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v0, v2, :cond_1b

    :cond_11
    const/4 v2, 0x4

    if-ne p1, v2, :cond_19

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    return v1
.end method

.method public final createSpringForce()Landroidx/dynamicanimation/animation/SpringForce;
    .registers 4

    .line 366
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$attr;->motionSpringFastSpatial:I

    sget v2, Lcom/google/android/material/R$style;->Motion_Material3_Spring_Standard_Fast_Spatial:I

    .line 365
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeSpringForce(Landroid/content/Context;II)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    return-object v0
.end method

.method public getA11yClassName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->accessibilityClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 388
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->accessibilityClassName:Ljava/lang/String;

    return-object v0

    .line 391
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_14

    const-class v0, Landroid/widget/CompoundButton;

    goto :goto_16

    :cond_14
    const-class v0, Landroid/widget/Button;

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedWidthDecrease()I
    .registers 2

    .line 2032
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    return v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 516
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 527
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()I
    .registers 2

    .line 1542
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerRadius()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getCornerSpringForce()Landroidx/dynamicanimation/animation/SpringForce;
    .registers 2

    .line 1938
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1027
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .registers 2

    .line 1554
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    return v0
.end method

.method public final getIconLeft(II)I
    .registers 7

    .line 831
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 832
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez v2, :cond_f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_f

    :cond_e
    move v2, v1

    .line 835
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 836
    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez v3, :cond_1d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_1d

    :cond_1c
    move v3, v1

    .line 840
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 841
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sub-int/2addr p1, v0

    .line 845
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    .line 846
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 847
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_3b

    div-int/lit8 p1, p1, 0x2

    .line 849
    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isLayoutRTL()Z

    move-result v0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_43

    const/4 v1, 0x1

    :cond_43
    if-eq v0, v1, :cond_46

    neg-int p1, p1

    :cond_46
    return p1
.end method

.method public getIconPadding()I
    .registers 2

    .line 942
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    return v0
.end method

.method public getIconSize()I
    .registers 2

    .line 977
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1066
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1091
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getIconTop(II)I
    .registers 4

    .line 859
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextHeight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sub-int/2addr p1, p2

    .line 863
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    .line 856
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getInsetBottom()I
    .registers 2

    .line 1617
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetBottom()I

    move-result v0

    return v0
.end method

.method public getInsetLeft()I
    .registers 2

    .line 1665
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetLeft()I

    move-result v0

    return v0
.end method

.method public getInsetRight()I
    .registers 2

    .line 1693
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetRight()I

    move-result v0

    return v0
.end method

.method public getInsetTop()I
    .registers 2

    .line 1638
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetTop()I

    move-result v0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1416
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondaryIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1145
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSecondaryIconGravity()I
    .registers 2

    .line 1581
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    return v0
.end method

.method public getSecondaryIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1184
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSecondaryIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1209
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getShapeAppearance()Lcom/google/android/material/shape/ShapeAppearance;
    .registers 3

    .line 1910
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1911
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getShapeAppearance()Lcom/google/android/material/shape/ShapeAppearance;

    move-result-object v0

    return-object v0

    .line 1913
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to get ShapeAppearance from a MaterialButton which has an overwritten background."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    .line 1867
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1868
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0

    .line 1870
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1458
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokeWidth()I
    .registers 2

    .line 1501
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeWidth()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 462
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 463
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 468
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 499
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 500
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 504
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdatedIconFor(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    const/4 v1, 0x1

    if-eq p1, v1, :cond_18

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    return-object v0

    .line 1277
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconEnd()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_17
    return-object v0

    .line 1275
    :cond_18
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconTop()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_25
    return-object v0

    .line 1273
    :cond_26
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconStart()Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_33
    return-object v0
.end method

.method public final getUpdatedSecondaryIconFor(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    const/4 v1, 0x1

    if-eq p1, v1, :cond_18

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    return-object v0

    .line 1372
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_17
    return-object v0

    .line 1370
    :cond_18
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_25
    return-object v0

    .line 1368
    :cond_26
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_33
    return-object v0
.end method

.method public final initializeSizeAnimation()V
    .registers 3

    .line 360
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/google/android/material/button/MaterialButton;->WIDTH_INCREASE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 361
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->createSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public isCheckable()Z
    .registers 2

    .line 1824
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 1770
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    return v0
.end method

.method public final isIconEnd()Z
    .registers 3

    .line 1288
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public final isIconStart()Z
    .registers 4

    .line 1284
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    return v1
.end method

.method public final isIconTop()Z
    .registers 3

    .line 1292
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_d

    const/16 v1, 0x20

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public final isInHorizontalButtonGroup()Z
    .registers 2

    .line 2005
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/button/MaterialButtonGroup;

    if-eqz v0, :cond_16

    .line 2006
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final isLayoutRTL()Z
    .registers 3

    .line 896
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final isSecondaryIconEnd()Z
    .registers 3

    .line 1301
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public final isSecondaryIconStart()Z
    .registers 4

    .line 1296
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    return v1
.end method

.method public final isSecondaryIconTop()Z
    .registers 3

    .line 1306
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_d

    const/16 v1, 0x20

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public final isUsingOriginalBackground()Z
    .registers 2

    .line 1959
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final maybeAnimateSize(Z)V
    .registers 5

    .line 1969
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-nez v0, :cond_5

    goto :goto_39

    .line 1972
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_c

    .line 1973
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->initializeSizeAnimation()V

    .line 1975
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->isInHorizontalButtonGroup:Z

    if-eqz v0, :cond_39

    .line 1979
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->calculateEffectiveWidthChangeMax()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    .line 1981
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/StateListSizeChange;->getSizeChangeForState([I)Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    .line 1983
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->getChange(I)I

    move-result v1

    .line 1978
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1984
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    if-eqz p1, :cond_39

    .line 1986
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_39
    :goto_39
    return-void
.end method

.method public final maybeRunAfterWidthAnimation(Ljava/lang/Runnable;)Z
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 373
    new-instance v0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/button/MaterialButton;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 650
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 652
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 653
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 654
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 653
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    :cond_12
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x2

    .line 1698
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1700
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1701
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1704
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1705
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1c
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 410
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 411
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 401
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 402
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 404
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 581
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    move-object p1, p0

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    .line 587
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIconPosition(II)V

    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 590
    iget p3, p1, Lcom/google/android/material/button/MaterialButton;->orientation:I

    const/high16 p4, -0x31000000

    if-eq p3, p2, :cond_2e

    .line 591
    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->orientation:I

    .line 592
    iput p4, p1, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 594
    :cond_2e
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    cmpl-float p2, p2, p4

    if-nez p2, :cond_6a

    .line 595
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 600
    iget-object p2, p1, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez p2, :cond_6a

    .line 601
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/material/button/MaterialButtonGroup;

    if-eqz p2, :cond_6a

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButtonGroup;->getButtonSizeChange()Lcom/google/android/material/shape/StateListSizeChange;

    move-result-object p2

    if-eqz p2, :cond_6a

    .line 603
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p2, p1, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 604
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p3, p1, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 605
    iget p3, p1, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 606
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    :cond_6a
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    const/high16 p3, -0x80000000

    if-ne p2, p3, :cond_91

    .line 612
    iget-object p2, p1, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_76

    const/4 p2, 0x0

    goto :goto_85

    .line 614
    :cond_76
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconPadding()I

    move-result p2

    iget p4, p1, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez p4, :cond_84

    iget-object p4, p1, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    :cond_84
    add-int/2addr p2, p4

    .line 615
    :goto_85
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p4, p2

    iput p4, p1, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    .line 618
    :cond_91
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->originalPaddingStart:I

    if-ne p2, p3, :cond_9b

    .line 619
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->originalPaddingStart:I

    .line 621
    :cond_9b
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->originalPaddingEnd:I

    if-ne p2, p3, :cond_a5

    .line 622
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->originalPaddingEnd:I

    .line 624
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isInHorizontalButtonGroup()Z

    move-result p2

    iput-boolean p2, p1, Lcom/google/android/material/button/MaterialButton;->isInHorizontalButtonGroup:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 426
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    if-nez v0, :cond_8

    .line 427
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 430
    :cond_8
    check-cast p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    .line 431
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 432
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 418
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 420
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    iput-boolean v0, v1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    return-object v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 643
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 644
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    .line 645
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIconPosition(II)V

    return-void
.end method

.method public performClick()Z
    .registers 4

    .line 1781
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isToggleCheckedStateOnClick()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1782
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    move v0, v1

    .line 1786
    :goto_15
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v2

    if-eqz v0, :cond_20

    if-nez v2, :cond_20

    .line 1791
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_20
    return v2
.end method

.method public recoverOriginalLayoutParams()V
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_e

    .line 629
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 630
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, -0x31000000

    .line 631
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    :cond_e
    return-void
.end method

.method public refreshDrawableState()V
    .registers 3

    .line 668
    invoke-super {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 669
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 670
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 675
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_16
    return-void
.end method

.method public setA11yClassName(Ljava/lang/String;)V
    .registers 2

    .line 396
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->accessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 543
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 532
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 533
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundColor(I)V

    return-void

    .line 537
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 557
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 558
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_1c

    .line 559
    const-string v0, "MaterialButton"

    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 567
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 572
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .line 575
    :cond_28
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    if-eqz p1, :cond_b

    .line 550
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 552
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 510
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 521
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    .line 1834
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1835
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCheckable(Z)V

    :cond_b
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 1741
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCheckedInternal(Z)V

    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 3

    .line 912
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v0

    if-eq v0, p1, :cond_a

    const/high16 v0, -0x31000000

    .line 913
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 915
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method public setCornerRadius(I)V
    .registers 3

    .line 1513
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1514
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerRadius(I)V

    :cond_b
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .registers 3

    .line 1527
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1528
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    :cond_11
    return-void
.end method

.method public setCornerSpringForce(Landroidx/dynamicanimation/animation/SpringForce;)V
    .registers 3

    .line 1927
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSpringForce(Landroidx/dynamicanimation/animation/SpringForce;)V

    return-void
.end method

.method public setDisplayedWidthDecrease(I)V
    .registers 3

    .line 2053
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthDecrease:F

    .line 2054
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->updatePaddingsAndSizeForWidthAnimation()V

    .line 2055
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setElevation(F)V
    .registers 3

    .line 660
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 661
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 662
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_12
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 990
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_25

    .line 991
    new-instance v0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->maybeRunAfterWidthAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_25

    :cond_10
    const/high16 v0, -0x31000000

    .line 994
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 995
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 996
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 997
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    :cond_25
    :goto_25
    return-void
.end method

.method public setIconGravity(I)V
    .registers 3

    .line 1565
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-eq v0, p1, :cond_14

    .line 1566
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->validateIconGravity()V

    .line 1567
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 1568
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    :cond_14
    return-void
.end method

.method public setIconPadding(I)V
    .registers 3

    .line 926
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    if-eq v0, p1, :cond_9

    .line 927
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 928
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    :cond_9
    return-void
.end method

.method public setIconResource(I)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1013
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1015
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .registers 3

    if-ltz p1, :cond_20

    .line 957
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eq v0, p1, :cond_1f

    .line 958
    new-instance v0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/button/MaterialButton;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->maybeRunAfterWidthAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1f

    :cond_12
    const/high16 v0, -0x31000000

    .line 961
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 962
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    const/4 p1, 0x1

    .line 963
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 964
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIcon(Z)V

    :cond_1f
    :goto_1f
    return-void

    .line 954
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iconSize cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1039
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_a

    .line 1040
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1041
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_a
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1077
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_a

    .line 1078
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    .line 1079
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_a
    return-void
.end method

.method public setIconTintResource(I)V
    .registers 3

    .line 1054
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setInsetBottom(I)V
    .registers 3

    .line 1606
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetBottom(I)V

    return-void
.end method

.method public setInsetLeft(I)V
    .registers 3

    .line 1651
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetLeft(I)V

    return-void
.end method

.method public setInsetRight(I)V
    .registers 3

    .line 1679
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetRight(I)V

    return-void
.end method

.method public setInsetTop(I)V
    .registers 3

    .line 1627
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetTop(I)V

    return-void
.end method

.method public setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 907
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V
    .registers 2

    .line 1946
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    return-void
.end method

.method public setOpticalCenterEnabled(Z)V
    .registers 3

    .line 2065
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterEnabled:Z

    if-eq v0, p1, :cond_21

    .line 2066
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterEnabled:Z

    if-eqz p1, :cond_13

    .line 2068
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    new-instance v0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSizeChangeListener(Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;)V

    goto :goto_19

    .line 2078
    :cond_13
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSizeChangeListener(Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;)V

    .line 2082
    :goto_19
    new-instance p1, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method public setPressed(Z)V
    .registers 3

    .line 1951
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    if-eqz v0, :cond_7

    .line 1952
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;->onPressedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 1954
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    const/4 p1, 0x0

    .line 1955
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->maybeAnimateSize(Z)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1387
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1388
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_b
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3

    .line 1401
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1402
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1105
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_28

    .line 1106
    new-instance v0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->maybeRunAfterWidthAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_28

    :cond_10
    const/high16 v0, -0x31000000

    .line 1109
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 1110
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 1111
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->stopNullSecondaryIconUpdate:Z

    const/4 p1, 0x1

    .line 1112
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIcon(Z)V

    .line 1113
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIconPosition(II)V

    :cond_28
    :goto_28
    return-void
.end method

.method public setSecondaryIconGravity(I)V
    .registers 3

    .line 1592
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    if-eq v0, p1, :cond_14

    .line 1593
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->validateSecondaryIconGravity()V

    .line 1594
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    .line 1595
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIconPosition(II)V

    :cond_14
    return-void
.end method

.method public setSecondaryIconResource(I)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1130
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1132
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSecondaryIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1157
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_a

    .line 1158
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTint:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIcon(Z)V

    :cond_a
    return-void
.end method

.method public setSecondaryIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1195
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_a

    .line 1196
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    .line 1197
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIcon(Z)V

    :cond_a
    return-void
.end method

.method public setSecondaryIconTintResource(I)V
    .registers 3

    .line 1172
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSecondaryIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setShapeAppearance(Lcom/google/android/material/shape/ShapeAppearance;)V
    .registers 4

    .line 1886
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1887
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-interface {p1}, Lcom/google/android/material/shape/ShapeAppearance;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1888
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->createSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSpringForce(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 1890
    :cond_1d
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearance(Lcom/google/android/material/shape/ShapeAppearance;)V

    return-void

    .line 1892
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to set ShapeAppearance on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    .line 1847
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1848
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearance(Lcom/google/android/material/shape/ShapeAppearance;)V

    return-void

    .line 1850
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShouldDrawSurfaceColorStroke(Z)V
    .registers 3

    .line 1963
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1964
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShouldDrawSurfaceColorStroke(Z)V

    :cond_b
    return-void
.end method

.method public setSizeChange(Lcom/google/android/material/shape/StateListSizeChange;)V
    .registers 3

    .line 2010
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-eq v0, p1, :cond_a

    .line 2011
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    const/4 p1, 0x1

    .line 2012
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->maybeAnimateSize(Z)V

    :cond_a
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1429
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1430
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_b
    return-void
.end method

.method public setStrokeColorResource(I)V
    .registers 3

    .line 1444
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1445
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    .line 1471
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1472
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeWidth(I)V

    :cond_b
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .registers 3

    .line 1486
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1487
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    :cond_11
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 444
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 445
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 449
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 481
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 482
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 486
    :cond_c
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4

    const/high16 v0, -0x31000000

    .line 682
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 683
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .registers 3

    .line 700
    invoke-super {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    .line 701
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    .line 702
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIconPosition(II)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    const/high16 v0, -0x31000000

    .line 688
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 689
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    const/high16 v0, -0x31000000

    .line 694
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 695
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    return-void
.end method

.method public setToggleCheckedStateOnClick(Z)V
    .registers 3

    .line 1814
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setToggleCheckedStateOnClick(Z)V

    return-void
.end method

.method public setWidth(I)V
    .registers 3

    const/high16 v0, -0x31000000

    .line 637
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 638
    invoke-super {p0, p1}, Landroid/widget/TextView;->setWidth(I)V

    return-void
.end method

.method public setWidthChangeDirection(Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;)V
    .registers 3

    .line 2024
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeDirection:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    if-eq v0, p1, :cond_a

    .line 2025
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeDirection:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    const/4 p1, 0x1

    .line 2026
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->maybeAnimateSize(Z)V

    :cond_a
    return-void
.end method

.method public setWidthChangeMax(I)V
    .registers 3

    .line 2017
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeMax:I

    if-eq v0, p1, :cond_a

    .line 2018
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeMax:I

    const/4 p1, 0x1

    .line 2019
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->maybeAnimateSize(Z)V

    :cond_a
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 1775
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public final updateIcon(Z)V
    .registers 9

    .line 1218
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    .line 1219
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 1220
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1221
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1d

    .line 1222
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1225
    :cond_1d
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v0, :cond_22

    goto :goto_28

    :cond_22
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1226
    :goto_28
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v2, :cond_2d

    goto :goto_33

    :cond_2d
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1227
    :goto_33
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    add-int/2addr v0, v4

    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1228
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1232
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->validateIconGravity()V

    .line 1233
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->areIconsGravitySameAlignment()Z

    move-result v0

    if-eqz v0, :cond_56

    goto/16 :goto_c3

    .line 1236
    :cond_56
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    .line 1237
    aget-object v3, v0, v2

    .line 1238
    aget-object v4, v0, v1

    const/4 v5, 0x2

    .line 1239
    aget-object v0, v0, v5

    .line 1241
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result v6

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-ne v3, v6, :cond_80

    .line 1242
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v3, :cond_80

    .line 1243
    :cond_76
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v4, v0, :cond_82

    :cond_80
    move v0, v1

    goto :goto_83

    :cond_82
    move v0, v2

    :goto_83
    if-nez p1, :cond_87

    if-eqz v0, :cond_c3

    .line 1246
    :cond_87
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9c

    .line 1247
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->getUpdatedIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->getUpdatedIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1248
    :cond_9c
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 1249
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->getUpdatedIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->getUpdatedIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1250
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 1251
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->getUpdatedIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->getUpdatedIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_c3
    :goto_c3
    return-void
.end method

.method public final updateIconPosition(II)V
    .registers 5

    .line 752
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_64

    .line 756
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_45

    .line 769
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 770
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 771
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2d

    .line 772
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 773
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void

    .line 777
    :cond_2d
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 778
    :cond_37
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/button/MaterialButton;->getIconTop(II)I

    move-result p1

    .line 779
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    if-eq p2, p1, :cond_64

    .line 780
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 781
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void

    .line 757
    :cond_45
    :goto_45
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 758
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->canUpdateWithoutTextAlignment(I)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 759
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 760
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void

    .line 764
    :cond_55
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->getIconLeft(II)I

    move-result p1

    .line 765
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    if-eq p2, p1, :cond_64

    .line 766
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 767
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_64
    :goto_64
    return-void
.end method

.method public final updatePaddingsAndSizeForWidthAnimation()V
    .registers 6

    .line 2101
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthDecrease:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 2104
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterShift:I

    neg-int v1, v1

    goto :goto_12

    :cond_10
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterShift:I

    .line 2106
    :goto_12
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    .line 2108
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 2109
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2112
    :cond_26
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->originalPaddingStart:I

    add-int/2addr v1, v2

    .line 2114
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->originalPaddingEnd:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v2

    .line 2116
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 2112
    invoke-virtual {p0, v1, v3, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final updateSecondaryIcon(Z)V
    .registers 9

    .line 1311
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    .line 1312
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 1313
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1314
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1d

    .line 1315
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1318
    :cond_1d
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v0, :cond_22

    goto :goto_28

    :cond_22
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1319
    :goto_28
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v2, :cond_2d

    goto :goto_33

    :cond_2d
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1320
    :goto_33
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconLeft:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTop:I

    add-int/2addr v0, v4

    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1325
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1329
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->validateSecondaryIconGravity()V

    .line 1330
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->stopNullSecondaryIconUpdate:Z

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5a

    .line 1331
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->areIconsGravitySameAlignment()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto/16 :goto_c7

    .line 1334
    :cond_5a
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    .line 1335
    aget-object v3, v0, v2

    .line 1336
    aget-object v4, v0, v1

    const/4 v5, 0x2

    .line 1337
    aget-object v0, v0, v5

    .line 1339
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconStart()Z

    move-result v6

    if-eqz v6, :cond_70

    iget-object v6, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-ne v3, v6, :cond_84

    .line 1340
    :cond_70
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconEnd()Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v3, :cond_84

    .line 1341
    :cond_7a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconTop()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v4, v0, :cond_86

    :cond_84
    move v0, v1

    goto :goto_87

    :cond_86
    move v0, v2

    :goto_87
    if-nez p1, :cond_8b

    if-eqz v0, :cond_c7

    .line 1344
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconStart()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a0

    .line 1345
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 1346
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->getUpdatedSecondaryIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->getUpdatedSecondaryIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1345
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1347
    :cond_a0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconEnd()Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 1349
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->getUpdatedSecondaryIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->getUpdatedSecondaryIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 1348
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1350
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconTop()Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 1352
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->getUpdatedSecondaryIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->getUpdatedSecondaryIconFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1351
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method public final updateSecondaryIconPosition(II)V
    .registers 5

    .line 787
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_64

    .line 791
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconStart()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconEnd()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_45

    .line 804
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isSecondaryIconTop()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 805
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconLeft:I

    .line 806
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2d

    .line 807
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTop:I

    .line 808
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIcon(Z)V

    return-void

    .line 812
    :cond_2d
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 813
    :cond_37
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/button/MaterialButton;->getIconTop(II)I

    move-result p1

    .line 814
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTop:I

    if-eq p2, p1, :cond_64

    .line 815
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTop:I

    .line 816
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIcon(Z)V

    return-void

    .line 792
    :cond_45
    :goto_45
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconTop:I

    .line 793
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->canUpdateWithoutTextAlignment(I)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 794
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconLeft:I

    .line 795
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIcon(Z)V

    return-void

    .line 799
    :cond_55
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconGravity:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->getIconLeft(II)I

    move-result p1

    .line 800
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconLeft:I

    if-eq p2, p1, :cond_64

    .line 801
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIconLeft:I

    .line 802
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->updateSecondaryIcon(Z)V

    :cond_64
    :goto_64
    return-void
.end method

.method public final validateIconGravity()V
    .registers 3

    .line 1257
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->areIconsGravitySameAlignment()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 1258
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iconGravity cannot have the same alignment as secondaryIconGravity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    return-void
.end method

.method public final validateSecondaryIconGravity()V
    .registers 3

    .line 1358
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->secondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->areIconsGravitySameAlignment()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 1359
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secondaryIconGravity cannot have the same alignment as iconGravity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    return-void
.end method

###### Class com.google.android.material.button.MaterialButton.AnonymousClass1 (com.google.android.material.button.MaterialButton$1)
.class public Lcom/google/android/material/button/MaterialButton$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "MaterialButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/button/MaterialButton;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2132
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/google/android/material/button/MaterialButton;)F
    .registers 2

    .line 2135
    invoke-static {p1}, Lcom/google/android/material/button/MaterialButton;->access$000(Lcom/google/android/material/button/MaterialButton;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2132
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton$1;->getValue(Lcom/google/android/material/button/MaterialButton;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/google/android/material/button/MaterialButton;F)V
    .registers 3

    .line 2140
    invoke-static {p1, p2}, Lcom/google/android/material/button/MaterialButton;->access$100(Lcom/google/android/material/button/MaterialButton;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2132
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton$1;->setValue(Lcom/google/android/material/button/MaterialButton;F)V

    return-void
.end method

###### Class com.google.android.material.button.MaterialButton.OnCheckedChangeListener (com.google.android.material.button.MaterialButton$OnCheckedChangeListener)
.class public interface abstract Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;
.super Ljava/lang/Object;
.source "MaterialButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCheckedChangeListener"
.end annotation


# virtual methods
.method public abstract onCheckedChanged(Lcom/google/android/material/button/MaterialButton;Z)V
.end method

###### Class com.google.android.material.button.MaterialButton.OnPressedChangeListener (com.google.android.material.button.MaterialButton$OnPressedChangeListener)
.class public interface abstract Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;
.super Ljava/lang/Object;
.source "MaterialButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPressedChangeListener"
.end annotation


# virtual methods
.method public abstract onPressedChanged(Lcom/google/android/material/button/MaterialButton;Z)V
.end method

###### Class com.google.android.material.button.MaterialButton.SavedState (com.google.android.material.button.MaterialButton$SavedState)
.class public Lcom/google/android/material/button/MaterialButton$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "MaterialButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/button/MaterialButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2170
    new-instance v0, Lcom/google/android/material/button/MaterialButton$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/material/button/MaterialButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/button/MaterialButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 2153
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    if-nez p2, :cond_c

    .line 2155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2157
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton$SavedState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 2149
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 2167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2162
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2163
    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.google.android.material.button.MaterialButton.SavedState.AnonymousClass1 (com.google.android.material.button.MaterialButton$SavedState$1)
.class public Lcom/google/android/material/button/MaterialButton$SavedState$1;
.super Ljava/lang/Object;
.source "MaterialButton.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButton$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/google/android/material/button/MaterialButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/button/MaterialButton$SavedState;
    .registers 4

    .line 2181
    new-instance v0, Lcom/google/android/material/button/MaterialButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/button/MaterialButton$SavedState;
    .registers 4

    .line 2175
    new-instance v0, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2171
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/button/MaterialButton$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2171
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/button/MaterialButton$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/button/MaterialButton$SavedState;
    .registers 2

    .line 2187
    new-array p1, p1, [Lcom/google/android/material/button/MaterialButton$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2171
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton$SavedState$1;->newArray(I)[Lcom/google/android/material/button/MaterialButton$SavedState;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.material.button.MaterialButton.WidthChangeDirection (com.google.android.material.button.MaterialButton$WidthChangeDirection)
.class public final enum Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;
.super Ljava/lang/Enum;
.source "MaterialButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidthChangeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

.field public static final enum BOTH:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

.field public static final enum END:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

.field public static final enum NONE:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

.field public static final enum START:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;


# direct methods
.method public static synthetic $values()[Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;
    .registers 4

    .line 218
    sget-object v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->NONE:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    sget-object v1, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->START:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    sget-object v2, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->END:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    sget-object v3, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->BOTH:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 219
    new-instance v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->NONE:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    .line 220
    new-instance v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    const-string v1, "START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->START:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    .line 221
    new-instance v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->END:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    .line 222
    new-instance v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    const-string v1, "BOTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->BOTH:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    .line 218
    invoke-static {}, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->$values()[Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->$VALUES:[Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 218
    const-class v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;
    .registers 1

    .line 218
    sget-object v0, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->$VALUES:[Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    invoke-virtual {v0}, [Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    return-object v0
.end method

###### Class com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0 (com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/android/material/button/MaterialButton;->$r8$lambda$Bs8HZBuSJJrm54CbiwKYjTkjfPE(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda1 (com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/android/material/button/MaterialButton;->$r8$lambda$-n63mSAUlMv1ovFPtLcymPNJIzs(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda2 (com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButton;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/button/MaterialButton;

    iput p2, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/button/MaterialButton;

    iget v1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, v1}, Lcom/google/android/material/button/MaterialButton;->$r8$lambda$KVPicg6bnY_VCCRO776v1KVM2PU(Lcom/google/android/material/button/MaterialButton;I)V

    return-void
.end method

###### Class com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda3 (com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButton;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final onCornerSizeChange(F)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, p1}, Lcom/google/android/material/button/MaterialButton;->$r8$lambda$ch2aaORFCLrGEn8lT2Fq9UtauwI(Lcom/google/android/material/button/MaterialButton;F)V

    return-void
.end method

###### Class com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda4 (com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButton;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Lcom/google/android/material/button/MaterialButton;->$r8$lambda$082l-6qUlajHJ6tYsmjt9Msiwck(Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method

###### Class com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda5 (com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButton;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/material/button/MaterialButton;->$r8$lambda$S8Bw1Ddl9QWyZUUtNEn-eBlX3wE(Lcom/google/android/material/button/MaterialButton;Ljava/lang/Runnable;)V

    return-void
.end method
