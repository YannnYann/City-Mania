###### Class io.bidmachine.util.AutoSizeTextView (io.bidmachine.util.AutoSizeTextView)
.class public Lio/bidmachine/util/AutoSizeTextView;
.super Landroid/widget/TextView;
.source "AutoSizeTextView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoSizeTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoSizeTextView.kt\nio/bidmachine/util/AutoSizeTextView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewUtils.kt\nio/bidmachine/util/ViewUtilsKt\n*L\n1#1,272:1\n260#1,10:274\n1851#2:273\n1852#2:284\n1851#2,2:288\n445#3,3:285\n449#3,3:290\n*S KotlinDebug\n*F\n+ 1 AutoSizeTextView.kt\nio/bidmachine/util/AutoSizeTextView\n*L\n140#1:274,10\n137#1:273\n137#1:284\n165#1:288,2\n164#1:285,3\n164#1:290,3\n*E\n"
.end annotation


# instance fields
.field public autoTextScaleXStepDelta:F

.field public autoTextSizeStepPx:F

.field public isBalanceText:Z

.field public isStretchingTextByHeight:Z

.field public isStretchingTextByWidth:Z

.field public final staticLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/AutoSizeTextView;->staticLayouts:Ljava/util/List;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lio/bidmachine/util/AutoSizeTextView;->isStretchingTextByHeight:Z

    .line 19
    iput-boolean p1, p0, Lio/bidmachine/util/AutoSizeTextView;->isStretchingTextByWidth:Z

    .line 20
    iput-boolean p1, p0, Lio/bidmachine/util/AutoSizeTextView;->isBalanceText:Z

    const/high16 v0, 0x40000000    # 2.0f

    .line 21
    iput v0, p0, Lio/bidmachine/util/AutoSizeTextView;->autoTextSizeStepPx:F

    const v0, 0x3ca3d70a    # 0.02f

    .line 22
    iput v0, p0, Lio/bidmachine/util/AutoSizeTextView;->autoTextScaleXStepDelta:F

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/util/DeviceUtilsKt;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/util/AutoSizeTextView;->autoTextSizeStepPx:F

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    return-void
.end method


