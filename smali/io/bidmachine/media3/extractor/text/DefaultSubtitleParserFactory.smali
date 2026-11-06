###### Class io.bidmachine.media3.extractor.text.DefaultSubtitleParserFactory (io.bidmachine.media3.extractor.text.DefaultSubtitleParserFactory)
.class public final Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;
.super Ljava/lang/Object;
.source "DefaultSubtitleParserFactory.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleParser;
    .registers 5

    .line 99
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_b5

    const/4 v1, -0x1

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_cc

    goto/16 :goto_73

    :sswitch_e
    const-string v2, "application/ttml+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_73

    :cond_18
    const/16 v1, 0x8

    goto/16 :goto_73

    :sswitch_1c
    const-string v2, "application/x-subrip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_73

    :cond_25
    const/4 v1, 0x7

    goto :goto_73

    :sswitch_27
    const-string v2, "application/vobsub"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_73

    :cond_30
    const/4 v1, 0x6

    goto :goto_73

    :sswitch_32
    const-string v2, "text/x-ssa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_73

    :cond_3b
    const/4 v1, 0x5

    goto :goto_73

    :sswitch_3d
    const-string v2, "application/x-quicktime-tx3g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto :goto_73

    :cond_46
    const/4 v1, 0x4

    goto :goto_73

    :sswitch_48
    const-string v2, "text/vtt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_73

    :cond_51
    const/4 v1, 0x3

    goto :goto_73

    :sswitch_53
    const-string v2, "application/x-mp4-vtt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_73

    :cond_5c
    const/4 v1, 0x2

    goto :goto_73

    :sswitch_5e
    const-string v2, "application/pgs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto :goto_73

    :cond_67
    const/4 v1, 0x1

    goto :goto_73

    :sswitch_69
    const-string v2, "application/dvbsubs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    goto :goto_73

    :cond_72
    const/4 v1, 0x0

    :goto_73
    packed-switch v1, :pswitch_data_f2

    goto :goto_b5

    .line 119
    :pswitch_77
    new-instance p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlParser;-><init>()V

    return-object p1

    .line 109
    :pswitch_7d
    new-instance p1, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/text/subrip/SubripParser;-><init>()V

    return-object p1

    .line 115
    :pswitch_83
    new-instance v0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;-><init>(Ljava/util/List;)V

    return-object v0

    .line 103
    :pswitch_8b
    new-instance v0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;-><init>(Ljava/util/List;)V

    return-object v0

    .line 111
    :pswitch_93
    new-instance v0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;-><init>(Ljava/util/List;)V

    return-object v0

    .line 105
    :pswitch_9b
    new-instance p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParser;-><init>()V

    return-object p1

    .line 107
    :pswitch_a1
    new-instance p1, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/text/webvtt/Mp4WebvttParser;-><init>()V

    return-object p1

    .line 113
    :pswitch_a7
    new-instance p1, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;-><init>()V

    return-object p1

    .line 117
    :pswitch_ad
    new-instance v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;-><init>(Ljava/util/List;)V

    return-object v0

    .line 124
    :cond_b5
    :goto_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported MIME type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_cc
    .sparse-switch
        -0x5091057c -> :sswitch_69
        -0x4a6813e3 -> :sswitch_5e
        -0x3d28a9ba -> :sswitch_53
        -0x3be2f26c -> :sswitch_48
        0x2935f49f -> :sswitch_3d
        0x310bebca -> :sswitch_32
        0x45059676 -> :sswitch_27
        0x63771bad -> :sswitch_1c
        0x64f8068a -> :sswitch_e
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_a7
        :pswitch_a1
        :pswitch_9b
        :pswitch_93
        :pswitch_8b
        :pswitch_83
        :pswitch_7d
        :pswitch_77
    .end packed-switch
.end method

.method public getCueReplacementBehavior(Lio/bidmachine/media3/common/Format;)I
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 69
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p1, :cond_7f

    const/4 v2, -0x1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_96

    goto/16 :goto_75

    :sswitch_10
    const-string v3, "application/ttml+xml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_75

    :cond_1a
    const/16 v2, 0x8

    goto/16 :goto_75

    :sswitch_1e
    const-string v3, "application/x-subrip"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_75

    :cond_27
    const/4 v2, 0x7

    goto :goto_75

    :sswitch_29
    const-string v3, "application/vobsub"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_75

    :cond_32
    const/4 v2, 0x6

    goto :goto_75

    :sswitch_34
    const-string v3, "text/x-ssa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_75

    :cond_3d
    const/4 v2, 0x5

    goto :goto_75

    :sswitch_3f
    const-string v3, "application/x-quicktime-tx3g"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_75

    :cond_48
    const/4 v2, 0x4

    goto :goto_75

    :sswitch_4a
    const-string v3, "text/vtt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto :goto_75

    :cond_53
    const/4 v2, 0x3

    goto :goto_75

    :sswitch_55
    const-string v3, "application/x-mp4-vtt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    goto :goto_75

    :cond_5e
    move v2, v0

    goto :goto_75

    :sswitch_60
    const-string v3, "application/pgs"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto :goto_75

    :cond_69
    move v2, v1

    goto :goto_75

    :sswitch_6b
    const-string v3, "application/dvbsubs"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto :goto_75

    :cond_74
    const/4 v2, 0x0

    :goto_75
    packed-switch v2, :pswitch_data_bc

    goto :goto_7f

    :pswitch_79
    return v1

    :pswitch_7a
    return v0

    :pswitch_7b
    return v1

    :pswitch_7c
    return v0

    :pswitch_7d
    return v1

    :pswitch_7e
    return v0

    .line 94
    :cond_7f
    :goto_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported MIME type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_96
    .sparse-switch
        -0x5091057c -> :sswitch_6b
        -0x4a6813e3 -> :sswitch_60
        -0x3d28a9ba -> :sswitch_55
        -0x3be2f26c -> :sswitch_4a
        0x2935f49f -> :sswitch_3f
        0x310bebca -> :sswitch_34
        0x45059676 -> :sswitch_29
        0x63771bad -> :sswitch_1e
        0x64f8068a -> :sswitch_10
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_79
    .end packed-switch
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)Z
    .registers 3

    .line 55
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 56
    const-string v0, "text/x-ssa"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "text/vtt"

    .line 57
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "application/x-mp4-vtt"

    .line 58
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "application/x-subrip"

    .line 59
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "application/x-quicktime-tx3g"

    .line 60
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "application/pgs"

    .line 61
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "application/vobsub"

    .line 62
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "application/dvbsubs"

    .line 63
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "application/ttml+xml"

    .line 64
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 p1, 0x0

    return p1

    :cond_4d
    :goto_4d
    const/4 p1, 0x1

    return p1
.end method
