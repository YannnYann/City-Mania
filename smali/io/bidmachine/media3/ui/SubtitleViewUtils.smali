###### Class io.bidmachine.media3.ui.SubtitleViewUtils (io.bidmachine.media3.ui.SubtitleViewUtils)
.class public final Lio/bidmachine/media3/ui/SubtitleViewUtils;
.super Ljava/lang/Object;
.source "SubtitleViewUtils.java"


# direct methods
.method public static synthetic $r8$lambda$O9zHc9OsbQIBnPbOmpAX1370sno(Ljava/lang/Object;)Z
    .registers 1

    .line 68
    instance-of p0, p0, Lio/bidmachine/media3/common/text/LanguageFeatureSpan;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$vH9-YDcIEMdGXNDNm7GV9kXWxbU(Ljava/lang/Object;)Z
    .registers 2

    .line 92
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_b

    instance-of p0, p0, Landroid/text/style/RelativeSizeSpan;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static removeAllEmbeddedStyling(Lio/bidmachine/media3/common/text/Cue$Builder;)V
    .registers 3

    .line 62
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->clearWindowColor()Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 63
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_30

    .line 64
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_1e

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 68
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    new-instance v1, Lio/bidmachine/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/bidmachine/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 67
    invoke-static {v0, v1}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->removeSpansIf(Landroid/text/Spannable;Lcom/google/common/base/Predicate;)V

    .line 70
    :cond_30
    invoke-static {p0}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->removeEmbeddedFontSizes(Lio/bidmachine/media3/common/text/Cue$Builder;)V

    return-void
.end method

.method public static removeEmbeddedFontSizes(Lio/bidmachine/media3/common/text/Cue$Builder;)V
    .registers 3

    const v0, -0x800001

    const/high16 v1, -0x80000000

    .line 85
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextSize(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 86
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_35

    .line 87
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_23

    .line 88
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 91
    :cond_23
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    new-instance v0, Lio/bidmachine/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 90
    invoke-static {p0, v0}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->removeSpansIf(Landroid/text/Spannable;Lcom/google/common/base/Predicate;)V

    :cond_35
    return-void
.end method

.method public static removeSpansIf(Landroid/text/Spannable;Lcom/google/common/base/Predicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 98
    array-length v1, v0

    :goto_c
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 99
    invoke-interface {p1, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 100
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public static resolveTextSize(IFII)F
    .registers 6

    .line 0
    const v0, -0x800001

    cmpl-float v1, p1, v0

    if-nez v1, :cond_8

    return v0

    :cond_8
    if-eqz p0, :cond_15

    const/4 p3, 0x1

    if-eq p0, p3, :cond_12

    const/4 p2, 0x2

    if-eq p0, p2, :cond_11

    return v0

    :cond_11
    return p1

    :cond_12
    int-to-float p0, p2

    :goto_13
    mul-float/2addr p1, p0

    return p1

    :cond_15
    int-to-float p0, p3

    goto :goto_13
.end method

###### Class io.bidmachine.media3.ui.SubtitleViewUtils$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.SubtitleViewUtils$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->$r8$lambda$vH9-YDcIEMdGXNDNm7GV9kXWxbU(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.ui.SubtitleViewUtils$$ExternalSyntheticLambda1 (io.bidmachine.media3.ui.SubtitleViewUtils$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->$r8$lambda$O9zHc9OsbQIBnPbOmpAX1370sno(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