# virtual methods
.method public final balanceTextLines(Landroid/text/Layout;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v2, "paint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    .line 214
    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/util/AutoSizeTextView;->balanceTextLines(Ljava/lang/CharSequence;Landroid/graphics/Paint;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final balanceTextLines(Ljava/lang/CharSequence;Landroid/graphics/Paint;I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/Paint;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p3, v0, :cond_c

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 225
    :cond_c
    const-string v1, " "

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 226
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, p3, :cond_22

    return-object p1

    .line 230
    :cond_22
    invoke-static {p2, v2}, Lio/bidmachine/util/ViewUtilsKt;->measureText(Landroid/graphics/Paint;Ljava/lang/CharSequence;)F

    move-result v2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 231
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "currentLine.toString()"

    if-eqz v6, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 237
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 238
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_73

    add-float v9, v5, v1

    add-float/2addr v9, v8

    cmpl-float v9, v9, v2

    if-lez v9, :cond_73

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, p3, -0x1

    if-ge v9, v10, :cond_73

    .line 239
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, v8

    goto :goto_3b

    .line 243
    :cond_73
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_7f

    const/16 v7, 0x20

    .line 244
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-float/2addr v5, v1

    .line 247
    :cond_7f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-float/2addr v5, v8

    goto :goto_3b

    .line 252
    :cond_84
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_94

    .line 253
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_94
    return-object v3
.end method

.method public final createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;
    .registers 6

    .line 195
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 196
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 198
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    .line 194
    const-string p2, "{\n            StaticLayo\u2026       .build()\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getOptimalTextLines(Landroid/text/Layout;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Lio/bidmachine/util/AutoSizeTextView;->isBalanceText:Z

    if-eqz v0, :cond_13

    .line 205
    invoke-virtual {p0, p1}, Lio/bidmachine/util/AutoSizeTextView;->balanceTextLines(Landroid/text/Layout;)Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ne v1, v2, :cond_13

    return-object v0

    .line 210
    :cond_13
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->getTextList(Landroid/text/Layout;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lio/bidmachine/util/AutoSizeTextView;->staticLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 160
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 445
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 165
    :try_start_15
    iget-object v1, p0, Lio/bidmachine/util/AutoSizeTextView;->staticLayouts:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 288
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/StaticLayout;

    .line 167
    invoke-static {v2}, Lio/bidmachine/util/ViewUtilsKt;->getMaxLineWidth(Landroid/text/Layout;)F

    move-result v3

    .line 168
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    const/4 v5, 0x0

    if-gez v4, :cond_43

    .line 169
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v4, v3

    goto :goto_44

    :catchall_41
    move-exception v1

    goto :goto_58

    :cond_43
    move v4, v5

    .line 171
    :goto_44
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    neg-float v3, v4

    .line 173
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_53
    .catchall {:try_start_15 .. :try_end_53} :catchall_41

    goto :goto_1d

    .line 449
    :cond_54
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :goto_58
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v1
.end method

.method public onLayout(ZIIII)V
    .registers 9

    if-eqz p1, :cond_1d

    sub-int v0, p4, p2

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p5, p3

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 76
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/util/AutoSizeTextView;->resizeText(II)V

    .line 82
    :cond_1d
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    .line 62
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/AutoSizeTextView;->resizeText(II)V

    return-void
.end method

.method public final resizeText(II)V
    .registers 11

    if-lez p1, :cond_b4

    if-gtz p2, :cond_6

    goto/16 :goto_b4

    .line 89
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 91
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 90
    const-string v2, "paint.apply {\n          \u2026xtScaleX = 1.0F\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float v3, p2

    const/4 v4, 0x0

    :goto_24
    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-lez v6, :cond_3a

    .line 98
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    invoke-virtual {p0, v0, v2, p1}, Lio/bidmachine/util/AutoSizeTextView;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v6

    if-le v6, p2, :cond_3a

    .line 105
    iget v5, p0, Lio/bidmachine/util/AutoSizeTextView;->autoTextSizeStepPx:F

    sub-float/2addr v3, v5

    goto :goto_24

    :cond_3a
    if-nez v4, :cond_3e

    goto/16 :goto_b4

    .line 114
    :cond_3e
    iget-boolean v2, p0, Lio/bidmachine/util/AutoSizeTextView;->isStretchingTextByHeight:Z

    if-eqz v2, :cond_5b

    .line 115
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-nez v2, :cond_49

    goto :goto_b4

    .line 119
    :cond_49
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    sub-int/2addr p2, v4

    .line 120
    div-int/2addr p2, v2

    int-to-float p2, p2

    add-float/2addr p2, v3

    cmpg-float v2, p2, v5

    if-nez v2, :cond_56

    return-void

    :cond_56
    div-float/2addr v3, p2

    .line 125
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextScaleX(F)V

    move v3, p2

    .line 129
    :cond_5b
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    iget-object p2, p0, Lio/bidmachine/util/AutoSizeTextView;->staticLayouts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 132
    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/util/AutoSizeTextView;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object p2

    .line 137
    invoke-virtual {p0, p2}, Lio/bidmachine/util/AutoSizeTextView;->getOptimalTextLines(Landroid/text/Layout;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 273
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_71
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 139
    iget-boolean v3, p0, Lio/bidmachine/util/AutoSizeTextView;->isStretchingTextByWidth:Z

    if-eqz v3, :cond_aa

    .line 260
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v3

    int-to-float v4, p1

    .line 144
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    div-float v5, v4, v5

    .line 262
    iget v6, p0, Lio/bidmachine/util/AutoSizeTextView;->autoTextScaleXStepDelta:F

    mul-float/2addr v6, v5

    .line 263
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 144
    :goto_97
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    cmpl-float v7, v7, v4

    if-lez v7, :cond_a4

    sub-float/2addr v5, v6

    .line 266
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    goto :goto_97

    .line 268
    :cond_a4
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 140
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 148
    :cond_aa
    iget-object v3, p0, Lio/bidmachine/util/AutoSizeTextView;->staticLayouts:Ljava/util/List;

    .line 149
    invoke-virtual {p0, v0, v2, p1}, Lio/bidmachine/util/AutoSizeTextView;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object v0

    .line 148
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_b4
    :goto_b4
    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    .line 49
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
