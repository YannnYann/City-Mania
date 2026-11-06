###### Class io.bidmachine.media3.extractor.text.ttml.TtmlParser (io.bidmachine.media3.extractor.text.ttml.TtmlParser)
.class public final Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;,
        Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;
    }
.end annotation


# static fields
.field public static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field public static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field public static final DEFAULT_FRAME_AND_TICK_RATE:Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

.field public static final FONT_SIZE:Ljava/util/regex/Pattern;

.field public static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field public static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field public static final PIXEL_COORDINATES:Ljava/util/regex/Pattern;

.field public static final SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;


# instance fields
.field public final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 99
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 100
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 104
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 106
    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, "^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$"

    .line 108
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 109
    const-string v0, "^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$"

    .line 110
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    .line 111
    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 115
    new-instance v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 1

    if-nez p0, :cond_7

    .line 658
    new-instance p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    :cond_7
    return-object p0
.end method

.method public static isSupportedTag(Ljava/lang/String;)Z
    .registers 2

    .line 753
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "head"

    .line 754
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "body"

    .line 755
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "div"

    .line 756
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "p"

    .line 757
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "span"

    .line 758
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "br"

    .line 759
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "style"

    .line 760
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "styling"

    .line 761
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "layout"

    .line 762
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "region"

    .line 763
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "metadata"

    .line 764
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "image"

    .line 765
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "data"

    .line 766
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "information"

    .line 767
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    goto :goto_7b

    :cond_79
    const/4 p0, 0x0

    return p0

    :cond_7b
    :goto_7b
    const/4 p0, 0x1

    return p0
.end method

.method public static parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .registers 3

    .line 663
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_54

    goto :goto_46

    :sswitch_10
    const-string v1, "start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_46

    :cond_19
    const/4 v0, 0x4

    goto :goto_46

    :sswitch_1b
    const-string v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_46

    :cond_24
    const/4 v0, 0x3

    goto :goto_46

    :sswitch_26
    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_46

    :cond_2f
    const/4 v0, 0x2

    goto :goto_46

    :sswitch_31
    const-string v1, "end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_46

    :cond_3a
    const/4 v0, 0x1

    goto :goto_46

    :sswitch_3c
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    packed-switch v0, :pswitch_data_6a

    const/4 p0, 0x0

    return-object p0

    .line 666
    :pswitch_4b
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    .line 669
    :pswitch_4e
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 671
    :pswitch_51
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_54
    .sparse-switch
        -0x514d33ab -> :sswitch_3c
        0x188db -> :sswitch_31
        0x32a007 -> :sswitch_26
        0x677c21c -> :sswitch_1b
        0x68ac462 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_4e
        :pswitch_4b
    .end packed-switch
.end method

.method public static parseCellRows(Lorg/xmlpull/v1/XmlPullParser;I)I
    .registers 9

    .line 251
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    return p1

    .line 256
    :cond_b
    sget-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlParser"

    if-nez v1, :cond_2e

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_2e
    const/4 v1, 0x1

    .line 262
    :try_start_2f
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 263
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v4, :cond_51

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    .line 264
    :goto_52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cell resolution "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_6e} :catch_6f

    return v0

    .line 267
    :catch_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public static parseFontSize(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 772
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 774
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    .line 775
    sget-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_24

    .line 776
    :cond_12
    array-length v1, v0

    if-ne v1, v2, :cond_b7

    .line 777
    sget-object v1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 778
    const-string v1, "TtmlParser"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v1, v4}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :goto_24
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_9d

    const/4 p0, 0x3

    .line 788
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 789
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d4

    goto :goto_63

    :sswitch_43
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_63

    :cond_4c
    move v5, v2

    goto :goto_63

    :sswitch_4e
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    goto :goto_63

    :cond_57
    move v5, v3

    goto :goto_63

    :sswitch_59
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_63

    :cond_62
    const/4 v5, 0x0

    :goto_63
    packed-switch v5, :pswitch_data_e2

    .line 800
    new-instance p0, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid unit for fontSize: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 791
    :pswitch_80
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    goto :goto_8b

    .line 794
    :pswitch_84
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    goto :goto_8b

    .line 797
    :pswitch_88
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    .line 802
    :goto_8b
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setFontSize(F)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    return-void

    .line 804
    :cond_9d
    new-instance p1, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid expression for fontSize: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 783
    :cond_b7
    new-instance p0, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number of entries for fontSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_d4
    .sparse-switch
        0x25 -> :sswitch_59
        0xca8 -> :sswitch_4e
        0xe08 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_88
        :pswitch_84
        :pswitch_80
    .end packed-switch
