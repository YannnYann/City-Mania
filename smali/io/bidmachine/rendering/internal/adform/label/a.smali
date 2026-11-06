###### Class io.bidmachine.rendering.internal.adform.label.a (io.bidmachine.rendering.internal.adform.label.a)
.class public final Lio/bidmachine/rendering/internal/adform/label/a;
.super Lio/bidmachine/rendering/internal/adform/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/label/a$a;
    }
.end annotation


# static fields
.field public static final y:Lio/bidmachine/rendering/internal/adform/label/a$a;


# instance fields
.field public final x:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/adform/label/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/adform/label/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/adform/label/a;->y:Lio/bidmachine/rendering/internal/adform/label/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElementParams"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p7}, Lio/bidmachine/rendering/internal/adform/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    move-object p2, p1

    move-object p1, p0

    .line 3
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p1, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public B()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method public a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->g()Lio/bidmachine/rendering/model/AdElementParams;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/AdElementParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->x()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AppearanceParams;->getStrokeColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 4
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->x()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AppearanceParams;->getFontSize()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3d

    .line 8
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    :cond_3d
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->x()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AppearanceParams;->getFontStyleType()Lio/bidmachine/rendering/model/FontStyleType;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 11
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/FontStyleType;->getTypeface()I

    move-result v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    :cond_56
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->x()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AppearanceParams;->getTextMaxLines()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_6f

    .line 15
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17
    :cond_6f
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->x()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object v0

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/model/AppearanceParams;->getTextLineSpacingPx(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 18
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 20
    :cond_89
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->x()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/AppearanceParams;->getTextHorizontalGravity()Lio/bidmachine/rendering/model/HorizontalGravity;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/HorizontalGravity;->getValue()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->x()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AppearanceParams;->getShadowColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->y()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 23
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->y()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 24
    iget-object v3, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 26
    :cond_c1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 28
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->w()Lio/bidmachine/rendering/internal/adform/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/c;->b(Lio/bidmachine/rendering/internal/adform/a;)V

    .line 29
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/a;->D()V

    return-void
.end method

.method public a(Landroid/view/View;Lio/bidmachine/rendering/internal/H;)V
    .registers 19

    move-object/from16 v0, p0

    const-string v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/a;->x()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object v1

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/a;->y()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lio/bidmachine/rendering/model/AppearanceParams;->getCornerRadiusPxOrDefault$default(Lio/bidmachine/rendering/model/AppearanceParams;Landroid/content/Context;IILjava/lang/Object;)I

    move-result v1

    .line 31
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/a;->x()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object v2

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/a;->y()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/rendering/model/AppearanceParams;->getBorder(Landroid/content/Context;)Lio/bidmachine/rendering/model/Border;

    move-result-object v8

    if-eqz p2, :cond_3b

    .line 33
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/a;->z()Ljava/lang/Object;

    move-result-object v5

    .line 34
    iget-object v6, v0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v11, 0x30

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    .line 36
    invoke-static/range {v4 .. v12}, Lio/bidmachine/rendering/internal/H;->a(Lio/bidmachine/rendering/internal/H;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ZLio/bidmachine/rendering/internal/H$a;ILjava/lang/Object;)V

    return-void

    .line 42
    :cond_3b
    iget-object v2, v0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    new-instance v9, Lio/bidmachine/util/gradient/GradientDrawable;

    invoke-direct {v9}, Lio/bidmachine/util/gradient/GradientDrawable;-><init>()V

    int-to-float v1, v1

    .line 43
    invoke-virtual {v9, v1}, Lio/bidmachine/util/gradient/GradientDrawable;->setCornerRadius(F)V

    if-eqz v8, :cond_81

    .line 45
    invoke-virtual {v8}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result v10

    invoke-virtual {v8}, Lio/bidmachine/rendering/model/Border;->getStrokeColor()I

    move-result v11

    const/16 v14, 0xc

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lio/bidmachine/util/gradient/GradientDrawable;->setStroke$default(Lio/bidmachine/util/gradient/GradientDrawable;IIFFILjava/lang/Object;)V

    .line 46
    iget-object v1, v0, Lio/bidmachine/rendering/internal/adform/label/a;->x:Landroid/widget/TextView;

    .line 47
    invoke-virtual {v8}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result v3

    .line 48
    invoke-virtual {v8}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result v4

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/a;->y()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 49
    invoke-virtual {v8}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result v5

    .line 50
    invoke-virtual {v8}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result v7

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/a;->y()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v7, v6

    .line 51
    invoke-virtual {v1, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52
    :cond_81
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.label.a.C1169a (io.bidmachine.rendering.internal.adform.label.a$a)
.class public final Lio/bidmachine/rendering/internal/adform/label/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/label/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/adform/label/a$a;-><init>()V

    return-void
.end method
