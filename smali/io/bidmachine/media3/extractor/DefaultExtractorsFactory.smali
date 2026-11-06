###### Class io.bidmachine.media3.extractor.DefaultExtractorsFactory (io.bidmachine.media3.extractor.DefaultExtractorsFactory)
.class public final Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
    }
.end annotation


# static fields
.field public static final DEFAULT_EXTRACTOR_ORDER:[I

.field public static final FLAC_EXTENSION_LOADER:Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

.field public static final MIDI_EXTENSION_LOADER:Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;


# instance fields
.field public adtsFlags:I

.field public amrFlags:I

.field public codecsToParseWithinGopSampleDependencies:I

.field public constantBitrateSeekingAlwaysEnabled:Z

.field public constantBitrateSeekingEnabled:Z

.field public flacFlags:I

.field public fragmentedMp4Flags:I

.field public jpegFlags:I

.field public matroskaFlags:I

.field public mp3Flags:I

.field public mp4Flags:I

.field public subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

.field public textTrackTranscodingEnabled:Z

.field public tsFlags:I

.field public tsMode:I

.field public tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public tsTimestampSearchBytes:I


# direct methods
.method public static synthetic $r8$lambda$SrbxL-Z_OiWqu5x8sIKi-zlA8SE()Ljava/lang/reflect/Constructor;
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$yl0EjsHXdBxenNliMJrgyHtQxXc()Ljava/lang/reflect/Constructor;
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x15

    .line 110
    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 137
    new-instance v0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 139
    new-instance v0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    return-void

    :array_22
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 162
    iput v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    const v1, 0x1b8a0

    .line 163
    iput v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    .line 164
    new-instance v1, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v1}, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 165
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    return-void
.end method

.method public static getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lio/bidmachine/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 606
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "io.bidmachine.media3.decoder.flac.FlacLibrary"

    .line 608
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 609
    const-string v4, "isAvailable"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 610
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 612
    const-string v0, "io.bidmachine.media3.decoder.flac.FlacExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/bidmachine/media3/extractor/Extractor;

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :cond_35
    return-object v3
.end method

