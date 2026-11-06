###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser (io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser)
.class public final Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;,
        Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;,
        Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;,
        Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;
    }
.end annotation


# static fields
.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field public static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TEXT_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 122
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 124
    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xff

    .line 162
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "white"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 163
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "blue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "black"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_white"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bg_blue"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bg_black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    return-void
.end method

.method public static applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 653
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 654
    sget-object v1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x21

    if-eqz v2, :cond_2d

    .line 655
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 656
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 657
    :cond_2d
    sget-object v1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 658
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 659
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_48
    return-void
.end method

.method public static applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .registers 4

    .line 499
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6e

    goto :goto_37

    :sswitch_c
    const-string v1, "nbsp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_37

    :cond_15
    const/4 v0, 0x3

    goto :goto_37

    :sswitch_17
    const-string v1, "amp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_37

    :cond_20
    const/4 v0, 0x2

    goto :goto_37

    :sswitch_22
    const-string v1, "lt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_37

    :cond_2b
    const/4 v0, 0x1

    goto :goto_37

    :sswitch_2d
    const-string v1, "gt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    packed-switch v0, :pswitch_data_80

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignoring unsupported entity: \'&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_56
    const/16 p0, 0x20

    .line 507
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    :pswitch_5c
    const/16 p0, 0x26

    .line 510
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    :pswitch_62
    const/16 p0, 0x3c

    .line 501
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    :pswitch_68
    const/16 p0, 0x3e

    .line 504
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    :sswitch_data_6e
    .sparse-switch
        0xced -> :sswitch_2d
        0xd88 -> :sswitch_22
        0x179c4 -> :sswitch_17
        0x337f11 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
    .end packed-switch
.end method

