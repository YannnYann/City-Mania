###### Class com.google.android.material.button.MaterialButtonGroup (com.google.android.material.button.MaterialButtonGroup)
.class public Lcom/google/android/material/button/MaterialButtonGroup;
.super Landroid/widget/LinearLayout;
.source "MaterialButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;,
        Lcom/google/android/material/button/MaterialButtonGroup$OverflowUtils;
    }
.end annotation


# static fields
.field public static final DEF_STYLE_RES:I

.field public static final OVERFLOW_BUTTON_TAG:Ljava/lang/Object;


# instance fields
.field public buttonOverflowInitialized:Z

.field public buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

.field public final buttonToMenuItemMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/Button;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public childOrder:[Ljava/lang/Integer;

.field public final childOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field public childShapesDirty:Z

.field public groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

.field public innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

.field public final originalChildShapeAppearanceModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/ShapeAppearance;",
            ">;"
        }
    .end annotation
.end field

.field public overflowButton:Lcom/google/android/material/button/MaterialButton;

.field public final overflowButtonsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field public final overflowMenuItemIconPadding:I

.field public overflowMode:I

.field public popupMenu:Landroidx/appcompat/widget/PopupMenu;

.field public final popupMenuItemToButtonMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field public final pressedStateTracker:Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;

.field public final rowButtonFirstIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public spacing:I