.method public static getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lio/bidmachine/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 592
    const-string v0, "io.bidmachine.media3.decoder.midi.MidiExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/bidmachine/media3/extractor/Extractor;

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addExtractorsForFileType(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/Extractor;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_174

    :pswitch_5
    goto :goto_59

    .line 580
    :pswitch_6
    new-instance p1, Lio/bidmachine/media3/extractor/avif/AvifExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/avif/AvifExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 574
    :pswitch_f
    iget p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_59

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_59

    .line 576
    new-instance p1, Lio/bidmachine/media3/extractor/heif/HeifExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/heif/HeifExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 571
    :pswitch_22
    new-instance p1, Lio/bidmachine/media3/extractor/bmp/BmpExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/bmp/BmpExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 568
    :pswitch_2b
    new-instance p1, Lio/bidmachine/media3/extractor/webp/WebpExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/webp/WebpExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 565
    :pswitch_34
    new-instance p1, Lio/bidmachine/media3/extractor/png/PngExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/png/PngExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 559
    :pswitch_3d
    new-instance p1, Lio/bidmachine/media3/extractor/avi/AviExtractor;

    .line 561
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p1, v0, v1}, Lio/bidmachine/media3/extractor/avi/AviExtractor;-><init>(ILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    .line 559
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 553
    :pswitch_4c
    sget-object p1, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Lio/bidmachine/media3/extractor/Extractor;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 555
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    :goto_59
    return-void

    .line 550
    :pswitch_5a
    new-instance p1, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;

    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->jpegFlags:I

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 547
    :pswitch_65
    new-instance p1, Lio/bidmachine/media3/extractor/wav/WavExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 534
    :pswitch_6e
    iget-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_78

    .line 535
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    .line 537
    :cond_78
    new-instance v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;

    iget v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    .line 540
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    xor-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    new-instance v4, Lio/bidmachine/media3/common/util/TimestampAdjuster;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Lio/bidmachine/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    iget p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->tsFlags:I

    iget-object v6, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v5, p1, v6}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    iget v6, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/extractor/ts/TsExtractor;-><init>(IILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;I)V

    .line 537
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 531
    :pswitch_9b
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PsExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ts/PsExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 528
    :pswitch_a4
    new-instance p1, Lio/bidmachine/media3/extractor/ogg/OggExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ogg/OggExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 508
    :pswitch_ad
    new-instance p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    iget v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->codecsToParseWithinGopSampleDependencies:I

    .line 512
    invoke-static {v3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->codecsToParseWithinGopSampleDependenciesAsFlags(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 514
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v3, :cond_c0

    move v3, v1

    goto :goto_c2

    :cond_c0
    const/16 v3, 0x20

    :goto_c2
    or-int/2addr v2, v3

    .line 516
    invoke-direct {p1, v0, v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 508
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance p1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I

    iget v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->codecsToParseWithinGopSampleDependencies:I

    .line 521
    invoke-static {v3}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->codecsToParseWithinGopSampleDependenciesAsFlags(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 523
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v3, :cond_db

    goto :goto_dd

    :cond_db
    const/16 v1, 0x10

    :goto_dd
    or-int/2addr v1, v2

    .line 525
    invoke-direct {p1, v0, v1}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 517
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 497
    :pswitch_e5
    new-instance p1, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;

    iget v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->mp3Flags:I

    .line 500
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    .line 503
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v3, :cond_f1

    goto :goto_f2

    :cond_f1
    move v0, v1

    :goto_f2
    or-int/2addr v0, v2

    .line 505
    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 497
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 488
    :pswitch_fa
    new-instance p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    .line 492
    iget-boolean v4, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v4, :cond_105

    move v0, v1

    :cond_105
    or-int/2addr v0, v3

    .line 494
    invoke-direct {p1, v2, v0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 488
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 485
    :pswitch_10d
    new-instance p1, Lio/bidmachine/media3/extractor/flv/FlvExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/flv/FlvExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 477
    :pswitch_116
    sget-object p1, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Lio/bidmachine/media3/extractor/Extractor;

    move-result-object p1

    if-eqz p1, :cond_12c

    .line 479
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 481
    :cond_12c
    new-instance p1, Lio/bidmachine/media3/extractor/flac/FlacExtractor;

    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 466
    :pswitch_137
    new-instance p1, Lio/bidmachine/media3/extractor/amr/AmrExtractor;

    iget v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->amrFlags:I

    .line 469
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    .line 472
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v3, :cond_143

    goto :goto_144

    :cond_143
    move v0, v1

    :goto_144
    or-int/2addr v0, v2

    .line 474
    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;-><init>(I)V

    .line 466
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 455
    :pswitch_14c
    new-instance p1, Lio/bidmachine/media3/extractor/ts/AdtsExtractor;

    iget v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->adtsFlags:I

    .line 458
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    .line 461
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v3, :cond_158

    goto :goto_159

    :cond_158
    move v0, v1

    :goto_159
    or-int/2addr v0, v2

    .line 463
    invoke-direct {p1, v0}, Lio/bidmachine/media3/extractor/ts/AdtsExtractor;-><init>(I)V

    .line 455
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 452
    :pswitch_161
    new-instance p1, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 449
    :pswitch_16a
    new-instance p1, Lio/bidmachine/media3/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ts/Ac3Extractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_16a
        :pswitch_161
        :pswitch_14c
        :pswitch_137
        :pswitch_116
        :pswitch_10d
        :pswitch_fa
        :pswitch_e5
        :pswitch_ad
        :pswitch_a4
        :pswitch_9b
        :pswitch_6e
        :pswitch_65
        :pswitch_5
        :pswitch_5a
        :pswitch_4c
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_22
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method public declared-synchronized createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    monitor-enter p0

    .line 417
    :try_start_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lio/bidmachine/media3/extractor/Extractor;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lio/bidmachine/media3/extractor/Extractor;"
        }
    .end annotation

    monitor-enter p0

    .line 423
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    invoke-static {p2}, Lio/bidmachine/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_16

    .line 429
    invoke-virtual {p0, p2, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_3f

    .line 432
    :cond_16
    :goto_16
    invoke-static {p1}, Lio/bidmachine/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v2, :cond_21

    if-eq p1, p2, :cond_21

    .line 435
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 438
    :cond_21
    array-length v2, v1

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_31

    aget v4, v1, v3

    if-eq v4, p2, :cond_2e

    if-eq v4, p1, :cond_2e

    .line 440
    invoke-virtual {p0, v4, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 443
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/extractor/Extractor;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_14

    monitor-exit p0

    return-object p1

    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_14

    throw p1
.end method

.method public declared-synchronized experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 397
    :try_start_1
    iput p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->codecsToParseWithinGopSampleDependencies:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 398
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized experimentalSetTextTrackTranscodingEnabled(Z)Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_1
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 381
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public bridge synthetic experimentalSetTextTrackTranscodingEnabled(Z)Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->experimentalSetTextTrackTranscodingEnabled(Z)Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setJpegExtractorFlags(I)Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 411
    :try_start_1
    iput p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->jpegFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 412
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 388
    :try_start_1
    iput-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 389
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public bridge synthetic setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.extractor.DefaultExtractorsFactory.ExtensionLoader (io.bidmachine.media3.extractor.DefaultExtractorsFactory$ExtensionLoader)
.class public final Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
    }
.end annotation


# instance fields
.field public final constructorSupplier:Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

.field public final extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public extractorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lio/bidmachine/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V
    .registers 3

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->constructorSupplier:Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

    .line 640
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public varargs getExtractor([Ljava/lang/Object;)Lio/bidmachine/media3/extractor/Extractor;
    .registers 4

    .line 646
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 651
    :cond_8
    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/Extractor;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    .line 653
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected error creating extractor"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lio/bidmachine/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 660
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 661
    iget-object v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    return-object v1

    :catchall_f
    move-exception v1

    goto :goto_2c

    .line 664
    :cond_11
    :try_start_11
    iget-object v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->constructorSupplier:Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_17} :catch_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_19
    .catchall {:try_start_11 .. :try_end_17} :catchall_f

    :try_start_17
    monitor-exit v0

    return-object v1

    :catch_19
    move-exception v1

    .line 669
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating extension"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 671
    :catch_22
    iget-object v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 672
    iget-object v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    monitor-exit v0

    return-object v1

    .line 673
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_f

    throw v1
.end method

###### Class io.bidmachine.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier (io.bidmachine.media3.extractor.DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier)
.class public interface abstract Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConstructorSupplier"
.end annotation


# virtual methods
.method public abstract getConstructor()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lio/bidmachine/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.extractor.DefaultExtractorsFactory$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.DefaultExtractorsFactory$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConstructor()Ljava/lang/reflect/Constructor;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->$r8$lambda$yl0EjsHXdBxenNliMJrgyHtQxXc()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.DefaultExtractorsFactory$$ExternalSyntheticLambda1 (io.bidmachine.media3.extractor.DefaultExtractorsFactory$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConstructor()Ljava/lang/reflect/Constructor;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->$r8$lambda$SrbxL-Z_OiWqu5x8sIKi-zlA8SE()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