.end method

.method public static parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;
    .registers 8

    .line 221
    const-string v0, "frameRate"

    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_11

    :cond_f
    const/16 v0, 0x1e

    .line 227
    :goto_11
    const-string v2, "frameRateMultiplier"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 229
    const-string v3, " "

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 230
    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_27

    move v3, v6

    goto :goto_28

    :cond_27
    move v3, v5

    :goto_28
    const-string v4, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 231
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    .line 232
    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_3f

    :cond_3d
    const/high16 v3, 0x3f800000    # 1.0f

    .line 236
    :goto_3f
    sget-object v2, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    iget v4, v2, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    .line 237
    const-string v5, "subFrameRate"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4f

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 242
    :cond_4f
    iget v2, v2, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    .line 243
    const-string v5, "tickRate"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5d

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    :cond_5d
    new-instance p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-direct {p0, v0, v4, v2}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    return-object p0
.end method

.method public static parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;ILio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;",
            ">;I",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 304
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 305
    const-string v0, "style"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 306
    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    invoke-direct {v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    invoke-static {p0, v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v1

    if-eqz v0, :cond_30

    .line 309
    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_30

    aget-object v4, v0, v3

    .line 310
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    invoke-virtual {v1, v4}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->chain(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 313
    :cond_30
    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 315
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    .line 317
    :cond_3a
    const-string v0, "region"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 319
    invoke-static {p0, p2, p3, p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;ILio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;Ljava/util/Map;)Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 321
    iget-object v1, v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    .line 323
    :cond_4e
    const-string v0, "metadata"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 324
    invoke-static {p0, p5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 326
    :cond_59
    :goto_59
    const-string v0, "head"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1
.end method

.method public static parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 333
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 334
    const-string v0, "image"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 335
    const-string v0, "id"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 337
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_1a
    const-string v0, "metadata"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static parseNode(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;",
            ")",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p3

    const/4 v2, 0x1

    .line 689
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v4, 0x0

    .line 690
    invoke-static {v0, v4}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 691
    const-string v8, ""

    move-wide v11, v6

    move-wide v13, v11

    move-wide v15, v13

    move-wide/from16 v17, v15

    move-object v7, v8

    const/4 v6, 0x0

    move-object v8, v4

    :goto_1f
    if-ge v6, v3, :cond_b1

    .line 692
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v19, v11

    .line 693
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    .line 694
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_e6

    :goto_35
    const/4 v12, -0x1

    goto :goto_78

    :sswitch_37
    const-string v12, "backgroundImage"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    goto :goto_35

    :cond_40
    const/4 v12, 0x5

    goto :goto_78

    :sswitch_42
    const-string v12, "style"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4b

    goto :goto_35

    :cond_4b
    const/4 v12, 0x4

    goto :goto_78

    :sswitch_4d
    const-string v12, "begin"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_56

    goto :goto_35

    :cond_56
    const/4 v12, 0x3

    goto :goto_78

    :sswitch_58
    const-string v12, "end"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_61

    goto :goto_35

    :cond_61
    const/4 v12, 0x2

    goto :goto_78

    :sswitch_63
    const-string v12, "dur"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6c

    goto :goto_35

    :cond_6c
    move v12, v2

    goto :goto_78

    :sswitch_6e
    const-string v12, "region"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_77

    goto :goto_35

    :cond_77
    const/4 v12, 0x0

    :goto_78
    packed-switch v12, :pswitch_data_100

    goto :goto_88

    .line 721
    :pswitch_7c
    const-string v10, "#"

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 722
    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_88
    :goto_88
    move-object/from16 v10, p2

    goto :goto_ac

    .line 706
    :pswitch_8b
    invoke-static {v11}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 707
    array-length v11, v10

    if-lez v11, :cond_88

    move-object v4, v10

    goto :goto_88

    .line 696
    :pswitch_94
    invoke-static {v11, v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v13

    goto :goto_88

    .line 699
    :pswitch_99
    invoke-static {v11, v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v15

    goto :goto_88

    .line 702
    :pswitch_9e
    invoke-static {v11, v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v17

    goto :goto_88

    :pswitch_a3
    move-object/from16 v10, p2

    .line 712
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ac

    move-object v7, v11

    :cond_ac
    :goto_ac
    add-int/2addr v6, v2

    move-wide/from16 v11, v19

    goto/16 :goto_1f

    :cond_b1
    move-wide/from16 v19, v11

    if-eqz v9, :cond_c5

    .line 730
    iget-wide v1, v9, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v3, v1, v19

    if-eqz v3, :cond_c5

    cmp-long v3, v13, v19

    if-eqz v3, :cond_c0

    add-long/2addr v13, v1

    :cond_c0
    cmp-long v3, v15, v19

    if-eqz v3, :cond_c5

    add-long/2addr v15, v1

    :cond_c5
    move-wide v1, v13

    cmp-long v3, v15, v19

    if-nez v3, :cond_da

    cmp-long v3, v17, v19

    if-eqz v3, :cond_d1

    add-long v15, v1, v17

    goto :goto_da

    :cond_d1
    if-eqz v9, :cond_da

    .line 742
    iget-wide v10, v9, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v3, v10, v19

    if-eqz v3, :cond_da

    move-wide v15, v10

    .line 749
    :cond_da
    :goto_da
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v4

    move-wide v3, v15

    .line 748
    invoke-static/range {v0 .. v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLio/bidmachine/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_e6
    .sparse-switch
        -0x37b7d90c -> :sswitch_6e
        0x18601 -> :sswitch_63
        0x188db -> :sswitch_58
        0x59478a9 -> :sswitch_4d
        0x68b1db1 -> :sswitch_42
        0x4d0b70cd -> :sswitch_37
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
        :pswitch_94
        :pswitch_8b
        :pswitch_7c
    .end packed-switch
.end method

.method public static parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;ILio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;Ljava/util/Map;)Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;",
            ">;)",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 358
    const-string v6, "id"

    invoke-static {v0, v6}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    if-nez v8, :cond_12

    return-object v6

    .line 367
    :cond_12
    const-string v7, "origin"

    invoke-static {v0, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 368
    const-string v9, "style"

    if-nez v7, :cond_2e

    .line 369
    invoke-static {v0, v9}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2e

    .line 371
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    if-eqz v10, :cond_2e

    .line 373
    invoke-virtual {v10}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->getOrigin()Ljava/lang/String;

    move-result-object v7

    .line 377
    :cond_2e
    const-string v10, "Ignoring region with missing tts:extent: "

    const/high16 v11, 0x42c80000    # 100.0f

    const-string v12, "TtmlParser"

    if-eqz v7, :cond_e9

    .line 378
    sget-object v13, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 379
    sget-object v14, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 380
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    const-string v3, "Ignoring region with malformed origin: "

    if-eqz v15, :cond_7d

    .line 383
    :try_start_4a
    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    div-float/2addr v14, v11

    .line 384
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_67} :catch_6a

    div-float/2addr v3, v11

    goto/16 :goto_eb

    .line 386
    :catch_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 389
    :cond_7d
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_d4

    if-nez v1, :cond_98

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 395
    :cond_98
    :try_start_98
    invoke-virtual {v14, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 396
    invoke-virtual {v14, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-float v13, v13

    .line 398
    iget v15, v1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;->width:I

    int-to-float v15, v15

    div-float/2addr v13, v15

    int-to-float v14, v14

    .line 399
    iget v3, v1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;->height:I
    :try_end_bc
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_bc} :catch_c1

    int-to-float v3, v3

    div-float v3, v14, v3

    move v14, v13

    goto :goto_eb

    .line 401
    :catch_c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 405
    :cond_d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring region with unsupported origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_e9
    const/4 v3, 0x0

    move v14, v3

    .line 417
    :goto_eb
    const-string v13, "extent"

    invoke-static {v0, v13}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_105

    .line 419
    invoke-static {v0, v9}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_105

    .line 421
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    if-eqz v2, :cond_105

    .line 423
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->getExtent()Ljava/lang/String;

    move-result-object v13

    :cond_105
    if-eqz v13, :cond_1bc

    .line 428
    sget-object v9, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 429
    sget-object v15, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 430
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    const/high16 p3, 0x3f800000    # 1.0f

    const-string v2, "Ignoring region with malformed extent: "

    if-eqz v15, :cond_14f

    .line 433
    :try_start_11d
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v11

    .line 435
    invoke-virtual {v9, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_11d .. :try_end_13a} :catch_13c

    div-float/2addr v2, v11

    goto :goto_192

    .line 437
    :catch_13c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 440
    :cond_14f
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_1a7

    if-nez v1, :cond_16a

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 446
    :cond_16a
    :try_start_16a
    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 447
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v9, v9

    .line 449
    iget v11, v1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;->width:I

    int-to-float v11, v11

    div-float/2addr v9, v11

    int-to-float v10, v10

    .line 450
    iget v1, v1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;->height:I
    :try_end_18e
    .catch Ljava/lang/NumberFormatException; {:try_start_16a .. :try_end_18e} :catch_194

    int-to-float v1, v1

    div-float v2, v10, v1

    move v1, v9

    :goto_192
    move v13, v1

    goto :goto_1c1

    .line 452
    :catch_194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 456
    :cond_1a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring region with unsupported extent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_1bc
    const/high16 p3, 0x3f800000    # 1.0f

    move/from16 v2, p3

    move v13, v2

    .line 467
    :goto_1c1
    const-string v1, "displayAlign"

    .line 468
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f1

    .line 470
    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "center"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e7

    const-string v6, "after"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e1

    goto :goto_1f1

    :cond_1e1
    add-float/2addr v3, v2

    move/from16 v1, p1

    move v10, v3

    move v12, v5

    goto :goto_1f5

    :cond_1e7
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v2, v1

    add-float/2addr v3, v1

    move/from16 v1, p1

    move v10, v3

    move v12, v4

    goto :goto_1f5

    :cond_1f1
    :goto_1f1
    move/from16 v1, p1

    move v10, v3

    const/4 v12, 0x0

    :goto_1f5
    int-to-float v1, v1

    div-float v1, p3, v1

    .line 489
    const-string v3, "writingMode"

    .line 490
    invoke-static {v0, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23a

    .line 492
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_24a

    goto :goto_230

    :sswitch_210
    const-string v6, "tbrl"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_219

    goto :goto_230

    :cond_219
    move v3, v5

    goto :goto_230

    :sswitch_21b
    const-string v6, "tblr"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_224

    goto :goto_230

    :cond_224
    move v3, v4

    goto :goto_230

    :sswitch_226
    const-string v6, "tb"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22f

    goto :goto_230

    :cond_22f
    const/4 v3, 0x0

    :goto_230
    packed-switch v3, :pswitch_data_258

    goto :goto_23a

    :goto_234
    :pswitch_234
    move/from16 v17, v4

    goto :goto_23d

    :pswitch_237
    move/from16 v17, v5

    goto :goto_23d

    :cond_23a
    :goto_23a
    const/high16 v4, -0x80000000

    goto :goto_234

    .line 506
    :goto_23d
    new-instance v7, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;

    const/4 v11, 0x0

    const/4 v15, 0x1

    move/from16 v16, v1

    move v9, v14

    move v14, v2

    invoke-direct/range {v7 .. v17}, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    return-object v7

    nop

    :sswitch_data_24a
    .sparse-switch
        0xe6e -> :sswitch_226
        0x363874 -> :sswitch_21b
        0x363928 -> :sswitch_210
    .end sparse-switch

    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_237
        :pswitch_237
        :pswitch_234
    .end packed-switch
.end method

.method public static parseShear(Ljava/lang/String;)F
    .registers 6

    .line 813
    sget-object v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const-string v3, "TtmlParser"

    if-nez v1, :cond_26

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for shear: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_26
    const/4 v1, 0x1

    .line 819
    :try_start_27
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 820
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, -0x3d380000    # -100.0f

    .line 824
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 825
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_41} :catch_42

    return p0

    :catch_42
    move-exception v0

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse shear: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    .registers 15

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 526
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_c
    if-ge v8, v6, :cond_327

    .line 528
    invoke-interface {p0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 529
    invoke-interface {p0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "TtmlParser"

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_328

    :goto_22
    move v10, v2

    goto/16 :goto_f9

    :sswitch_25
    const-string v12, "multiRowAlign"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    goto :goto_22

    :cond_2e
    const/16 v10, 0x10

    goto/16 :goto_f9

    :sswitch_32
    const-string v12, "backgroundColor"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    goto :goto_22

    :cond_3b
    const/16 v10, 0xf

    goto/16 :goto_f9

    :sswitch_3f
    const-string v12, "rubyPosition"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_48

    goto :goto_22

    :cond_48
    const/16 v10, 0xe

    goto/16 :goto_f9

    :sswitch_4c
    const-string v12, "textEmphasis"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_55

    goto :goto_22

    :cond_55
    const/16 v10, 0xd

    goto/16 :goto_f9

    :sswitch_59
    const-string v12, "fontSize"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_62

    goto :goto_22

    :cond_62
    const/16 v10, 0xc

    goto/16 :goto_f9

    :sswitch_66
    const-string v12, "textCombine"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6f

    goto :goto_22

    :cond_6f
    const/16 v10, 0xb

    goto/16 :goto_f9

    :sswitch_73
    const-string v12, "shear"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7c

    goto :goto_22

    :cond_7c
    const/16 v10, 0xa

    goto/16 :goto_f9

    :sswitch_80
    const-string v12, "color"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_89

    goto :goto_22

    :cond_89
    const/16 v10, 0x9

    goto/16 :goto_f9

    :sswitch_8d
    const-string v12, "ruby"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_96

    goto :goto_22

    :cond_96
    const/16 v10, 0x8

    goto/16 :goto_f9

    :sswitch_9a
    const-string v12, "id"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a4

    goto/16 :goto_22

    :cond_a4
    const/4 v10, 0x7

    goto :goto_f9

    :sswitch_a6
    const-string v12, "fontWeight"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b0

    goto/16 :goto_22

    :cond_b0
    const/4 v10, 0x6

    goto :goto_f9

    :sswitch_b2
    const-string v12, "textDecoration"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bc

    goto/16 :goto_22

    :cond_bc
    move v10, v0

    goto :goto_f9

    :sswitch_be
    const-string v12, "origin"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c8

    goto/16 :goto_22

    :cond_c8
    move v10, v1

    goto :goto_f9

    :sswitch_ca
    const-string v12, "textAlign"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d4

    goto/16 :goto_22

    :cond_d4
    move v10, v3

    goto :goto_f9

    :sswitch_d6
    const-string v12, "fontFamily"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e0

    goto/16 :goto_22

    :cond_e0
    move v10, v4

    goto :goto_f9

    :sswitch_e2
    const-string v12, "extent"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ec

    goto/16 :goto_22

    :cond_ec
    move v10, v5

    goto :goto_f9

    :sswitch_ee
    const-string v12, "fontStyle"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f8

    goto/16 :goto_22

    :cond_f8
    move v10, v7

    :goto_f9
    packed-switch v10, :pswitch_data_36e

    goto/16 :goto_324

    .line 572
    :pswitch_fe
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-static {v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v9

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setMultiRowAlign(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 536
    :pswitch_10c
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    .line 538
    :try_start_110
    invoke-static {v9}, Lio/bidmachine/media3/common/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v10}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setBackgroundColor(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    :try_end_117
    .catch Ljava/lang/IllegalArgumentException; {:try_start_110 .. :try_end_117} :catch_119

    goto/16 :goto_324

    .line 540
    :catch_119
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing background value: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_324

    .line 609
    :pswitch_12f
    invoke-static {v9}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "before"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_152

    const-string v10, "after"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_148

    goto/16 :goto_324

    .line 614
    :cond_148
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setRubyPosition(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 611
    :cond_152
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setRubyPosition(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 638
    :pswitch_15c
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-static {v9}, Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;->parse(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;

    move-result-object v9

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setTextEmphasis(Lio/bidmachine/media3/extractor/text/ttml/TextEmphasis;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 556
    :pswitch_16a
    :try_start_16a
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    .line 557
    invoke-static {v9, p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseFontSize(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)V
    :try_end_171
    .catch Lio/bidmachine/media3/extractor/text/SubtitleDecoderException; {:try_start_16a .. :try_end_171} :catch_173

    goto/16 :goto_324

    .line 559
    :catch_173
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing fontSize value: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_324

    .line 575
    :pswitch_189
    invoke-static {v9}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "all"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1ac

    const-string v10, "none"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a2

    goto/16 :goto_324

    .line 577
    :cond_1a2
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v7}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setTextCombine(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 580
    :cond_1ac
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setTextCombine(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 641
    :pswitch_1b6
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-static {v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseShear(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setShearPercentage(F)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 544
    :pswitch_1c4
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    .line 546
    :try_start_1c8
    invoke-static {v9}, Lio/bidmachine/media3/common/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v10}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setFontColor(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;
    :try_end_1cf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c8 .. :try_end_1cf} :catch_1d1

    goto/16 :goto_324

    .line 548
    :catch_1d1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing color value: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_324

    .line 588
    :pswitch_1e7
    invoke-static {v9}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_394

    :goto_1f5
    move v9, v2

    goto :goto_238

    :sswitch_1f7
    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_200

    goto :goto_1f5

    :cond_200
    move v9, v0

    goto :goto_238

    :sswitch_202
    const-string v10, "base"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20b

    goto :goto_1f5

    :cond_20b
    move v9, v1

    goto :goto_238

    :sswitch_20d
    const-string v10, "textContainer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_216

    goto :goto_1f5

    :cond_216
    move v9, v3

    goto :goto_238

    :sswitch_218
    const-string v10, "delimiter"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_221

    goto :goto_1f5

    :cond_221
    move v9, v4

    goto :goto_238

    :sswitch_223
    const-string v10, "container"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22c

    goto :goto_1f5

    :cond_22c
    move v9, v5

    goto :goto_238

    :sswitch_22e
    const-string v10, "baseContainer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_237

    goto :goto_1f5

    :cond_237
    move v9, v7

    :goto_238
    packed-switch v9, :pswitch_data_3ae

    goto/16 :goto_324

    .line 598
    :pswitch_23d
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setRubyType(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 601
    :pswitch_247
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setRubyType(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 590
    :pswitch_251
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setRubyType(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 594
    :pswitch_25b
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setRubyType(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 531
    :pswitch_265
    const-string v10, "style"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_324

    .line 532
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 563
    :pswitch_27b
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    const-string v10, "bold"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setBold(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto/16 :goto_324

    .line 622
    :pswitch_28b
    invoke-static {v9}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_3be

    :goto_299
    move v9, v2

    goto :goto_2c6

    :sswitch_29b
    const-string v10, "linethrough"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a4

    goto :goto_299

    :cond_2a4
    move v9, v3

    goto :goto_2c6

    :sswitch_2a6
    const-string v10, "nolinethrough"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2af

    goto :goto_299

    :cond_2af
    move v9, v4

    goto :goto_2c6

    :sswitch_2b1
    const-string v10, "underline"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2ba

    goto :goto_299

    :cond_2ba
    move v9, v5

    goto :goto_2c6

    :sswitch_2bc
    const-string v10, "nounderline"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c5

    goto :goto_299

    :cond_2c5
    move v9, v7

    :goto_2c6
    packed-switch v9, :pswitch_data_3d0

    goto :goto_324

    .line 624
    :pswitch_2ca
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setLinethrough(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_324

    .line 627
    :pswitch_2d3
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v7}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setLinethrough(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_324

    .line 630
    :pswitch_2dc
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setUnderline(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_324

    .line 633
    :pswitch_2e5
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v7}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setUnderline(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_324

    .line 644
    :pswitch_2ee
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setOrigin(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_324

    .line 569
    :pswitch_2f7
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-static {v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v9

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_324

    .line 552
    :pswitch_304
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_324

    .line 647
    :pswitch_30d
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setExtent(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_324

    .line 566
    :pswitch_316
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->createIfNull(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    const-string v10, "italic"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->setItalic(Z)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object p1

    :cond_324
    :goto_324
    add-int/2addr v8, v5

    goto/16 :goto_c

    :cond_327
    return-object p1

    :sswitch_data_328
    .sparse-switch
        -0x5c71855e -> :sswitch_ee
        -0x4cd540d6 -> :sswitch_e2
        -0x48ff636d -> :sswitch_d6
        -0x3f826a28 -> :sswitch_ca
        -0x3c1e50da -> :sswitch_be
        -0x3468fa43 -> :sswitch_b2
        -0x2bc67c59 -> :sswitch_a6
        0xd1b -> :sswitch_9a
        0x3595da -> :sswitch_8d
        0x5a72f63 -> :sswitch_80
        0x6855ce1 -> :sswitch_73
        0x6909352 -> :sswitch_66
        0x15caa0f0 -> :sswitch_59
        0x36e741c9 -> :sswitch_4c
        0x42841923 -> :sswitch_3f
        0x4cb7f6d5 -> :sswitch_32
        0x6899f5a4 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_36e
    .packed-switch 0x0
        :pswitch_316
        :pswitch_30d
        :pswitch_304
        :pswitch_2f7
        :pswitch_2ee
        :pswitch_28b
        :pswitch_27b
        :pswitch_265
        :pswitch_1e7
        :pswitch_1c4
        :pswitch_1b6
        :pswitch_189
        :pswitch_16a
        :pswitch_15c
        :pswitch_12f
        :pswitch_10c
        :pswitch_fe
    .end packed-switch

    :sswitch_data_394
    .sparse-switch
        -0x24de7f50 -> :sswitch_22e
        -0x187eb37f -> :sswitch_223
        -0xeee99f9 -> :sswitch_218
        -0x81c562c -> :sswitch_20d
        0x2e06d1 -> :sswitch_202
        0x36452d -> :sswitch_1f7
    .end sparse-switch

    :pswitch_data_3ae
    .packed-switch 0x0
        :pswitch_25b
        :pswitch_251
        :pswitch_247
        :pswitch_23d
        :pswitch_25b
        :pswitch_23d
    .end packed-switch

    :sswitch_data_3be
    .sparse-switch
        -0x57195dd5 -> :sswitch_2bc
        -0x3d363934 -> :sswitch_2b1
        0x36723ff0 -> :sswitch_2a6
        0x641ec051 -> :sswitch_29b
    .end sparse-switch

    :pswitch_data_3d0
    .packed-switch 0x0
        :pswitch_2e5
        :pswitch_2dc
        :pswitch_2d3
        :pswitch_2ca
    .end packed-switch
.end method

.method public static parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 520
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_e
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseTimeExpression(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 846
    sget-object v2, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 847
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_84

    .line 848
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 849
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xe10

    mul-long/2addr v7, v9

    long-to-double v7, v7

    .line 850
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 851
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 852
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 853
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 854
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_57

    .line 855
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_58

    :cond_57
    move-wide v9, v0

    :goto_58
    add-double/2addr v7, v9

    const/4 p0, 0x5

    .line 856
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6a

    .line 858
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v3, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    div-float/2addr p0, v3

    float-to-double v9, p0

    goto :goto_6b

    :cond_6a
    move-wide v9, v0

    :goto_6b
    add-double/2addr v7, v9

    const/4 p0, 0x6

    .line 859
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_80

    .line 862
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    iget p0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double p0, p0

    div-double/2addr v0, p0

    :cond_80
    add-double/2addr v7, v0

    mul-double/2addr v7, v4

    double-to-long p0, v7

    return-wide p0

    .line 868
    :cond_84
    sget-object v2, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 869
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 870
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 871
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 872
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 873
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_120

    :goto_b3
    move v0, v2

    goto :goto_e9

    :sswitch_b5
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e9

    goto :goto_b3

    :sswitch_be
    const-string v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c7

    goto :goto_b3

    :cond_c7
    move v0, v1

    goto :goto_e9

    :sswitch_c9
    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d2

    goto :goto_b3

    :cond_d2
    move v0, v6

    goto :goto_e9

    :sswitch_d4
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dd

    goto :goto_b3

    :cond_dd
    move v0, v7

    goto :goto_e9

    :sswitch_df
    const-string v0, "f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e8

    goto :goto_b3

    :cond_e8
    const/4 v0, 0x0

    :cond_e9
    :goto_e9
    packed-switch v0, :pswitch_data_136

    goto :goto_106

    :pswitch_ed
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_f2
    div-double/2addr v8, p0

    goto :goto_106

    .line 890
    :pswitch_f4
    iget p0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    int-to-double p0, p0

    goto :goto_f2

    :pswitch_f8
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    :goto_fa
    mul-double/2addr v8, p0

    goto :goto_106

    :pswitch_fc
    const-wide p0, 0x40ac200000000000L    # 3600.0

    goto :goto_fa

    .line 887
    :pswitch_102
    iget p0, p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double p0, p0

    goto :goto_f2

    :goto_106
    mul-double/2addr v8, v4

    double-to-long p0, v8

    return-wide p0

    .line 895
    :cond_109
    new-instance p1, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed time expression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_120
    .sparse-switch
        0x66 -> :sswitch_df
        0x68 -> :sswitch_d4
        0x6d -> :sswitch_c9
        0x74 -> :sswitch_be
        0xda6 -> :sswitch_b5
    .end sparse-switch

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_102
        :pswitch_fc
        :pswitch_f8
        :pswitch_f4
        :pswitch_ed
    .end packed-switch
.end method

.method public static parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;
    .registers 6

    .line 275
    const-string v0, "extent"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 280
    :cond_a
    sget-object v1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "TtmlParser"

    if-nez v2, :cond_2d

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring non-pixel tts extent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2d
    const/4 v2, 0x1

    .line 286
    :try_start_2e
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    .line 287
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    new-instance v4, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;

    invoke-direct {v4, v2, v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;-><init>(II)V
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_50} :catch_51

    return-object v4

    .line 290
    :catch_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring malformed tts extent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseToLegacySubtitle([BII)Lio/bidmachine/media3/extractor/text/Subtitle;

    move-result-object p1

    .line 143
    invoke-static {p1, p4, p5}, Lio/bidmachine/media3/extractor/text/LegacySubtitleUtil;->toCuesWithTiming(Lio/bidmachine/media3/extractor/text/Subtitle;Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V

    return-void
.end method

.method public parseToLegacySubtitle([BII)Lio/bidmachine/media3/extractor/text/Subtitle;
    .registers 20

    .line 149
    const-string v0, ""

    move-object/from16 v1, p0

    :try_start_4
    iget-object v2, v1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 150
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 151
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 152
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 153
    new-instance v2, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;

    invoke-direct {v2, v0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct {v0, v2, v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v2, 0x0

    .line 155
    invoke-interface {v3, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 157
    new-instance v9, Ljava/util/ArrayDeque;

    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 159
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 160
    sget-object v5, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    const/4 v6, 0x0

    move v11, v6

    const/16 v12, 0xf

    move-object v6, v5

    move-object v5, v2

    :goto_41
    const/4 v13, 0x1

    if-eq v0, v13, :cond_10b

    .line 164
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    const/4 v15, 0x2

    if-nez v11, :cond_f6

    .line 166
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_51} :catch_70
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_51} :catch_6d

    .line 167
    const-string v10, "tt"

    if-ne v0, v15, :cond_bc

    .line 168
    :try_start_55
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 169
    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    move-result-object v6

    const/16 v15, 0xf

    .line 170
    invoke-static {v3, v15}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseCellRows(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v12

    .line 171
    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;

    move-result-object v5

    :goto_69
    move-object v10, v6

    move-object v6, v5

    move v5, v12

    goto :goto_76

    :catch_6d
    move-exception v0

    goto/16 :goto_112

    :catch_70
    move-exception v0

    goto/16 :goto_11a

    :cond_73
    const/16 v15, 0xf

    goto :goto_69

    .line 173
    :goto_76
    invoke-static {v14}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v0
    :try_end_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_7a} :catch_70
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_7a} :catch_6d

    const-string v12, "TtmlParser"

    if-nez v0, :cond_9c

    .line 174
    :try_start_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring unsupported tag: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_96
    add-int/lit8 v11, v11, 0x1

    :cond_98
    :goto_98
    move v12, v5

    move-object v5, v6

    move-object v6, v10

    goto :goto_f4

    .line 176
    :cond_9c
    const-string v0, "head"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 177
    invoke-static/range {v3 .. v8}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;ILio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_a7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_a7} :catch_70
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_a7} :catch_6d

    goto :goto_98

    .line 180
    :cond_a8
    :try_start_a8
    invoke-static {v3, v13, v7, v10}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    move-result-object v0

    .line 181
    invoke-virtual {v9, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v13, :cond_98

    .line 183
    invoke-virtual {v13, v0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->addChild(Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;)V
    :try_end_b4
    .catch Lio/bidmachine/media3/extractor/text/SubtitleDecoderException; {:try_start_a8 .. :try_end_b4} :catch_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_b4} :catch_70
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b4} :catch_6d

    goto :goto_98

    :catch_b5
    move-exception v0

    .line 186
    :try_start_b6
    const-string v13, "Suppressing parser error"

    invoke-static {v12, v13, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_96

    :cond_bc
    const/16 v15, 0xf

    const/4 v14, 0x4

    if-ne v0, v14, :cond_d3

    .line 192
    invoke-static {v13}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    move-result-object v10

    invoke-virtual {v0, v10}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->addChild(Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;)V

    goto :goto_f4

    :cond_d3
    const/4 v13, 0x3

    if-ne v0, v13, :cond_f4

    .line 194
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 195
    new-instance v2, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;

    .line 197
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    invoke-direct {v2, v0, v4, v7, v8}, Lio/bidmachine/media3/extractor/text/ttml/TtmlSubtitle;-><init>(Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 199
    :cond_f1
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_f4
    :goto_f4
    move v10, v15

    goto :goto_102

    :cond_f6
    const/16 v10, 0xf

    if-ne v0, v15, :cond_fd

    add-int/lit8 v11, v11, 0x1

    goto :goto_102

    :cond_fd
    const/4 v13, 0x3

    if-ne v0, v13, :cond_102

    add-int/lit8 v11, v11, -0x1

    .line 208
    :cond_102
    :goto_102
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 209
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    goto/16 :goto_41

    .line 211
    :cond_10b
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/Subtitle;
    :try_end_111
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b6 .. :try_end_111} :catch_70
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_111} :catch_6d

    return-object v0

    .line 215
    :goto_112
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error when reading input."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 213
    :goto_11a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to decode source"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

###### Class io.bidmachine.media3.extractor.text.ttml.TtmlParser.FrameAndTickRate (io.bidmachine.media3.extractor.text.ttml.TtmlParser$FrameAndTickRate)
.class public final Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;
.super Ljava/lang/Object;
.source "TtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameAndTickRate"
.end annotation


# instance fields
.field public final effectiveFrameRate:F

.field public final subFrameRate:I

.field public final tickRate:I


# direct methods
.method public constructor <init>(FII)V
    .registers 4

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    .line 905
    iput p2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    .line 906
    iput p3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.ttml.TtmlParser.TtsExtent (io.bidmachine.media3.extractor.text.ttml.TtmlParser$TtsExtent)
.class public final Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;
.super Ljava/lang/Object;
.source "TtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TtsExtent"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;->width:I

    .line 917
    iput p2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser$TtsExtent;->height:I

    return-void
.end method
