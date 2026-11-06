###### Class io.bidmachine.media3.ui.SpannedToHtmlConverter (io.bidmachine.media3.ui.SpannedToHtmlConverter)
.class public final Lio/bidmachine/media3/ui/SpannedToHtmlConverter;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;,
        Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;,
        Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;
    }
.end annotation


# static fields
.field public static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-string v0, "(&#13;)?&#10;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static convert(Ljava/lang/CharSequence;F)Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 84
    new-instance p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    const-string p1, ""

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$1;)V

    return-object p0

    .line 86
    :cond_f
    instance-of v1, p0, Landroid/text/Spanned;

    if-nez v1, :cond_21

    .line 87
    new-instance p1, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-static {p0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$1;)V

    return-object p1

    .line 89
    :cond_21
    check-cast p0, Landroid/text/Spanned;

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 94
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/BackgroundColorSpan;

    const/4 v4, 0x0

    invoke-interface {p0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/BackgroundColorSpan;

    array-length v3, v2

    move v5, v4

    :goto_37
    if-ge v5, v3, :cond_49

    aget-object v6, v2, v5

    .line 95
    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 97
    :cond_49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bg_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {v5}, Lio/bidmachine/media3/ui/HtmlUtils;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-static {v3}, Lio/bidmachine/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "background-color:%s;"

    invoke-static {v6, v3}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 104
    :cond_89
    invoke-static {p0, p1}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;

    move-result-object p1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v4

    .line 107
    :goto_97
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_100

    .line 108
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 109
    invoke-interface {p0, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;

    .line 112
    invoke-static {v3}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->access$100(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->access$200()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    invoke-static {v3}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->access$100(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 114
    iget-object v7, v7, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 116
    :cond_d7
    invoke-static {v3}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->access$300(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->access$400()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    invoke-static {v3}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->access$300(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ea
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 118
    iget-object v6, v6, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ea

    :cond_fc
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_97

    .line 123
    :cond_100
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$1;)V

    return-object p0
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    .line 302
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 303
    sget-object v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<br>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "F)",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 132
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    :goto_11
    if-ge v3, v2, :cond_49

    aget-object v4, v1, v3

    .line 133
    invoke-static {v4, p1}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-static {v4}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->getClosingTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 136
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-eqz v8, :cond_46

    .line 138
    invoke-static {v9}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v5, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$1;)V

    .line 140
    invoke-static {v0, v6}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->access$300(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-static {v0, v7}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->access$100(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_49
    return-object v0
.end method

.method public static getClosingTag(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 217
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    const-string v1, "</span>"

    if-nez v0, :cond_76

    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_76

    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-nez v0, :cond_76

    instance-of v0, p0, Lio/bidmachine/media3/common/text/HorizontalTextInVerticalContextSpan;

    if-nez v0, :cond_76

    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_76

    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-nez v0, :cond_76

    instance-of v0, p0, Lio/bidmachine/media3/common/text/TextEmphasisSpan;

    if-eqz v0, :cond_1f

    goto :goto_76

    .line 225
    :cond_1f
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 226
    check-cast p0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    return-object v1

    :cond_2d
    return-object v2

    .line 228
    :cond_2e
    instance-of v0, p0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_4b

    .line 229
    check-cast p0, Landroid/text/style/StyleSpan;

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_48

    const/4 v0, 0x2

    if-eq p0, v0, :cond_45

    const/4 v0, 0x3

    if-eq p0, v0, :cond_42

    goto :goto_75

    .line 235
    :cond_42
    const-string p0, "</i></b>"

    return-object p0

    .line 233
    :cond_45
    const-string p0, "</i>"

    return-object p0

    .line 231
    :cond_48
    const-string p0, "</b>"

    return-object p0

    .line 237
    :cond_4b
    instance-of v0, p0, Lio/bidmachine/media3/common/text/RubySpan;

    if-eqz v0, :cond_6e

    .line 238
    check-cast p0, Lio/bidmachine/media3/common/text/RubySpan;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<rt>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/bidmachine/media3/common/text/RubySpan;->rubyText:Ljava/lang/String;

    invoke-static {p0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</rt></ruby>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 240
    :cond_6e
    instance-of p0, p0, Landroid/text/style/UnderlineSpan;

    if-eqz p0, :cond_75

    .line 241
    const-string p0, "</u>"

    return-object p0

    :cond_75
    :goto_75
    return-object v2

    :cond_76
    :goto_76
    return-object v1
.end method

.method public static getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;
    .registers 5

    .line 150
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_7

    .line 151
    const-string p0, "<span style=\'text-decoration:line-through;\'>"

    return-object p0

    .line 152
    :cond_7
    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_20

    .line 153
    check-cast p0, Landroid/text/style/ForegroundColorSpan;

    .line 155
    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p0

    invoke-static {p0}, Lio/bidmachine/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 154
    const-string p1, "<span style=\'color:%s;\'>"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 156
    :cond_20
    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_39

    .line 157
    check-cast p0, Landroid/text/style/BackgroundColorSpan;

    .line 158
    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "<span class=\'bg_%s\'>"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_39
    instance-of v0, p0, Lio/bidmachine/media3/common/text/HorizontalTextInVerticalContextSpan;

    if-eqz v0, :cond_40

    .line 160
    const-string p0, "<span style=\'text-combine-upright:all;\'>"

    return-object p0

    .line 161
    :cond_40
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_67

    .line 162
    check-cast p0, Landroid/text/style/AbsoluteSizeSpan;

    .line 164
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 165
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p0

    int-to-float p0, p0

    goto :goto_58

    .line 166
    :cond_52
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    .line 167
    :goto_58
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :cond_67
    instance-of p1, p0, Landroid/text/style/RelativeSizeSpan;

    if-eqz p1, :cond_83

    .line 169
    check-cast p0, Landroid/text/style/RelativeSizeSpan;

    .line 170
    invoke-virtual {p0}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 169
    const-string p1, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 171
    :cond_83
    instance-of p1, p0, Landroid/text/style/TypefaceSpan;

    const/4 v0, 0x0

    if-eqz p1, :cond_9c

    .line 172
    check-cast p0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9b

    .line 174
    const-string p1, "<span style=\'font-family:\"%s\";\'>"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9b
    return-object v0

    .line 176
    :cond_9c
    instance-of p1, p0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_b9

    .line 177
    check-cast p0, Landroid/text/style/StyleSpan;

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result p0

    if-eq p0, v2, :cond_b6

    if-eq p0, v1, :cond_b3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_b0

    return-object v0

    .line 183
    :cond_b0
    const-string p0, "<b><i>"

    return-object p0

    .line 181
    :cond_b3
    const-string p0, "<i>"

    return-object p0

    .line 179
    :cond_b6
    const-string p0, "<b>"

    return-object p0

    .line 187
    :cond_b9
    instance-of p1, p0, Lio/bidmachine/media3/common/text/RubySpan;

    if-eqz p1, :cond_d2

    .line 188
    check-cast p0, Lio/bidmachine/media3/common/text/RubySpan;

    .line 189
    iget p0, p0, Lio/bidmachine/media3/common/text/RubySpan;->position:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_cf

    if-eq p0, v2, :cond_cc

    if-eq p0, v1, :cond_c9

    return-object v0

    .line 193
    :cond_c9
    const-string p0, "<ruby style=\'ruby-position:under;\'>"

    return-object p0

    .line 191
    :cond_cc
    const-string p0, "<ruby style=\'ruby-position:over;\'>"

    return-object p0

    .line 195
    :cond_cf
    const-string p0, "<ruby style=\'ruby-position:unset;\'>"

    return-object p0

    .line 199
    :cond_d2
    instance-of p1, p0, Landroid/text/style/UnderlineSpan;

    if-eqz p1, :cond_d9

    .line 200
    const-string p0, "<u>"

    return-object p0

    .line 201
    :cond_d9
    instance-of p1, p0, Lio/bidmachine/media3/common/text/TextEmphasisSpan;

    if-eqz p1, :cond_f8

    .line 202
    check-cast p0, Lio/bidmachine/media3/common/text/TextEmphasisSpan;

    .line 203
    iget p1, p0, Lio/bidmachine/media3/common/text/TextEmphasisSpan;->markShape:I

    iget v0, p0, Lio/bidmachine/media3/common/text/TextEmphasisSpan;->markFill:I

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->getTextEmphasisStyle(II)Ljava/lang/String;

    move-result-object p1

    .line 204
    iget p0, p0, Lio/bidmachine/media3/common/text/TextEmphasisSpan;->position:I

    invoke-static {p0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->getTextEmphasisPosition(I)Ljava/lang/String;

    move-result-object p0

    .line 205
    const-string v0, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f8
    return-object v0
.end method

.method public static getOrCreate(Landroid/util/SparseArray;I)Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;",
            ">;I)",
            "Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;"
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;

    if-nez v0, :cond_10

    .line 295
    new-instance v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;-><init>()V

    .line 296
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method public static getTextEmphasisPosition(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    .line 288
    const-string p0, "over right"

    return-object p0

    .line 284
    :cond_6
    const-string p0, "under left"

    return-object p0
.end method

.method public static getTextEmphasisStyle(II)Ljava/lang/String;
    .registers 5

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_12

    if-eq p1, v1, :cond_c

    goto :goto_17

    .line 254
    :cond_c
    const-string p1, "open "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 251
    :cond_12
    const-string p1, "filled "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    if-eqz p0, :cond_38

    if-eq p0, v2, :cond_32

    if-eq p0, v1, :cond_2c

    const/4 p1, 0x3

    if-eq p0, p1, :cond_26

    .line 275
    const-string p0, "unset"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 269
    :cond_26
    const-string p0, "sesame"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 266
    :cond_2c
    const-string p0, "dot"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 263
    :cond_32
    const-string p0, "circle"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 272
    :cond_38
    const-string p0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.media3.ui.SpannedToHtmlConverter.AnonymousClass1 (io.bidmachine.media3.ui.SpannedToHtmlConverter$1)
.class public synthetic Lio/bidmachine/media3/ui/SpannedToHtmlConverter$1;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/SpannedToHtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.ui.SpannedToHtmlConverter.HtmlAndCss (io.bidmachine.media3.ui.SpannedToHtmlConverter$HtmlAndCss)
.class public Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/SpannedToHtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtmlAndCss"
.end annotation


# instance fields
.field public final cssRuleSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final html:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    .line 322
    iput-object p2, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->cssRuleSets:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$1;)V
    .registers 4

    .line 307
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.SpannedToHtmlConverter.SpanInfo (io.bidmachine.media3.ui.SpannedToHtmlConverter$SpanInfo)
.class public final Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/SpannedToHtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanInfo"
.end annotation


# static fields
.field public static final FOR_CLOSING_TAGS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOR_OPENING_TAGS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final closingTag:Ljava/lang/String;

.field public final end:I

.field public final openingTag:Ljava/lang/String;

.field public final start:I


# direct methods
.method public static synthetic $r8$lambda$F5hLxGdOx9cWRaG7pubFgzf4eJA(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;)I
    .registers 4

    .line 333
    iget v0, p1, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    iget v1, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 337
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 341
    :cond_16
    iget-object p0, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZPMwRvZN8a2Im5EaU2TFxUBQ1zU(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;)I
    .registers 4

    .line 350
    iget v0, p1, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    iget v1, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 354
    :cond_b
    iget-object v0, p1, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 358
    :cond_16
    iget-object p1, p1, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    iget-object p0, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 331
    new-instance v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_OPENING_TAGS:Ljava/util/Comparator;

    .line 348
    new-instance v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_CLOSING_TAGS:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput p1, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->start:I

    .line 368
    iput p2, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    .line 369
    iput-object p3, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    .line 370
    iput-object p4, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$1;)V
    .registers 6

    .line 326
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200()Ljava/util/Comparator;
    .registers 1

    .line 326
    sget-object v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_CLOSING_TAGS:Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic access$400()Ljava/util/Comparator;
    .registers 1

    .line 326
    sget-object v0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_OPENING_TAGS:Ljava/util/Comparator;

    return-object v0
.end method

###### Class io.bidmachine.media3.ui.SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;

    check-cast p2, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;

    invoke-static {p1, p2}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->$r8$lambda$F5hLxGdOx9cWRaG7pubFgzf4eJA(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.ui.SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda1 (io.bidmachine.media3.ui.SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;

    check-cast p2, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;

    invoke-static {p1, p2}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;->$r8$lambda$ZPMwRvZN8a2Im5EaU2TFxUBQ1zU(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.ui.SpannedToHtmlConverter.Transition (io.bidmachine.media3.ui.SpannedToHtmlConverter$Transition)
.class public final Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/SpannedToHtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transition"
.end annotation


# instance fields
.field public final spansAdded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final spansRemoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/ui/SpannedToHtmlConverter$SpanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/List;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;
    .registers 1

    .line 374
    iget-object p0, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;
    .registers 1

    .line 374
    iget-object p0, p0, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/List;

    return-object p0
.end method
