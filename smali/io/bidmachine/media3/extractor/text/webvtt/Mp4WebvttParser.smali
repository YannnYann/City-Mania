###### Class io.bidmachine.media3.extractor.text.webvtt.Mp4WebvttParser (io.bidmachine.media3.extractor.text.webvtt.Mp4WebvttParser)
.class public final Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;
.super Ljava/lang/Object;
.source "Mp4WebvttParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser;


# instance fields
.field public final parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method

.method public static parseVttCueBox(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/common/text/Cue;
    .registers 9

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_3
    :goto_3
    if-lez p1, :cond_46

    const/16 v3, 0x8

    if-lt p1, v3, :cond_b

    const/4 v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x0

    .line 102
    :goto_c
    const-string v5, "Incomplete vtt cue box header found."

    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int/lit8 p1, p1, -0x8

    sub-int/2addr v4, v3

    .line 109
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    invoke-static {v3, v6, v4}, Lio/bidmachine/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr p1, v4

    const v4, 0x73747467

    if-ne v5, v4, :cond_36

    .line 113
    invoke-static {v3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    goto :goto_3

    :cond_36
    const v4, 0x7061796c

    if-ne v5, v4, :cond_3

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 116
    invoke-static {v0, v1, v3}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v1

    goto :goto_3

    :cond_46
    if-nez v1, :cond_4a

    .line 123
    const-string v1, ""

    :cond_4a
    if-eqz v2, :cond_55

    .line 126
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p0

    return-object p0

    .line 127
    :cond_55
    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueParser;->newCueForText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 12
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
    iget-object p4, p0, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/2addr p3, p2

    invoke-virtual {p4, p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 77
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :goto_10
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lez p1, :cond_4f

    .line 82
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 83
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/16 p2, 0x8

    if-lt p1, p2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    .line 82
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 86
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p2

    const p3, 0x76747463

    if-ne p2, p3, :cond_47

    .line 88
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/lit8 p1, p1, -0x8

    invoke-static {p2, p1}, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parseVttCueBox(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 91
    :cond_47
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/lit8 p1, p1, -0x8

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_10

    .line 94
    :cond_4f
    new-instance v0, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, v0}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