.method public static applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 581
    invoke-static {p4, p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v0

    .line 582
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 583
    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 584
    invoke-static {}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$100()Ljava/util/Comparator;

    move-result-object p3

    invoke-static {v1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 586
    iget p2, p2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    const/4 p3, 0x0

    move v2, p3

    .line 587
    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_73

    .line 588
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;

    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$200(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v3

    iget-object v3, v3, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const-string v4, "rt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_70

    .line 591
    :cond_36
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;

    .line 597
    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$200(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v4

    invoke-static {p4, p1, v4}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v4

    const/4 v5, 0x1

    .line 596
    invoke-static {v4, v0, v5}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->firstKnownRubyPosition(III)I

    move-result v4

    .line 601
    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$200(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v5

    iget v5, v5, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    sub-int/2addr v5, v2

    .line 602
    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$300(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 603
    invoke-virtual {p0, v5, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 604
    invoke-virtual {p0, v5, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 605
    new-instance v3, Lio/bidmachine/media3/common/text/RubySpan;

    .line 606
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Lio/bidmachine/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x21

    .line 605
    invoke-virtual {p0, v3, p2, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 610
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr v2, p2

    move p2, v5

    :goto_70
    add-int/lit8 p3, p3, 0x1

    goto :goto_1b

    :cond_73
    return-void
.end method

.method public static applySpansForTag(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 540
    iget v3, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 541
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 543
    iget-object v5, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x21

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_b8

    goto/16 :goto_71

    :sswitch_1a
    const-string v8, "ruby"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_71

    :cond_23
    const/4 v7, 0x7

    goto :goto_71

    :sswitch_25
    const-string v8, "lang"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_71

    :cond_2e
    const/4 v7, 0x6

    goto :goto_71

    :sswitch_30
    const-string v8, "v"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_71

    :cond_39
    const/4 v7, 0x5

    goto :goto_71

    :sswitch_3b
    const-string v8, "u"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    goto :goto_71

    :cond_44
    const/4 v7, 0x4

    goto :goto_71

    :sswitch_46
    const-string v8, "i"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto :goto_71

    :cond_4f
    const/4 v7, 0x3

    goto :goto_71

    :sswitch_51
    const-string v8, "c"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    goto :goto_71

    :cond_5a
    move v7, v0

    goto :goto_71

    :sswitch_5c
    const-string v8, "b"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    goto :goto_71

    :cond_65
    move v7, v2

    goto :goto_71

    :sswitch_67
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    goto :goto_71

    :cond_70
    move v7, v1

    :goto_71
    packed-switch v7, :pswitch_data_da

    goto :goto_b6

    .line 551
    :pswitch_75
    invoke-static {p3, p0, p1, p2, p4}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V

    goto :goto_9f

    .line 560
    :pswitch_79
    iget-object p2, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-static {p3, p2, v3, v4}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->applyVoiceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    goto :goto_9f

    .line 554
    :pswitch_7f
    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3, p2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9f

    .line 548
    :pswitch_88
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, p2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9f

    .line 557
    :pswitch_91
    iget-object p2, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    invoke-static {p3, p2, v3, v4}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V

    goto :goto_9f

    .line 545
    :pswitch_97
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, p2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 569
    :goto_9f
    :pswitch_9f
    invoke-static {p4, p0, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object p0

    .line 570
    :goto_a3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_b6

    .line 571
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    invoke-static {p3, p1, v3, v4}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->applyStyleToText(Landroid/text/SpannableStringBuilder;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;II)V

    add-int/2addr v1, v2

    goto :goto_a3

    :cond_b6
    :goto_b6
    return-void

    nop

    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_67
        0x62 -> :sswitch_5c
        0x63 -> :sswitch_51
        0x69 -> :sswitch_46
        0x75 -> :sswitch_3b
        0x76 -> :sswitch_30
        0x3291ee -> :sswitch_25
        0x3595da -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_97
        :pswitch_91
        :pswitch_88
        :pswitch_7f
        :pswitch_79
        :pswitch_9f
        :pswitch_75
    .end packed-switch
.end method

.method public static applyStyleToText(Landroid/text/SpannableStringBuilder;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;II)V
    .registers 8

    if-nez p1, :cond_4

    goto/16 :goto_b1

    .line 674
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_19

    .line 675
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 677
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 675
    invoke-static {p0, v0, p2, p3, v2}, Lio/bidmachine/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 682
    :cond_19
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 683
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 685
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 686
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 688
    :cond_35
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 689
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 691
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 689
    invoke-static {p0, v0, p2, p3, v2}, Lio/bidmachine/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 696
    :cond_47
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 697
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 699
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 697
    invoke-static {p0, v0, p2, p3, v2}, Lio/bidmachine/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 704
    :cond_59
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 705
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 707
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-static {p0, v0, p2, p3, v2}, Lio/bidmachine/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 712
    :cond_6b
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSizeUnit()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_96

    const/4 v1, 0x2

    if-eq v0, v1, :cond_89

    const/4 v1, 0x3

    if-eq v0, v1, :cond_79

    goto :goto_a3

    .line 730
    :cond_79
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 732
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 730
    invoke-static {p0, v0, p2, p3, v2}, Lio/bidmachine/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_a3

    .line 722
    :cond_89
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 724
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 722
    invoke-static {p0, v0, p2, p3, v2}, Lio/bidmachine/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_a3

    .line 714
    :cond_96
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 716
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 714
    invoke-static {p0, v0, p2, p3, v2}, Lio/bidmachine/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 741
    :goto_a3
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getCombineUpright()Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 742
    new-instance p1, Lio/bidmachine/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-direct {p1}, Lio/bidmachine/media3/common/text/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method public static applyVoiceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .registers 5

    .line 666
    new-instance v0, Lio/bidmachine/media3/common/text/VoiceSpan;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/text/VoiceSpan;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x21

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static findEndOfTag(Ljava/lang/String;I)I
    .registers 3

    const/16 v0, 0x3e

    .line 494
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 495
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_e
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static firstKnownRubyPosition(III)I
    .registers 4

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    return p0

    :cond_4
    if-eq p1, v0, :cond_7

    return p1

    :cond_7
    if-eq p2, v0, :cond_a

    return p2

    .line 641
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;"
        }
    .end annotation

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 762
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 763
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    .line 764
    iget-object v3, p2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v4, p2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    iget-object v5, p2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_26

    .line 766
    new-instance v4, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v4, v3, v2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 769
    :cond_29
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static getRubyPosition(Ljava/util/List;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            ")I"
        }
    .end annotation

    .line 618
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 619
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, -0x1

    if-ge p1, p2, :cond_22

    .line 620
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object p2, p2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    .line 621
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result v1

    if-eq v1, v0, :cond_1f

    .line 622
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result p0

    return p0

    :cond_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_22
    return v0
.end method

.method public static getTagName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 754
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 755
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 756
    const-string v0, "[ \\.]"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static isSupportedTag(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6c

    goto/16 :goto_66

    :sswitch_f
    const-string v3, "ruby"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_66

    :cond_18
    const/4 v2, 0x7

    goto :goto_66

    :sswitch_1a
    const-string v3, "lang"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_66

    :cond_23
    const/4 v2, 0x6

    goto :goto_66

    :sswitch_25
    const-string v3, "rt"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_66

    :cond_2e
    const/4 v2, 0x5

    goto :goto_66

    :sswitch_30
    const-string v3, "v"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_66

    :cond_39
    const/4 v2, 0x4

    goto :goto_66

    :sswitch_3b
    const-string v3, "u"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto :goto_66

    :cond_44
    const/4 v2, 0x3

    goto :goto_66

    :sswitch_46
    const-string v3, "i"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto :goto_66

    :cond_4f
    const/4 v2, 0x2

    goto :goto_66

    :sswitch_51
    const-string v3, "c"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto :goto_66

    :cond_5a
    move v2, v0

    goto :goto_66

    :sswitch_5c
    const-string v3, "b"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto :goto_66

    :cond_65
    move v2, v1

    :goto_66
    packed-switch v2, :pswitch_data_8e

    return v1

    :pswitch_6a
    return v0

    nop

    :sswitch_data_6c
    .sparse-switch
        0x62 -> :sswitch_5c
        0x63 -> :sswitch_51
        0x69 -> :sswitch_46
        0x75 -> :sswitch_3b
        0x76 -> :sswitch_30
        0xe42 -> :sswitch_25
        0x3291ee -> :sswitch_1a
        0x3595da -> :sswitch_f
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method

.method public static newCueForText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue;
    .registers 2

    .line 238
    new-instance v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 239
    iput-object p0, v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 240
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method

.method public static parseCue(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/List;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 205
    :cond_8
    sget-object v2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 208
    invoke-static {v1, v3, p0, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/List;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object p0

    return-object p0

    .line 211
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    return-object v1

    .line 215
    :cond_20
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p0, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/List;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object p0

    return-object p0

    :cond_33
    return-object v1
.end method

.method public static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/List;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 343
    new-instance v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    const/4 v1, 0x1

    .line 347
    :try_start_6
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    const/4 v1, 0x2

    .line 349
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_27} :catch_6a

    const/4 v1, 0x3

    .line 355
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 360
    :goto_3e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 362
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4f

    .line 363
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 367
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object p0

    iput-object p0, v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 368
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->build()Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object p0

    return-object p0

    .line 351
    :catch_6a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping cue with bad header: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseCueSettingsList(Ljava/lang/String;)Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 2

    .line 230
    new-instance v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 231
    invoke-static {p0, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 232
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseCueSettingsList(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .registers 7

    .line 373
    const-string v0, "WebvttCueParser"

    sget-object v1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 375
    :goto_8
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_a0

    const/4 v1, 0x1

    .line 376
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    .line 377
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 379
    :try_start_24
    const-string v3, "line"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 380
    invoke-static {v2, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_8

    .line 381
    :cond_30
    const-string v3, "align"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 382
    invoke-static {v2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    goto :goto_8

    .line 383
    :cond_3f
    const-string v3, "position"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 384
    invoke-static {v2, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_8

    .line 385
    :cond_4b
    const-string v3, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 386
    invoke-static {v2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    iput v1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    goto :goto_8

    .line 387
    :cond_5a
    const-string v3, "vertical"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 388
    invoke-static {v2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseVerticalAttribute(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    goto :goto_8

    .line 390
    :cond_69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown cue setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_85} :catch_86

    goto :goto_8

    .line 393
    :catch_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping bad cue setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a0
    return-void
.end method

.method public static parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Landroid/text/SpannedString;"
        }
    .end annotation

    .line 253
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 254
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 257
    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_e5

    .line 258
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x26

    if-eq v5, v6, :cond_b1

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_29

    .line 317
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_29
    add-int/lit8 v5, v4, 0x1

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_32

    goto :goto_6f

    .line 266
    :cond_32
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    const/4 v8, 0x1

    if-ne v6, v7, :cond_3d

    move v6, v8

    goto :goto_3e

    :cond_3d
    move v6, v3

    .line 267
    :goto_3e
    invoke-static {p1, v5}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v9, v5, -0x2

    .line 268
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_4c

    move v7, v8

    goto :goto_4d

    :cond_4c
    move v7, v3

    :goto_4d
    if-eqz v6, :cond_50

    const/4 v8, 0x2

    :cond_50
    add-int/2addr v4, v8

    if-eqz v7, :cond_54

    goto :goto_56

    :cond_54
    add-int/lit8 v9, v5, -0x1

    .line 270
    :goto_56
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_65

    goto :goto_6f

    .line 274
    :cond_65
    invoke-static {v4}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    invoke-static {v8}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_71

    :cond_6f
    :goto_6f
    move v4, v5

    goto :goto_11

    :cond_71
    if-eqz v6, :cond_a3

    .line 281
    :cond_73
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7a

    goto :goto_6f

    .line 284
    :cond_7a
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 285
    invoke-static {p0, v4, v2, v0, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_97

    .line 287
    new-instance v6, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/4 v9, 0x0

    invoke-direct {v6, v4, v7, v9}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;-><init>(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;ILio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$1;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 289
    :cond_97
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 291
    :goto_9a
    iget-object v4, v4, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    goto :goto_6f

    :cond_a3
    if-nez v7, :cond_6f

    .line 293
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-static {v4, v6}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->buildStartTag(Ljava/lang/String;I)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_6f

    :cond_b1
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x3b

    .line 297
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v7, 0x20

    .line 298
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v6, v8, :cond_c4

    move v6, v7

    goto :goto_cb

    :cond_c4
    if-ne v7, v8, :cond_c7

    goto :goto_cb

    .line 304
    :cond_c7
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_cb
    if-eq v6, v8, :cond_e0

    .line 306
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    if-ne v6, v7, :cond_db

    .line 308
    const-string v4, " "

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_db
    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto/16 :goto_11

    .line 312
    :cond_e0
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_11

    .line 323
    :cond_e5
    :goto_e5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f5

    .line 324
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {p0, p1, v2, v0, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_e5

    .line 328
    :cond_f5
    invoke-static {}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->buildWholeCueVirtualTag()Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object p1

    .line 329
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 326
    invoke-static {p0, p1, v1, v0, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 332
    invoke-static {v0}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p0

    return-object p0
.end method

.method public static parseLineAnchor(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_5a

    goto :goto_3a

    :sswitch_f
    const-string v4, "start"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_3a

    :cond_18
    const/4 v3, 0x3

    goto :goto_3a

    :sswitch_1a
    const-string v4, "end"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_3a

    :cond_23
    move v3, v0

    goto :goto_3a

    :sswitch_25
    const-string v4, "middle"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_3a

    :cond_2e
    move v3, v1

    goto :goto_3a

    :sswitch_30
    const-string v4, "center"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v2

    :goto_3a
    packed-switch v3, :pswitch_data_6c

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid anchor value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :pswitch_56
    return v2

    :pswitch_57
    return v0

    :pswitch_58
    return v1

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x514d33ab -> :sswitch_30
        -0x4009266b -> :sswitch_25
        0x188db -> :sswitch_1a
        0x68ac462 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_58
        :pswitch_58
        :pswitch_57
        :pswitch_56
    .end packed-switch
.end method

.method public static parseLineAttribute(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .registers 5

    const/16 v0, 0x2c

    .line 399
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1a

    add-int/lit8 v1, v0, 0x1

    .line 401
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseLineAnchor(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 402
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 404
    :cond_1a
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 405
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    .line 406
    iput v2, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    return-void

    .line 408
    :cond_2b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    const/4 p0, 0x1

    .line 409
    iput p0, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    return-void
.end method

.method public static parsePositionAnchor(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_70

    goto :goto_50

    :sswitch_f
    const-string v4, "start"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_50

    :cond_18
    const/4 v3, 0x5

    goto :goto_50

    :sswitch_1a
    const-string v4, "end"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_50

    :cond_23
    const/4 v3, 0x4

    goto :goto_50

    :sswitch_25
    const-string v4, "middle"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_50

    :cond_2e
    const/4 v3, 0x3

    goto :goto_50

    :sswitch_30
    const-string v4, "line-right"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_50

    :cond_39
    move v3, v0

    goto :goto_50

    :sswitch_3b
    const-string v4, "center"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_50

    :cond_44
    move v3, v1

    goto :goto_50

    :sswitch_46
    const-string v4, "line-left"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_50

    :cond_4f
    move v3, v2

    :goto_50
    packed-switch v3, :pswitch_data_8a

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid anchor value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :pswitch_6c
    return v0

    :pswitch_6d
    return v1

    :pswitch_6e
    return v2

    nop

    :sswitch_data_70
    .sparse-switch
        -0x6dd215c0 -> :sswitch_46
        -0x514d33ab -> :sswitch_3b
        -0x4c1a40fd -> :sswitch_30
        -0x4009266b -> :sswitch_25
        0x188db -> :sswitch_1a
        0x68ac462 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6d
        :pswitch_6c
        :pswitch_6e
    .end packed-switch
.end method

.method public static parsePositionAttribute(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .registers 4

    const/16 v0, 0x2c

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    add-int/lit8 v1, v0, 0x1

    .line 431
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/4 v1, 0x0

    .line 432
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 434
    :cond_1a
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    return-void
.end method

.method public static parseTextAlignment(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 467
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_72

    goto :goto_52

    :sswitch_11
    const-string v6, "start"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_52

    :cond_1a
    move v5, v0

    goto :goto_52

    :sswitch_1c
    const-string v6, "right"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto :goto_52

    :cond_25
    move v5, v1

    goto :goto_52

    :sswitch_27
    const-string v6, "left"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    goto :goto_52

    :cond_30
    move v5, v2

    goto :goto_52

    :sswitch_32
    const-string v6, "end"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_52

    :cond_3b
    move v5, v4

    goto :goto_52

    :sswitch_3d
    const-string v6, "middle"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    goto :goto_52

    :cond_46
    move v5, v3

    goto :goto_52

    :sswitch_48
    const-string v6, "center"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    goto :goto_52

    :cond_51
    const/4 v5, 0x0

    :goto_52
    packed-switch v5, :pswitch_data_8c

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alignment value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :pswitch_6c
    return v3

    :pswitch_6d
    return v0

    :pswitch_6e
    return v1

    :pswitch_6f
    return v2

    :pswitch_70
    return v4

    nop

    :sswitch_data_72
    .sparse-switch
        -0x514d33ab -> :sswitch_48
        -0x4009266b -> :sswitch_3d
        0x188db -> :sswitch_32
        0x32a007 -> :sswitch_27
        0x677c21c -> :sswitch_1c
        0x68ac462 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
    .end packed-switch
.end method

.method public static parseVerticalAttribute(Ljava/lang/String;)I
    .registers 3

    .line 455
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "rl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid \'vertical\' value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :cond_2c
    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x2

    return p0
.end method

###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser.AnonymousClass1 (io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser$1)
.class public synthetic Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$1;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser.Element (io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser$Element)
.class public Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# static fields
.field public static final BY_START_POSITION_ASC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final endPosition:I

.field public final startTag:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;


# direct methods
.method public static synthetic $r8$lambda$8MvQ2qixNiF-_59oKOCg09qNHCk(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;)I
    .registers 2

    .line 982
    iget-object p0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iget p0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iget p1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 981
    new-instance v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;I)V
    .registers 3

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 994
    iput p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->endPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;ILio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$1;)V
    .registers 4

    .line 980
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;-><init>(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;I)V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/Comparator;
    .registers 1

    .line 980
    sget-object v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    .registers 1

    .line 980
    iget-object p0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;)I
    .registers 1

    .line 980
    iget p0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->endPosition:I

    return p0
.end method

###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser$Element$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser$Element$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element$$ExternalSyntheticLambda0;
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
    check-cast p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;

    check-cast p2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;->$r8$lambda$8MvQ2qixNiF-_59oKOCg09qNHCk(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$Element;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser.StartTag (io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser$StartTag)
.class public final Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartTag"
.end annotation


# instance fields
.field public final classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final position:I

.field public final voice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 945
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    .line 946
    iput-object p3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    .line 947
    iput-object p4, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    return-void
.end method

.method public static buildStartTag(Ljava/lang/String;I)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    .registers 7

    .line 951
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 952
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 953
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1a

    .line 956
    const-string v0, ""

    goto :goto_27

    .line 958
    :cond_1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 959
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v0, v2

    .line 961
    :goto_27
    const-string v2, "\\."

    invoke-static {p0, v2}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 962
    aget-object v2, p0, v3

    .line 963
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 964
    :goto_34
    array-length v4, p0

    if-ge v1, v4, :cond_3f

    .line 965
    aget-object v4, p0, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 967
    :cond_3f
    new-instance p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    invoke-direct {p0, v2, p1, v0, v3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    return-object p0
.end method

.method public static buildWholeCueVirtualTag()Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
    .registers 4

    .line 971
    new-instance v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    const/4 v1, 0x0

    .line 975
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const-string v3, ""

    invoke-direct {v0, v3, v1, v3, v2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser.StyleMatch (io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser$StyleMatch)
.class public final Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StyleMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;",
        ">;"
    }
.end annotation


# instance fields
.field public final score:I

.field public final style:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;


# direct methods
.method public constructor <init>(ILio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;)V
    .registers 3

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    iput p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    .line 927
    iput-object p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;)I
    .registers 3

    .line 932
    iget v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    iget p1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 920
    check-cast p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->compareTo(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder (io.bidmachine.media3.extractor.text.webvtt.WebvttCueParser$WebvttCueInfoBuilder)
.class public final Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebvttCueInfoBuilder"
.end annotation


# instance fields
.field public endTimeUs:J

.field public line:F

.field public lineAnchor:I

.field public lineType:I

.field public position:F

.field public positionAnchor:I

.field public size:F

.field public startTimeUs:J

.field public text:Ljava/lang/CharSequence;

.field public textAlignment:I

.field public verticalType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 790
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    .line 791
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    const/4 v0, 0x2

    .line 793
    iput v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    const v0, -0x800001

    .line 794
    iput v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    const/4 v1, 0x1

    .line 796
    iput v1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    const/4 v1, 0x0

    .line 798
    iput v1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 799
    iput v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    const/high16 v0, -0x80000000

    .line 800
    iput v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 802
    iput v1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    .line 803
    iput v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    return-void
.end method

.method public static computeLine(FI)F
    .registers 6

    .line 0
    const v0, -0x800001

    cmpl-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    if-ltz v3, :cond_14

    cmpl-float v3, p0, v2

    if-lez v3, :cond_15

    :cond_14
    return v2

    :cond_15
    if-eqz v1, :cond_18

    return p0

    :cond_18
    if-nez p1, :cond_1b

    return v2

    :cond_1b
    return v0
.end method

.method public static convertTextAlignment(I)Landroid/text/Layout$Alignment;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_27

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_27

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown textAlignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 893
    :cond_27
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 890
    :cond_2a
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    .line 888
    :cond_2d
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public static deriveMaxSize(IF)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_22

    const/4 v1, 0x1

    if-eq p0, v1, :cond_15

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    return p1

    .line 915
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-gtz p0, :cond_1f

    mul-float/2addr p1, v1

    return p1

    :cond_1f
    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    return v0

    :cond_22
    sub-float/2addr v0, p1

    return v0
.end method

.method public static derivePosition(I)F
    .registers 2

    .line 0
    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_9
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static derivePositionAnchor(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_f

    const/4 v1, 0x5

    if-eq p0, v1, :cond_d

    return v0

    :cond_d
    const/4 p0, 0x2

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;
    .registers 7

    .line 807
    new-instance v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object v1

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;-><init>(Lio/bidmachine/media3/common/text/Cue;JJ)V

    return-object v0
.end method

.method public toCueBuilder()Lio/bidmachine/media3/common/text/Cue$Builder;
    .registers 6

    .line 812
    iget v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_a

    goto :goto_10

    :cond_a
    iget v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePosition(I)F

    move-result v0

    .line 815
    :goto_10
    iget v1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_17

    goto :goto_1d

    .line 817
    :cond_17
    iget v1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePositionAnchor(I)I

    move-result v1

    .line 818
    :goto_1d
    new-instance v2, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v2}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    iget v3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    .line 820
    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->convertTextAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    iget v4, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    .line 821
    invoke-static {v3, v4}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->computeLine(FI)F

    move-result v3

    iget v4, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 822
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    .line 823
    invoke-virtual {v2, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    .line 824
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    .line 825
    invoke-static {v1, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->deriveMaxSize(IF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setSize(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    .line 826
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setVerticalType(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_63

    .line 829
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    :cond_63
    return-object v0
.end method
