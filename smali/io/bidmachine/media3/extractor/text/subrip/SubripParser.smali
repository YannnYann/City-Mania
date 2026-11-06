###### Class io.bidmachine.media3.extractor.text.subrip.SubripParser (io.bidmachine.media3.extractor.text.subrip.SubripParser)
.class public final Lio/bidmachine/media3/extractor/text/subrip/SubripParser;
.super Ljava/lang/Object;
.source "SubripParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser;


# static fields
.field public static final SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;


# instance fields
.field public final parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    .line 68
    const-string v0, "\\{\\\\.*?\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->tags:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method

.method private detectUtfCharset(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;
    .registers 2

    .line 195
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 196
    :cond_7
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p1
.end method

.method public static getFractionalPositionForAnchorType(I)F
    .registers 2

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const p0, 0x3f6b851f    # 0.92f

    return p0

    .line 309
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_12
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_15
    const p0, 0x3da3d70a    # 0.08f

    return p0
.end method

.method public static parseTimecode(Ljava/util/regex/Matcher;I)J
    .registers 8

    add-int/lit8 v0, p1, 0x1

    .line 283
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 284
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    goto :goto_13

    :cond_11
    const-wide/16 v0, 0x0

    :goto_13
    add-int/lit8 v2, p1, 0x2

    .line 286
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    .line 287
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    .line 288
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 290
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_49
    mul-long/2addr v0, v4

    return-wide v0
.end method


# virtual methods
.method public final buildCue(Landroid/text/Spanned;Ljava/lang/String;)Lio/bidmachine/media3/common/text/Cue;
    .registers 19

    move-object/from16 v0, p2

    .line 232
    new-instance v1, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v1

    if-nez v0, :cond_14

    .line 234
    invoke-virtual {v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object v0

    return-object v0

    .line 238
    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "{\\an1}"

    const-string v5, "{\\an2}"

    const-string v6, "{\\an3}"

    const-string v7, "{\\an4}"

    const-string v9, "{\\an5}"

    const-string v10, "{\\an6}"

    const-string v11, "{\\an7}"

    const-string v13, "{\\an8}"

    const-string v14, "{\\an9}"

    const/4 v4, 0x3

    const/4 v8, 0x4

    const/4 v15, 0x1

    const/4 v12, 0x2

    sparse-switch v2, :sswitch_data_120

    goto :goto_7b

    :sswitch_32
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v2, 0x5

    goto :goto_7c

    :sswitch_3a
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const/16 v2, 0x8

    goto :goto_7c

    :sswitch_43
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    move v2, v12

    goto :goto_7c

    :sswitch_4b
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    move v2, v8

    goto :goto_7c

    :sswitch_53
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v2, 0x7

    goto :goto_7c

    :sswitch_5b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    move v2, v15

    goto :goto_7c

    :sswitch_63
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    move v2, v4

    goto :goto_7c

    :sswitch_6b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v2, 0x6

    goto :goto_7c

    :sswitch_73
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v2, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 v2, -0x1

    :goto_7c
    if-eqz v2, :cond_91

    if-eq v2, v15, :cond_91

    if-eq v2, v12, :cond_91

    if-eq v2, v4, :cond_8d

    if-eq v2, v8, :cond_8d

    const/4 v8, 0x5

    if-eq v2, v8, :cond_8d

    .line 253
    invoke-virtual {v1, v15}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    goto :goto_95

    .line 247
    :cond_8d
    invoke-virtual {v1, v12}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    goto :goto_95

    :cond_91
    const/4 v2, 0x0

    .line 242
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 258
    :goto_95
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_146

    goto :goto_e6

    :sswitch_9d
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const/4 v0, 0x5

    goto :goto_e7

    :sswitch_a5
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const/4 v0, 0x4

    goto :goto_e7

    :sswitch_ad
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    move v0, v4

    goto :goto_e7

    :sswitch_b5
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const/16 v0, 0x8

    goto :goto_e7

    :sswitch_be
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const/4 v0, 0x7

    goto :goto_e7

    :sswitch_c6
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const/4 v0, 0x6

    goto :goto_e7

    :sswitch_ce
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    move v0, v12

    goto :goto_e7

    :sswitch_d6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    move v0, v15

    goto :goto_e7

    :sswitch_de
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const/4 v0, 0x0

    goto :goto_e7

    :cond_e6
    :goto_e6
    const/4 v0, -0x1

    :goto_e7
    if-eqz v0, :cond_fe

    if-eq v0, v15, :cond_fe

    if-eq v0, v12, :cond_fe

    if-eq v0, v4, :cond_f9

    const/4 v2, 0x4

    if-eq v0, v2, :cond_f9

    const/4 v8, 0x5

    if-eq v0, v8, :cond_f9

    .line 273
    invoke-virtual {v1, v15}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    goto :goto_101

    :cond_f9
    const/4 v2, 0x0

    .line 267
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    goto :goto_101

    .line 262
    :cond_fe
    invoke-virtual {v1, v12}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 277
    :goto_101
    invoke-virtual {v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->getPositionAnchor()I

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->getFractionalPositionForAnchorType(I)F

    move-result v0

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->getLineAnchor()I

    move-result v1

    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->getFractionalPositionForAnchorType(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_120
    .sparse-switch
        -0x28ddbde6 -> :sswitch_73
        -0x28ddbdc7 -> :sswitch_6b
        -0x28ddbda8 -> :sswitch_63
        -0x28ddbd89 -> :sswitch_5b
        -0x28ddbd6a -> :sswitch_53
        -0x28ddbd4b -> :sswitch_4b
        -0x28ddbd2c -> :sswitch_43
        -0x28ddbd0d -> :sswitch_3a
        -0x28ddbcee -> :sswitch_32
    .end sparse-switch

    :sswitch_data_146
    .sparse-switch
        -0x28ddbde6 -> :sswitch_de
        -0x28ddbdc7 -> :sswitch_d6
        -0x28ddbda8 -> :sswitch_ce
        -0x28ddbd89 -> :sswitch_c6
        -0x28ddbd6a -> :sswitch_be
        -0x28ddbd4b -> :sswitch_b5
        -0x28ddbd2c -> :sswitch_ad
        -0x28ddbd0d -> :sswitch_a5
        -0x28ddbcee -> :sswitch_9d
    .end sparse-switch
.end method

.method public getCueReplacementBehavior()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 104
    const-string v4, "SubripParser"

    iget-object v5, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int v6, v1, p3

    move-object/from16 v7, p1

    invoke-virtual {v5, v7, v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 105
    iget-object v5, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 106
    iget-object v1, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->detectUtfCharset(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 110
    iget-wide v5, v2, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_33

    iget-boolean v5, v2, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->outputAllCues:Z

    if-eqz v5, :cond_33

    .line 111
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    .line 114
    :goto_34
    iget-object v9, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_133

    .line 115
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_43

    goto :goto_34

    .line 122
    :cond_43
    :try_start_43
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_46} :catch_11c

    .line 129
    iget-object v9, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_55

    .line 131
    const-string v1, "Unexpected end"

    invoke-static {v4, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_133

    .line 137
    :cond_55
    sget-object v10, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 138
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_105

    const/4 v9, 0x1

    .line 139
    invoke-static {v10, v9}, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v13

    const/4 v9, 0x6

    .line 140
    invoke-static {v10, v9}, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v9

    .line 147
    iget-object v11, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    iget-object v11, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->tags:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v11, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v11, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    .line 150
    :goto_7c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a3

    .line 151
    iget-object v15, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_91

    .line 152
    iget-object v15, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    const-string v6, "<br>"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_91
    iget-object v6, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    iget-object v15, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0, v11, v15}, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->processLine(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v6, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7c

    .line 158
    :cond_a3
    iget-object v6, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    .line 161
    :goto_ad
    iget-object v11, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->tags:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v12, v11, :cond_cb

    .line 162
    iget-object v11, v0, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->tags:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 163
    const-string v15, "\\{\\\\an[1-9]\\}"

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c8

    :goto_c5
    move-wide/from16 p2, v7

    goto :goto_cd

    :cond_c8
    add-int/lit8 v12, v12, 0x1

    goto :goto_ad

    :cond_cb
    const/4 v11, 0x0

    goto :goto_c5

    .line 169
    :goto_cd
    iget-wide v7, v2, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    cmp-long v12, v7, p2

    if-eqz v12, :cond_ee

    cmp-long v7, v13, v7

    if-ltz v7, :cond_d8

    goto :goto_ee

    :cond_d8
    if-eqz v5, :cond_101

    .line 176
    new-instance v7, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    .line 178
    invoke-virtual {v0, v6, v11}, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->buildCue(Landroid/text/Spanned;Ljava/lang/String;)Lio/bidmachine/media3/common/text/Cue;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    sub-long v15, v9, v13

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    .line 176
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_101

    .line 170
    :cond_ee
    :goto_ee
    new-instance v7, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    .line 172
    invoke-virtual {v0, v6, v11}, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->buildCue(Landroid/text/Spanned;Ljava/lang/String;)Lio/bidmachine/media3/common/text/Cue;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    sub-long v15, v9, v13

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    .line 170
    invoke-interface {v3, v11}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_101
    :goto_101
    move-wide/from16 v7, p2

    goto/16 :goto_34

    :cond_105
    move-wide/from16 p2, v7

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping invalid timing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    :catch_11c
    move-wide/from16 p2, v7

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping invalid index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    :cond_133
    :goto_133
    if-eqz v5, :cond_149

    .line 184
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_139
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_149

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    .line 185
    invoke-interface {v3, v2}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_139

    :cond_149
    return-void
.end method

.method public final processLine(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    sget-object v1, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v1, 0x0

    .line 212
    :goto_10
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 213
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    sub-int/2addr v3, v1

    .line 216
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v4, v3, v2

    .line 217
    const-string v5, ""

    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    goto :goto_10

    .line 221
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
