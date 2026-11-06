###### Class io.bidmachine.media3.common.text.SpanUtil (io.bidmachine.media3.common.text.SpanUtil)
.class public final Lio/bidmachine/media3/common/text/SpanUtil;
.super Ljava/lang/Object;
.source "SpanUtil.java"


# direct methods
.method public static addInheritedRelativeSizeSpan(Landroid/text/Spannable;FIII)V
    .registers 10

    .line 76
    const-class v0, Landroid/text/style/RelativeSizeSpan;

    invoke-interface {p0, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/RelativeSizeSpan;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 77
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gt v4, p2, :cond_1f

    .line 78
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-lt v4, p3, :cond_1f

    .line 79
    invoke-virtual {v3}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v4

    mul-float/2addr p1, v4

    .line 81
    :cond_1f
    invoke-static {p0, v3, p2, p3, p4}, Lio/bidmachine/media3/common/text/SpanUtil;->removeIfStartEndAndFlagsMatch(Landroid/text/Spannable;Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 83
    :cond_25
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p0, v0, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .registers 9

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 47
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 48
    invoke-static {p0, v3, p2, p3, p4}, Lio/bidmachine/media3/common/text/SpanUtil;->removeIfStartEndAndFlagsMatch(Landroid/text/Spannable;Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 50
    :cond_14
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static removeIfStartEndAndFlagsMatch(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .registers 6

    .line 88
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_15

    .line 89
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    if-ne p2, p3, :cond_15

    .line 90
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p2

    if-ne p2, p4, :cond_15

    .line 91
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method