.field public final tempOverflowButtonsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PPvYzu5sUsE2QBY_Uh56lm9gCgE(Landroid/widget/Button;Landroid/view/MenuItem;)Z
    .registers 2

    .line 614
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Rax0YMRIbiIrB6RD8v2eDsNN8o4(Lcom/google/android/material/button/MaterialButtonGroup;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    .line 168
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_31

    return v0

    .line 174
    :cond_31
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nSb5s-0Ox4JObG6P_T034TqSgIw(Lcom/google/android/material/button/MaterialButtonGroup;Landroid/view/View;)V
    .registers 2

    .line 293
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateOverflowMenuItemsState()V

    .line 294
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 125
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_MaterialButtonGroup:I

    sput v0, Lcom/google/android/material/button/MaterialButtonGroup;->DEF_STYLE_RES:I

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonGroup;->OVERFLOW_BUTTON_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 204
    sget v0, Lcom/google/android/material/R$attr;->materialButtonGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 209
    sget v4, Lcom/google/android/material/button/MaterialButtonGroup;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 156
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMode:I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildShapeAppearanceModels:Ljava/util/List;

    .line 160
    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonGroup;Lcom/google/android/material/button/MaterialButtonGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;

    .line 161
    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/button/MaterialButtonGroup;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childOrderComparator:Ljava/util/Comparator;

    const/4 v6, 0x1

    .line 184
    iput-boolean v6, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->popupMenuItemToButtonMapping:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonToMenuItemMapping:Ljava/util/Map;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->tempOverflowButtonsList:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButtonsList:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButtonGroup:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 213
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 216
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_buttonSizeChange:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_66

    .line 217
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_buttonSizeChange:I

    .line 218
    invoke-static {v0, p2, p3}, Lcom/google/android/material/shape/StateListSizeChange;->create(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/shape/StateListSizeChange;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    .line 222
    :cond_66
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_shapeAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_97

    .line 223
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_shapeAppearance:I

    .line 224
    invoke-static {v0, p2, p3}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->create(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-nez p3, :cond_97

    .line 227
    new-instance p3, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    sget v1, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_shapeAppearance:I

    .line 231
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_shapeAppearanceOverlay:I

    .line 233
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 229
    invoke-static {v0, v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 236
    invoke-virtual {p3}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 239
    :cond_97
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_innerCornerSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_ad

    .line 240
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_innerCornerSize:I

    new-instance v1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 241
    invoke-static {v0, p2, p3, v1}, Lcom/google/android/material/shape/StateListCornerSize;->create(Landroid/content/Context;Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    .line 248
    :cond_ad
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_android_spacing:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    .line 250
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 251
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_android_enabled:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButtonGroup;->setEnabled(Z)V

    .line 252
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_overflowMode:I

    .line 253
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->setOverflowMode(I)V

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/google/android/material/R$dimen;->m3_btn_group_overflow_item_icon_horizontal_padding:I

    .line 257
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMenuItemIconPadding:I

    .line 258
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->isOverflowMenuSupported()Z

    move-result p1

    if-eqz p1, :cond_df

    .line 259
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/button/MaterialButtonGroup;->initializeButtonOverflow(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 261
    :cond_df
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getFirstVisibleChildIndex()I
    .registers 4

    .line 1159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 1161
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method private getLastVisibleChildIndex()I
    .registers 3

    .line 1170
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 1172
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method private isChildVisible(I)Z
    .registers 3

    .line 1181
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1182
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
    .registers 4

    .line 1187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1188
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_e
    return-void
.end method


# virtual methods
.method public final addMenuItemForButton(Landroid/view/Menu;Landroid/widget/Button;)Landroid/view/MenuItem;
    .registers 11

    .line 600
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 604
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    .line 605
    iget-object v1, v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowText:Ljava/lang/CharSequence;

    invoke-static {p2, v1}, Lcom/google/android/material/button/MaterialButtonGroup$OverflowUtils;->getMenuItemText(Landroid/view/View;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 606
    iget-object v3, v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowIcon:Landroid/graphics/drawable/Drawable;

    .line 607
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz v3, :cond_2b

    .line 609
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMenuItemIconPadding:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, v4

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 612
    :cond_2b
    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Button;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 312
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_c

    .line 313
    const-string p1, "MButtonGroup"

    const-string p2, "Child views must be of type MaterialButton."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->recoverAllChildrenLayoutParams()V

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 322
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_21

    const/4 v1, -0x1

    if-ne p2, v1, :cond_21

    .line 324
    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    .line 326
    :cond_21
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 328
    :goto_24
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 329
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V

    .line 330
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 333
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildShapeAppearanceModels:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearance()Lcom/google/android/material/shape/ShapeAppearance;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final adjustChildMarginsAndUpdateLayout()V
    .registers 9

    .line 757
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getFirstVisibleChildIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    :cond_8
    add-int/lit8 v1, v0, 0x1

    .line 762
    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6d

    .line 764
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    .line 765
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 766
    instance-of v4, v2, Lcom/google/android/material/button/MaterialButton;

    const/4 v5, 0x0

    if-eqz v4, :cond_46

    instance-of v4, v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v4, :cond_46

    .line 768
    move-object v4, v2

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 769
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 771
    iget v6, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    if-gtz v6, :cond_40

    .line 773
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    .line 777
    invoke-virtual {v4, v7}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    .line 778
    invoke-virtual {v3, v7}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    goto :goto_47

    .line 780
    :cond_40
    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    .line 781
    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    :cond_46
    move v6, v5

    .line 785
    :goto_47
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonGroup;->buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 786
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    if-nez v4, :cond_5d

    .line 787
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 788
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 789
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_67

    .line 791
    :cond_5d
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 792
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 793
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 796
    :goto_67
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 799
    :cond_6d
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->resetChildMargins(I)V

    return-void
.end method

.method public final adjustChildSizeChange()V
    .registers 5

    .line 855
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getFirstVisibleChildIndex()I

    move-result v0

    .line 856
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getLastVisibleChildIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_53

    .line 857
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-nez v2, :cond_10

    goto :goto_53

    .line 860
    :cond_10
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_50

    const/4 v0, 0x0

    .line 861
    :goto_16
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 862
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    .line 863
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 864
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3b

    .line 865
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_4a

    .line 866
    :cond_3b
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_38

    .line 862
    :goto_4a
    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildSizeChangeInRange(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 869
    :cond_50
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildSizeChangeInRange(II)V

    :cond_53
    :goto_53
    return-void
.end method

.method public final adjustChildSizeChangeInRange(II)V
    .registers 7

    if-ne p1, p2, :cond_c

    .line 875
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    sget-object p2, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->NONE:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setWidthChangeDirection(Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;)V

    return-void

    :cond_c
    const v0, 0x7fffffff

    move v1, p1

    :goto_10
    if-gt v1, p2, :cond_3d

    .line 881
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_3a

    .line 885
    :cond_19
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    if-ne v1, p1, :cond_22

    .line 888
    sget-object v3, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->END:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    goto :goto_29

    :cond_22
    if-ne v1, p2, :cond_27

    .line 889
    sget-object v3, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->START:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    goto :goto_29

    :cond_27
    sget-object v3, Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;->BOTH:Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;

    .line 886
    :goto_29
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setWidthChangeDirection(Lcom/google/android/material/button/MaterialButton$WidthChangeDirection;)V

    .line 892
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->getButtonAllowedWidthIncrease(I)I

    move-result v2

    if-eq v1, p1, :cond_36

    if-eq v1, p2, :cond_36

    .line 900
    div-int/lit8 v2, v2, 0x2

    .line 898
    :cond_36
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_3d
    :goto_3d
    if-gt p1, p2, :cond_57

    .line 904
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_54

    .line 907
    :cond_46
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 908
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setSizeChange(Lcom/google/android/material/shape/StateListSizeChange;)V

    mul-int/lit8 v2, v0, 0x2

    .line 911
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setWidthChangeMax(I)V

    :goto_54
    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    :cond_57
    return-void
.end method

.method public buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1150
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1151
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_b

    .line 1152
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    return-object p1

    .line 1155
    :cond_b
    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1319
    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 302
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildOrder()V

    .line 303
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->generateDefaultLayoutParams()Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->generateDefaultLayoutParams()Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;
    .registers 3

    .line 1295
    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;
    .registers 4

    .line 1302
    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;
    .registers 3

    .line 1309
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_c

    .line 1310
    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 1311
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 1312
    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1314
    :cond_18
    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getButtonAllowedWidthIncrease(I)I
    .registers 6

    .line 922
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-nez v0, :cond_c

    goto :goto_3c

    .line 925
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 926
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/StateListSizeChange;->getMaxWidthChange(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x1

    .line 928
    invoke-virtual {p0, p1, v2}, Lcom/google/android/material/button/MaterialButtonGroup;->getPrevVisibleChildButton(IZ)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    if-nez v3, :cond_27

    move v3, v1

    goto :goto_2b

    .line 930
    :cond_27
    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getAllowedWidthDecrease()I

    move-result v3

    .line 931
    :goto_2b
    invoke-virtual {p0, p1, v2}, Lcom/google/android/material/button/MaterialButtonGroup;->getNextVisibleChildButton(IZ)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    if-nez p1, :cond_32

    goto :goto_36

    .line 933
    :cond_32
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getAllowedWidthDecrease()I

    move-result v1

    :goto_36
    add-int/2addr v3, v1

    .line 934
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_3c
    :goto_3c
    return v1
.end method

.method public getButtonSizeChange()Lcom/google/android/material/shape/StateListSizeChange;
    .registers 2

    .line 955
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    return-object v0
.end method

.method public getChildButton(I)Lcom/google/android/material/button/MaterialButton;
    .registers 2

    .line 1145
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    return-object p1
.end method

.method public getChildDrawingOrder(II)I
    .registers 4

    .line 737
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childOrder:[Ljava/lang/Integer;

    if-eqz p1, :cond_f

    array-length v0, p1

    if-lt p2, v0, :cond_8

    goto :goto_f

    .line 742
    :cond_8
    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 738
    :cond_f
    :goto_f
    const-string p1, "MButtonGroup"

    const-string v0, "Child order wasn\'t updated"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getInnerCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    .line 994
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    invoke-virtual {v0}, Lcom/google/android/material/shape/StateListCornerSize;->getDefaultCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0
.end method

.method public getInnerCornerSizeStateList()Lcom/google/android/material/shape/StateListCornerSize;
    .registers 2

    .line 1021
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    return-object v0
.end method

.method public final getNextVisibleChildButton(IZ)Lcom/google/android/material/button/MaterialButton;
    .registers 10

    .line 1199
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    :goto_6
    const/4 v2, -0x1

    if-ge v1, v0, :cond_13

    .line 1202
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_14

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    move v1, v2

    :goto_14
    const/4 v3, 0x0

    if-eqz p2, :cond_5d

    .line 1207
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5d

    const/4 p2, 0x0

    .line 1208
    :goto_20
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_5d

    .line 1209
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1211
    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_41

    add-int/lit8 v5, v0, -0x1

    goto :goto_51

    .line 1213
    :cond_41
    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    add-int/lit8 v6, p2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_51
    if-lt p1, v4, :cond_5a

    if-gt p1, v5, :cond_5a

    if-lt v1, v4, :cond_59

    if-le v1, v5, :cond_5a

    :cond_59
    return-object v3

    :cond_5a
    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_5d
    if-ne v1, v2, :cond_60

    return-object v3

    .line 1224
    :cond_60
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    return-object p1
.end method

.method public final getOriginalStateListShapeBuilder(ZZI)Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;
    .registers 5

    .line 719
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v0, :cond_9

    if-nez p1, :cond_12

    if-eqz p2, :cond_9

    goto :goto_12

    .line 721
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildShapeAppearanceModels:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/shape/ShapeAppearance;

    .line 723
    :cond_12
    :goto_12
    instance-of p1, v0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-nez p1, :cond_24

    .line 724
    new-instance p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildShapeAppearanceModels:Ljava/util/List;

    .line 725
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p1, p2}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object p1

    .line 726
    :cond_24
    check-cast v0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getOverflowButtonIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1123
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getOverflowMode()I
    .registers 2

    .line 1138
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMode:I

    return v0
.end method

.method public final getPrevVisibleChildButton(IZ)Lcom/google/android/material/button/MaterialButton;
    .registers 10

    .line 1234
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    :goto_6
    const/4 v2, -0x1

    if-ltz v1, :cond_13

    .line 1237
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_14

    :cond_10
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_13
    move v1, v2

    :goto_14
    const/4 v3, 0x0

    if-eqz p2, :cond_5a

    .line 1242
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5a

    const/4 p2, 0x0

    .line 1243
    :goto_20
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_5a

    .line 1244
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1246
    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_40

    move v5, v0

    goto :goto_4e

    :cond_40
    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    add-int/lit8 v6, p2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_4e
    if-lt p1, v4, :cond_57

    if-ge p1, v5, :cond_57

    if-lt v1, v4, :cond_56

    if-lt v1, v5, :cond_57

    :cond_56
    return-object v3

    :cond_57
    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_5a
    if-ne v1, v2, :cond_5d

    return-object v3

    .line 1257
    :cond_5d
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    return-object p1
.end method

.method public getShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    .line 1045
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v1, 0x1

    .line 1047
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->getDefaultShape(Z)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public getSpacing()I
    .registers 2

    .line 977
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    return v0
.end method

.method public getStateListShapeAppearance()Lcom/google/android/material/shape/StateListShapeAppearanceModel;
    .registers 2

    .line 1071
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    return-object v0
.end method

.method public initializeButtonOverflow(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 9

    .line 269
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_overflowButtonIcon:I

    .line 270
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 273
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$layout;->m3_button_group_overflow_button:I

    const/4 v1, 0x0

    .line 274
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    .line 275
    sget-object v0, Lcom/google/android/material/button/MaterialButtonGroup;->OVERFLOW_BUTTON_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButtonGroup;->setOverflowButtonIcon(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_34

    .line 278
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$string;->mtrl_button_overflow_icon_content_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 278
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 281
    :cond_34
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    sget p1, Lcom/google/android/material/R$attr;->materialButtonGroupPopupMenuStyle:I

    .line 284
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/view/View;I)I

    move-result v5

    .line 286
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    const/4 p1, 0x1

    .line 287
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setForceShowIcon(Z)V

    .line 291
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/button/MaterialButtonGroup;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonOverflowInitialized:Z

    return-void
.end method

.method public isOverflowMenuSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeUpdateOverflowMenu(II)V
    .registers 13

    .line 495
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonOverflowInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 498
    :cond_5
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMode:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    .line 499
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 503
    :cond_12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v3

    .line 504
    :goto_1c
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->tempOverflowButtonsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_28

    .line 508
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    goto :goto_2c

    .line 509
    :cond_28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 510
    :goto_2c
    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    .line 511
    invoke-virtual {p0, v0, v5, p1, p2}, Lcom/google/android/material/button/MaterialButtonGroup;->measureAndGetChildButtonSize(ZLandroid/widget/Button;II)I

    move-result v5

    move v6, v3

    move v7, v6

    .line 516
    :goto_34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v2

    if-ge v6, v8, :cond_6d

    .line 517
    invoke-virtual {p0, v6}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v8

    .line 519
    invoke-virtual {p0, v0, v8, p1, p2}, Lcom/google/android/material/button/MaterialButtonGroup;->measureAndGetChildButtonSize(ZLandroid/widget/Button;II)I

    move-result v9

    add-int/2addr v7, v9

    add-int v9, v7, v5

    if-le v9, v4, :cond_4d

    .line 523
    iget-object v9, p0, Lcom/google/android/material/button/MaterialButtonGroup;->tempOverflowButtonsList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    if-le v7, v4, :cond_6a

    add-int/2addr v6, v2

    .line 530
    :goto_50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    if-ge v6, p1, :cond_64

    .line 531
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->tempOverflowButtonsList:Ljava/util/List;

    add-int/lit8 p2, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, p2

    goto :goto_50

    .line 540
    :cond_64
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_77

    :cond_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 542
    :cond_6d
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->tempOverflowButtonsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 548
    :goto_77
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->maybeUpdateOverflowMenuItemsAndChildVisibility()V

    return-void
.end method

.method public final maybeUpdateOverflowMenuItemsAndChildVisibility()V
    .registers 7

    .line 552
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->tempOverflowButtonsList:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButtonsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    .line 556
    :goto_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_27

    .line 557
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 558
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonToMenuItemMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 559
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 562
    :cond_27
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButtonsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 563
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButtonsList:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->tempOverflowButtonsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 567
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->popupMenuItemToButtonMapping:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 568
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonToMenuItemMapping:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 569
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 571
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButtonsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 572
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/button/MaterialButtonGroup;->addMenuItemForButton(Landroid/view/Menu;Landroid/widget/Button;)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_5f

    goto :goto_4c

    .line 576
    :cond_5f
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->popupMenuItemToButtonMapping:Ljava/util/Map;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonToMenuItemMapping:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x8

    .line 578
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4c

    .line 581
    :cond_77
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateOverflowMenuItemsState()V

    return-void
.end method

.method public final maybeWrapButtons(II)I
    .registers 20

    move-object/from16 v0, p0

    .line 411
    iget-object v1, v0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 412
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 418
    :goto_19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_a6

    .line 419
    invoke-direct {v0, v5}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v9

    if-nez v9, :cond_2b

    move/from16 v10, p1

    move/from16 v11, p2

    goto/16 :goto_a2

    .line 422
    :cond_2b
    invoke-virtual {v0, v5}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v9

    move/from16 v10, p1

    move/from16 v11, p2

    .line 423
    invoke-virtual {v0, v9, v10, v11}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 424
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 425
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-gtz v12, :cond_41

    goto :goto_a2

    .line 429
    :cond_41
    invoke-virtual {v0, v9}, Lcom/google/android/material/button/MaterialButtonGroup;->buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    add-int v15, v6, v12

    .line 431
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_4f

    const/4 v4, 0x0

    goto :goto_51

    :cond_4f
    iget v4, v0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    :goto_51
    add-int/2addr v15, v4

    if-gt v15, v1, :cond_5a

    .line 434
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 436
    :cond_5a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    .line 437
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_67
    iget-object v4, v0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v4, 0x0

    goto :goto_73

    :cond_71
    iget v4, v0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    :goto_73
    add-int/2addr v7, v4

    add-int/2addr v8, v7

    .line 442
    iget-object v4, v0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    neg-int v4, v6

    .line 445
    invoke-virtual {v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 447
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_87
    if-nez v6, :cond_8b

    const/4 v4, 0x0

    goto :goto_8d

    .line 452
    :cond_8b
    iget v4, v0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    :goto_8d
    add-int/2addr v12, v4

    add-int/2addr v6, v12

    .line 453
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 454
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v8

    iput v4, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 456
    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_19

    .line 459
    :cond_a6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    const/16 v16, 0x0

    .line 464
    :goto_ba
    iget-object v2, v0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_10d

    .line 465
    iget-object v2, v0, Lcom/google/android/material/button/MaterialButtonGroup;->rowButtonFirstIndices:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 466
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 467
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 469
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButtonGroup;->buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 470
    iget v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v10, 0x800007

    and-int/2addr v9, v10

    .line 472
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v10

    sub-int v5, v1, v5

    const v11, 0x800003

    if-ne v9, v11, :cond_f6

    goto :goto_10a

    :cond_f6
    const/4 v9, 0x1

    if-ne v10, v9, :cond_fb

    .line 480
    div-int/lit8 v5, v5, 0x2

    .line 484
    :cond_fb
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v9

    add-int/2addr v9, v5

    sub-int v9, v9, v16

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 485
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v16, v5

    :goto_10a
    add-int/lit8 v4, v4, 0x1

    goto :goto_ba

    :cond_10d
    add-int/2addr v8, v7

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v8, v1

    return v8
.end method

.method public final measureAndGetChildButtonSize(ZLandroid/widget/Button;II)I
    .registers 6

    .line 586
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 587
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_10

    .line 588
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    goto :goto_14

    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    :goto_14
    if-eqz p1, :cond_1c

    .line 589
    iget v0, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget p3, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_1a
    add-int/2addr v0, p3

    goto :goto_21

    :cond_1c
    iget v0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget p3, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1a

    :goto_21
    if-nez p4, :cond_30

    if-eqz p1, :cond_2b

    .line 593
    invoke-virtual {p2}, Landroid/view/View;->getMinimumWidth()I

    move-result p1

    :goto_29
    move p4, p1

    goto :goto_30

    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    goto :goto_29

    :cond_30
    :goto_30
    add-int/2addr p4, v0

    return p4
.end method

.method public onButtonWidthChanged(Lcom/google/android/material/button/MaterialButton;I)V
    .registers 6

    .line 824
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_7

    goto :goto_2e

    :cond_7
    const/4 v0, 0x1

    .line 829
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->getPrevVisibleChildButton(IZ)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 831
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->getNextVisibleChildButton(IZ)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    if-nez v1, :cond_15

    if-nez p1, :cond_15

    goto :goto_2e

    :cond_15
    if-nez v1, :cond_1a

    .line 836
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    :cond_1a
    if-nez p1, :cond_1f

    .line 839
    invoke-virtual {v1, p2}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    :cond_1f
    if-eqz v1, :cond_2e

    if-eqz p1, :cond_2e

    .line 843
    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    add-int/2addr p2, v0

    .line 845
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 401
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_b

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->recoverAllChildrenLayoutParams()V

    .line 404
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildSizeChange()V

    :cond_b
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    .line 378
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildMarginsAndUpdateLayout()V

    .line 380
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    .line 381
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_24

    .line 385
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1c

    .line 389
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonGroup;->maybeWrapButtons(II)I

    move-result v0

    goto :goto_2d

    .line 386
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The wrap overflow mode is not compatible with wrap_content layout width."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 382
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The wrap overflow mode is not compatible to the vertical orientation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    const/4 v0, 0x0

    .line 391
    :goto_2d
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonGroup;->maybeUpdateOverflowMenu(II)V

    .line 392
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 393
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 394
    iget p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMode:I

    if-ne p1, v1, :cond_47

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eq v0, p1, :cond_47

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_47
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    .line 341
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 343
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_e

    .line 344
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 347
    :cond_e
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_19

    .line 349
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildShapeAppearanceModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_19
    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 353
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 356
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->recoverAllChildrenLayoutParams()V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildMarginsAndUpdateLayout()V

    return-void
.end method

.method public final recoverAllChildrenLayoutParams()V
    .registers 3

    const/4 v0, 0x0

    .line 370
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 371
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->recoverOriginalLayoutParams()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public final resetChildMargins(I)V
    .registers 5

    .line 803
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_29

    .line 807
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    .line 808
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 809
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    .line 810
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 811
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void

    .line 815
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 816
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 817
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 818
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_29
    :goto_29
    return-void
.end method

.method public setButtonSizeChange(Lcom/google/android/material/shape/StateListSizeChange;)V
    .registers 3

    .line 966
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-eq v0, p1, :cond_f

    .line 967
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    .line 968
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildSizeChange()V

    .line 969
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 970
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_f
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 1277
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 1279
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1280
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 1281
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method public setInnerCornerSize(Lcom/google/android/material/shape/CornerSize;)V
    .registers 2

    .line 1007
    invoke-static {p1}, Lcom/google/android/material/shape/StateListCornerSize;->create(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    const/4 p1, 0x1

    .line 1008
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 1010
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInnerCornerSizeStateList(Lcom/google/android/material/shape/StateListCornerSize;)V
    .registers 2

    .line 1036
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    const/4 p1, 0x1

    .line 1037
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 1038
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 1039
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 941
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-eq v0, p1, :cond_9

    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 944
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setOverflowButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1098
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowButtonIconResource(I)V
    .registers 3

    .line 1110
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    return-void
.end method

.method public setOverflowMode(I)V
    .registers 3

    .line 1128
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMode:I

    if-eq v0, p1, :cond_c

    .line 1129
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->overflowMode:I

    .line 1130
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1131
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    return-void
.end method

.method public setShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3

    .line 1056
    new-instance v0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 1057
    invoke-virtual {v0}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    const/4 p1, 0x1

    .line 1058
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 1059
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 1060
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSpacing(I)V
    .registers 2

    .line 986
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    .line 987
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 988
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setStateListShapeAppearance(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V
    .registers 2

    .line 1083
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    const/4 p1, 0x1

    .line 1084
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 1085
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 1086
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateChildOrder()V
    .registers 7

    .line 1261
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childOrderComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 1262
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1d

    .line 1264
    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1267
    :cond_1d
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childOrder:[Ljava/lang/Integer;

    return-void
.end method

.method public updateChildShapes()V
    .registers 13

    .line 641
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v0, :cond_80

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    if-nez v0, :cond_e

    goto/16 :goto_80

    :cond_e
    const/4 v0, 0x0

    .line 644
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 645
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 646
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getFirstVisibleChildIndex()I

    move-result v2

    .line 647
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getLastVisibleChildIndex()I

    move-result v3

    move v4, v0

    :goto_1e
    if-ge v4, v1, :cond_80

    .line 649
    invoke-virtual {p0, v4}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v5

    .line 650
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2d

    goto :goto_7d

    :cond_2d
    const/4 v6, 0x1

    if-ne v4, v2, :cond_32

    move v7, v6

    goto :goto_33

    :cond_32
    move v7, v0

    :goto_33
    if-ne v4, v3, :cond_37

    move v8, v6

    goto :goto_38

    :cond_37
    move v8, v0

    .line 657
    :goto_38
    invoke-virtual {p0, v7, v8, v4}, Lcom/google/android/material/button/MaterialButtonGroup;->getOriginalStateListShapeBuilder(ZZI)Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    move-result-object v9

    .line 659
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v10

    if-nez v10, :cond_44

    move v10, v6

    goto :goto_45

    :cond_44
    move v10, v0

    .line 660
    :goto_45
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v10, :cond_5b

    if-eqz v7, :cond_4f

    const/4 v7, 0x5

    goto :goto_50

    :cond_4f
    move v7, v0

    :goto_50
    if-eqz v8, :cond_54

    or-int/lit8 v7, v7, 0xa

    :cond_54
    if-eqz v11, :cond_64

    .line 676
    invoke-static {v7}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->swapCornerPositionRtl(I)I

    move-result v7

    goto :goto_64

    :cond_5b
    if-eqz v7, :cond_5f

    const/4 v7, 0x3

    goto :goto_60

    :cond_5f
    move v7, v0

    :goto_60
    if-eqz v8, :cond_64

    or-int/lit8 v7, v7, 0xc

    :cond_64
    :goto_64
    not-int v7, v7

    .line 692
    iget-object v8, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    .line 694
    invoke-virtual {v9, v8, v7}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->setCornerSizeOverride(Lcom/google/android/material/shape/StateListCornerSize;I)Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    move-result-object v7

    .line 695
    invoke-virtual {v7}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object v7

    .line 697
    invoke-virtual {v7}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_76

    goto :goto_7a

    .line 699
    :cond_76
    invoke-virtual {v7, v6}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->getDefaultShape(Z)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v7

    .line 696
    :goto_7a
    invoke-virtual {v5, v7}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearance(Lcom/google/android/material/shape/ShapeAppearance;)V

    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_80
    :goto_80
    return-void
.end method

.method public final updateOverflowMenuItemsState()V
    .registers 6

    .line 621
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonToMenuItemMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 622
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 623
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 624
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_3b

    .line 625
    move-object v1, v2

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 626
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 627
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 629
    :cond_3b
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_a

    :cond_43
    return-void
.end method

###### Class com.google.android.material.button.MaterialButtonGroup.AnonymousClass1 (com.google.android.material.button.MaterialButtonGroup$1)
.class public synthetic Lcom/google/android/material/button/MaterialButtonGroup$1;
.super Ljava/lang/Object;
.source "MaterialButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.android.material.button.MaterialButtonGroup.LayoutParams (com.google.android.material.button.MaterialButtonGroup$LayoutParams)
.class public Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "MaterialButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public overflowIcon:Landroid/graphics/drawable/Drawable;

.field public overflowText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1347
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1324
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowIcon:Landroid/graphics/drawable/Drawable;

    .line 1325
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1335
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 1324
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowIcon:Landroid/graphics/drawable/Drawable;

    .line 1325
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowText:Ljava/lang/CharSequence;

    .line 1336
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_Layout:[I

    .line 1337
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1339
    sget p2, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_Layout_layout_overflowIcon:I

    .line 1340
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowIcon:Landroid/graphics/drawable/Drawable;

    .line 1341
    sget p2, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_Layout_layout_overflowText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowText:Ljava/lang/CharSequence;

    .line 1343
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 1378
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 1324
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowIcon:Landroid/graphics/drawable/Drawable;

    .line 1325
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    .line 1382
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 1324
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowIcon:Landroid/graphics/drawable/Drawable;

    .line 1325
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 2

    .line 1386
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 p1, 0x0

    .line 1324
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowIcon:Landroid/graphics/drawable/Drawable;

    .line 1325
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$LayoutParams;->overflowText:Ljava/lang/CharSequence;

    return-void
.end method

###### Class com.google.android.material.button.MaterialButtonGroup.OverflowUtils (com.google.android.material.button.MaterialButtonGroup$OverflowUtils)
.class public Lcom/google/android/material/button/MaterialButtonGroup$OverflowUtils;
.super Ljava/lang/Object;
.source "MaterialButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverflowUtils"
.end annotation


# direct methods
.method public static getMenuItemText(Landroid/view/View;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 1413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 1416
    :cond_7
    instance-of p1, p0, Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_1d

    move-object p1, p0

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1419
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1422
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.android.material.button.MaterialButtonGroup.PressedStateTracker (com.google.android.material.button.MaterialButtonGroup$PressedStateTracker)
.class public Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;
.super Ljava/lang/Object;
.source "MaterialButtonGroup.java"

# interfaces
.implements Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PressedStateTracker"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/button/MaterialButtonGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButtonGroup;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1285
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonGroup;Lcom/google/android/material/button/MaterialButtonGroup$1;)V
    .registers 3

    .line 1285
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonGroup;)V

    return-void
.end method


# virtual methods
.method public onPressedChanged(Lcom/google/android/material/button/MaterialButton;Z)V
    .registers 3

    .line 1288
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class com.google.android.material.button.MaterialButtonGroup$$ExternalSyntheticLambda0 (com.google.android.material.button.MaterialButtonGroup$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButtonGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButtonGroup;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButtonGroup;

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/button/MaterialButtonGroup;->$r8$lambda$Rax0YMRIbiIrB6RD8v2eDsNN8o4(Lcom/google/android/material/button/MaterialButtonGroup;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)I

    move-result p1

    return p1
.end method

###### Class com.google.android.material.button.MaterialButtonGroup$$ExternalSyntheticLambda1 (com.google.android.material.button.MaterialButtonGroup$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->$r8$lambda$PPvYzu5sUsE2QBY_Uh56lm9gCgE(Landroid/widget/Button;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.material.button.MaterialButtonGroup$$ExternalSyntheticLambda2 (com.google.android.material.button.MaterialButtonGroup$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButtonGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/button/MaterialButtonGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-static {v0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->$r8$lambda$nSb5s-0Ox4JObG6P_T034TqSgIw(Lcom/google/android/material/button/MaterialButtonGroup;Landroid/view/View;)V

    return-void
.end method
