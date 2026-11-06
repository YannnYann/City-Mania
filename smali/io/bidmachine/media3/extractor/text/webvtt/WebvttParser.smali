###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttParser (io.bidmachine.media3.extractor.text.webvtt.WebvttParser)
.class public final Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;
.super Ljava/lang/Object;
.source "WebvttParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser;


# instance fields
.field public final cssParser:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;

.field public final parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 61
    new-instance v0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->cssParser:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;

    return-void
.end method

.method public static getNextEvent(Lio/bidmachine/media3/common/util/ParsableByteArray;)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_4
    if-ne v2, v0, :cond_28

    .line 121
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 122
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_4

    .line 125
    :cond_12
    const-string v4, "STYLE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v2, 0x2

    goto :goto_4

    .line 127
    :cond_1c
    const-string v4, "NOTE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_4

    :cond_26
    const/4 v2, 0x3

    goto :goto_4

    .line 133
    :cond_28
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v2
.end method

.method public static skipComment(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 2

    .line 138
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/2addr p3, p2

    invoke-virtual {v0, p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 77
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :try_start_10
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    :try_end_15
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_10 .. :try_end_15} :catch_72

    .line 86
    :goto_15
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_15

    .line 89
    :cond_22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    :cond_27
    :goto_27
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->getNextEvent(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result p3

    if-eqz p3, :cond_69

    const/4 v0, 0x1

    if-ne p3, v0, :cond_38

    .line 92
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->skipComment(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    goto :goto_27

    :cond_38
    const/4 v0, 0x2

    if-ne p3, v0, :cond_5a

    .line 94
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_52

    .line 97
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 98
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->cssParser:Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p3, v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCssParser;->parseBlock(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 95
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    const/4 v0, 0x3

    if-ne p3, v0, :cond_27

    .line 101
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;->parsableWebvttData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p3, p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/List;)Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object p3

    if-eqz p3, :cond_27

    .line 103
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 107
    :cond_69
    new-instance p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    .line 108
    invoke-static {p1, p4, p5}, Lio/bidmachine/media3/extractor/text/LegacySubtitleUtil;->toCuesWithTiming(Lio/bidmachine/media3/extractor/text/Subtitle;Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V

    return-void

    :catch_72
    move-exception p1

    .line 84
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
