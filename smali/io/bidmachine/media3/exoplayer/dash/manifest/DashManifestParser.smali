###### Class io.bidmachine.media3.exoplayer.dash.manifest.DashManifestParser (io.bidmachine.media3.exoplayer.dash.manifest.DashManifestParser)
.class public Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# static fields
.field public static final CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field public static final CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field public static final DOLBY_AC4_CHANNEL_CONFIGURATION_MAPPING:[I

.field public static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final MPEG_CHANNEL_CONFIGURATION_MAPPING:[I


# instance fields
.field public final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    const-string v0, "CC([1-4])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 79
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x13

    .line 92
    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->DOLBY_AC4_CHANNEL_CONFIGURATION_MAPPING:[I

    const/16 v0, 0x15

    .line 100
    new-array v0, v0, [I

    fill-array-data v0, :array_56

    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    return-void

    nop

    :array_2c
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_56
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 107
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 109
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static checkContentTypeConsistency(II)I
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    return p1

    :cond_4
    if-ne p1, v0, :cond_7

    return p0

    :cond_7
    if-ne p0, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1861
    :goto_c
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    return p0
.end method

.method public static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    .line 1838
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    return-object p0
.end method

.method public static fillInClearKeyInformation(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1770
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1771
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 1772
    sget-object v3, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v4, v2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v2, v2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 1774
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_24

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-nez v2, :cond_27

    goto :goto_52

    .line 1782
    :cond_27
    :goto_27
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1783
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 1784
    sget-object v3, Lio/bidmachine/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    iget-object v4, v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-nez v3, :cond_4f

    .line 1785
    new-instance v3, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    sget-object v4, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v5, v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v1, v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-direct {v3, v4, v2, v5, v1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_52
    :goto_52
    return-void
.end method

.method public static filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 1752
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_31

    .line 1753
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 1754
    invoke-virtual {v1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    .line 1755
    :goto_15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 1756
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->canReplace(Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1759
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2e

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_31
    return-void
.end method

.method public static getFinalAvailabilityTimeOffset(JJ)J
    .registers 7

    .line 0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-nez v2, :cond_a

    goto :goto_b

    :cond_a
    move-wide p0, p2

    :goto_b
    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, p0, p2

    if-nez p2, :cond_15

    return-wide v0

    :cond_15
    return-wide p0
.end method

.method public static getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1803
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1804
    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1805
    :cond_b
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1806
    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1807
    :cond_16
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_23

    .line 1810
    :cond_1d
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :goto_23
    return-object p0

    .line 1813
    :cond_24
    const-string v0, "application/mp4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 1814
    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1815
    const-string p1, "text/vtt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p0, "application/x-mp4-vtt"

    :cond_3a
    return-object p0

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1736
    invoke-static {p0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1f

    :cond_7
    const/4 v0, 0x1

    :cond_8
    :goto_8
    if-eqz v0, :cond_1f

    .line 1741
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1742
    invoke-static {p0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1744
    :cond_16
    invoke-static {p0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static parseCea608AccessibilityChannel(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1887
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 1888
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 1889
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_49

    .line 1891
    sget-object v3, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1892
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 p0, 0x1

    .line 1893
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1895
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4c
    const/4 p0, -0x1

    return p0
.end method

.method public static parseCea708AccessibilityChannel(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1903
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 1904
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 1905
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_49

    .line 1907
    sget-object v3, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1908
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 p0, 0x1

    .line 1909
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1911
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4c
    const/4 p0, -0x1

    return p0
.end method

.method public static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1961
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-wide p2

    .line 1965
    :cond_8
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1877
    const-string v0, "schemeIdUri"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1878
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1879
    const-string v3, "id"

    invoke-static {p0, v3, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1881
    :cond_15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1882
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1883
    new-instance p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    invoke-direct {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseDolbyAC4ChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 2094
    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 2096
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    goto :goto_26

    :cond_11
    const/16 v0, 0x10

    .line 2102
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-eqz v0, :cond_21

    .line 2105
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDolbyAc4ObjectBasedChannelConfiguration(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2108
    :cond_21
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDolbyAc4ChannelBasedChannelConfiguration(I)I

    move-result p0

    return p0

    :cond_26
    :goto_26
    const/4 p0, -0x1

    return p0
.end method

.method public static parseDolbyAc4ChannelBasedChannelConfiguration(I)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 2136
    :goto_2
    sget-object v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->DOLBY_AC4_CHANNEL_CONFIGURATION_MAPPING:[I

    array-length v3, v2

    if-ge v0, v3, :cond_12

    shr-int v3, p0, v0

    and-int/lit8 v3, v3, 0x1

    .line 2137
    aget v2, v2, v0

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    if-nez v1, :cond_16

    const/4 p0, -0x1

    return p0

    :cond_16
    return v1
.end method

.method public static parseDolbyAc4ObjectBasedChannelConfiguration(Ljava/lang/String;)I
    .registers 5

    .line 2112
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2113
    array-length v0, p0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    :cond_9
    const/16 v0, 0x2e

    .line 2118
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 2119
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_55

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "ac-4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_55

    :cond_34
    const/4 v0, 0x3

    .line 2123
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "03"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "04"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    return v1

    :cond_4f
    const/16 p0, 0x15

    return p0

    :cond_52
    const/16 p0, 0x12

    return p0

    :cond_55
    :goto_55
    return v1
.end method

.method public static parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2063
    const-string v3, "value"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, -0x1

    if-nez p0, :cond_d

    return v2

    .line 2067
    :cond_d
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_60

    :goto_1b
    move p0, v2

    goto :goto_53

    :sswitch_1d
    const-string v3, "fa01"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_1b

    :cond_26
    const/4 p0, 0x4

    goto :goto_53

    :sswitch_28
    const-string v3, "f801"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_1b

    :cond_31
    const/4 p0, 0x3

    goto :goto_53

    :sswitch_33
    const-string v3, "f800"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_1b

    :cond_3c
    move p0, v0

    goto :goto_53

    :sswitch_3e
    const-string v3, "a000"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto :goto_1b

    :cond_47
    move p0, v1

    goto :goto_53

    :sswitch_49
    const-string v3, "4000"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto :goto_1b

    :cond_52
    const/4 p0, 0x0

    :goto_53
    packed-switch p0, :pswitch_data_76

    return v2

    :pswitch_57
    const/16 p0, 0x8

    return p0

    :pswitch_5a
    const/4 p0, 0x6

    return p0

    :pswitch_5c
    const/4 p0, 0x5

    return p0

    :pswitch_5e
    return v0

    :pswitch_5f
    return v1

    :sswitch_data_60
    .sparse-switch
        0x185d7c -> :sswitch_49
        0x2cd22f -> :sswitch_3e
        0x2f3612 -> :sswitch_33
        0x2f3613 -> :sswitch_28
        0x2fcffc -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5e
        :pswitch_5c
        :pswitch_5a
        :pswitch_57
    .end packed-switch
.end method

.method public static parseDtsChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 3

    .line 2030
    const-string v0, "value"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_e

    const/16 v0, 0x21

    if-ge p0, v0, :cond_e

    return p0

    :cond_e
    return v1
.end method

.method public static parseDtsxChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 3

    const/4 v0, 0x0

    .line 2044
    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_b

    return v0

    :cond_b
    const/16 v1, 0x10

    .line 2048
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    if-nez p0, :cond_18

    return v0

    :cond_18
    return p0
.end method

.method public static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 5

    const/4 v0, 0x0

    .line 1951
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-wide p2

    .line 1955
    :cond_8
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1919
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 1920
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 1921
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 1922
    const-string v3, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "JOC"

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 1923
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    :cond_21
    const-string v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 1924
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "ec+3"

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 1925
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1926
    :cond_33
    const-string p0, "audio/eac3-joc"

    return-object p0

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1929
    :cond_39
    const-string p0, "audio/eac3"

    return-object p0
.end method

.method public static parseFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F
    .registers 4

    const/4 v0, 0x0

    .line 1994
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return p2

    .line 1995
    :cond_8
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .registers 4

    const/4 v0, 0x0

    .line 1934
    const-string v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 1936
    sget-object v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1937
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 p1, 0x1

    .line 1938
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 1939
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1940
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    int-to-float p1, p1

    .line 1941
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1

    :cond_31
    int-to-float p0, p1

    return p0

    :cond_33
    return p1
.end method

.method public static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    .line 1984
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return p2

    .line 1985
    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseLastSegmentNumberSupplementalProperty(Ljava/util/List;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2144
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 2145
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 2146
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "http://dashif.org/guidelines/last-segment-number"

    invoke-static {v3, v2}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2148
    iget-object p0, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 5

    const/4 v0, 0x0

    .line 1989
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-wide p2

    .line 1990
    :cond_8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseMpegChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 4

    .line 2013
    const-string v0, "value"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_11

    .line 2014
    sget-object v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    array-length v2, v0

    if-ge p0, v2, :cond_11

    .line 2015
    aget p0, v0, p0

    return p0

    :cond_11
    return v1
.end method

.method public static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1999
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-object p2

    :cond_8
    return-object p0
.end method

.method public static parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1971
    const-string v0, ""

    .line 1973
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1974
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    .line 1975
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1977
    :cond_11
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1979
    :goto_14
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0
.end method


# virtual methods
.method public final addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJIJ)J"
        }
    .end annotation

    if-ltz p6, :cond_5

    add-int/lit8 p6, p6, 0x1

    goto :goto_b

    :cond_5
    sub-long/2addr p7, p2

    .line 1369
    invoke-static {p7, p8, p4, p5}, Lio/bidmachine/media3/common/util/Util;->ceilDivide(JJ)J

    move-result-wide p6

    long-to-int p6, p6

    :goto_b
    const/4 p7, 0x0

    :goto_c
    if-ge p7, p6, :cond_19

    .line 1371
    invoke-virtual {p0, p2, p3, p4, p5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildSegmentTimelineElement(JJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    move-result-object p8

    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p2, p4

    add-int/lit8 p7, p7, 0x1

    goto :goto_c

    :cond_19
    return-wide p2
.end method

.method public buildAdaptationSet(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .line 563
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;-><init>(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[B)Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;
    .registers 16

    .line 1303
    new-instance v0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move-wide v3, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v0
.end method

.method public buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;
    .registers 14

    .line 1192
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)V

    return-object v0
.end method

.method public buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/common/Format;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Lio/bidmachine/media3/common/Format;"
        }
    .end annotation

    move-object/from16 v0, p10

    move-object/from16 v1, p13

    move-object/from16 v2, p15

    move-object/from16 v3, p12

    .line 844
    invoke-static {p2, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 845
    const-string v5, "audio/eac3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 846
    invoke-static/range {p16 .. p16}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 847
    const-string v5, "audio/eac3-joc"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 848
    const-string v3, "ec+3"

    .line 851
    :cond_22
    invoke-static {v3, v1}, Lio/bidmachine/media3/common/MimeTypes;->isDolbyVisionCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    if-eqz v1, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object v1, v3

    .line 853
    :goto_2c
    const-string v4, "video/dolby-vision"

    move-object v3, v1

    .line 855
    :cond_2f
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSelectionFlagsFromRoleDescriptors(Ljava/util/List;)I

    move-result v1

    .line 856
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseRoleFlagsFromRoleDescriptors(Ljava/util/List;)I

    move-result v0

    move-object/from16 v5, p11

    .line 857
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseRoleFlagsFromAccessibilityDescriptors(Ljava/util/List;)I

    move-result v6

    or-int/2addr v0, v6

    .line 858
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseRoleFlagsFromProperties(Ljava/util/List;)I

    move-result v6

    or-int/2addr v0, v6

    move-object/from16 v6, p16

    .line 859
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseRoleFlagsFromProperties(Ljava/util/List;)I

    move-result v6

    or-int/2addr v0, v6

    .line 860
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseTileCountFromProperties(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v2

    .line 862
    new-instance v6, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v6}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 864
    invoke-virtual {v6, p1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 865
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 866
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 867
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 868
    invoke-virtual {p1, p8}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 869
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 870
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    move-object/from16 p2, p9

    .line 871
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz v2, :cond_81

    .line 872
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_82

    :cond_81
    move v0, p2

    :goto_82
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setTileCountHorizontal(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    if-eqz v2, :cond_91

    .line 873
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_92

    :cond_91
    move v0, p2

    :goto_92
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setTileCountVertical(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 875
    invoke-static {v4}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 876
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, p5}, Lio/bidmachine/media3/common/Format$Builder;->setFrameRate(F)Lio/bidmachine/media3/common/Format$Builder;

    goto :goto_e6

    .line 877
    :cond_a8
    invoke-static {v4}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_b6

    .line 878
    invoke-virtual {p1, p6}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, p7}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    goto :goto_e6

    .line 879
    :cond_b6
    invoke-static {v4}, Lio/bidmachine/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_d9

    .line 881
    const-string p3, "application/cea-608"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c9

    .line 882
    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseCea608AccessibilityChannel(Ljava/util/List;)I

    move-result p2

    goto :goto_d5

    .line 883
    :cond_c9
    const-string p3, "application/cea-708"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d5

    .line 884
    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseCea708AccessibilityChannel(Ljava/util/List;)I

    move-result p2

    .line 886
    :cond_d5
    :goto_d5
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setAccessibilityChannel(I)Lio/bidmachine/media3/common/Format$Builder;

    goto :goto_e6

    .line 887
    :cond_d9
    invoke-static {v4}, Lio/bidmachine/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e6

    .line 888
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 891
    :cond_e6
    :goto_e6
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public buildMediaPresentationDescription(JJJZJJJJLio/bidmachine/media3/exoplayer/dash/manifest/ProgramInformation;Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/ProgramInformation;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Period;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;"
        }
    .end annotation

    .line 260
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;-><init>(JJJZJJJJLio/bidmachine/media3/exoplayer/dash/manifest/ProgramInformation;Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0
.end method

.method public buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ")",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Period;"
        }
    .end annotation

    .line 396
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;)V

    return-object v0
.end method

.method public buildRangedUri(Ljava/lang/String;JJ)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 12

    .line 1416
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public buildRepresentation(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Label;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;"
        }
    .end annotation

    .line 901
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    if-eqz p2, :cond_12

    .line 902
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 903
    invoke-virtual {v1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    goto :goto_17

    :cond_12
    move-object/from16 v0, p3

    .line 905
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    .line 907
    :goto_17
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    if-nez v0, :cond_1d

    move-object/from16 v0, p4

    .line 911
    :cond_1d
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    move-object/from16 v3, p5

    .line 912
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 913
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    .line 914
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->fillInClearKeyInformation(Ljava/util/ArrayList;)V

    .line 915
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V

    .line 916
    new-instance v3, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {v3, v0, v2}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    .line 918
    :cond_38
    iget-object v9, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    .line 919
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 920
    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    .line 922
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v6

    iget-object v7, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrls:Lcom/google/common/collect/ImmutableList;

    iget-object v8, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;

    iget-object v10, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->essentialProperties:Ljava/util/List;

    iget-object v11, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->supplementalProperties:Ljava/util/List;

    const/4 v12, 0x0

    .line 920
    invoke-static/range {v4 .. v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->newInstance(JLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    move-result-object p1

    return-object p1
.end method

.method public buildSegmentList(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            ">;JJ)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;"
        }
    .end annotation

    .line 1045
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    .line 1054
    invoke-static/range {p14 .. p15}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v14

    .line 1055
    invoke-static/range {p16 .. p17}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v16

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v17}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)V

    return-object v0
.end method

.method public buildSegmentTemplate(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJJLjava/util/List;JLio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;JJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJJ",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;",
            "JJ)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .line 1133
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    .line 1144
    invoke-static/range {p17 .. p18}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v17

    .line 1145
    invoke-static/range {p19 .. p20}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v19

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-wide/from16 v13, p13

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    invoke-direct/range {v0 .. v20}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJJLjava/util/List;JLio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;JJ)V

    return-object v0
.end method

.method public buildSegmentTimelineElement(JJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;
    .registers 6

    .line 1378
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method public buildSingleSegmentBase(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;
    .registers 20

    .line 971
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJ)V

    return-object v0
.end method

.method public buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;
    .registers 4

    .line 283
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isDvbProfileDeclared([Ljava/lang/String;)Z
    .registers 7

    .line 2169
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    .line 2170
    const-string v4, "urn:dvb:dash:profile:dvb-dash:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    return v1
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 121
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_24

    .line 123
    const-string p2, "MPD"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 128
    invoke-virtual {p0, v1, p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1

    :catch_22
    move-exception p1

    goto :goto_2b

    .line 124
    :cond_24
    const-string p1, "inputStream does not contain a valid media presentation description"

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_2b} :catch_22

    .line 130
    :goto_2b
    invoke-static {v0, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method public parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;JJJJJZ)Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;
    .registers 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;",
            "JJJJJZ)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 412
    const-string v2, "id"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v30

    .line 413
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    .line 415
    const-string v3, "mimeType"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    const-string v5, "codecs"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 417
    const-string v6, "scte214:supplementalCodecs"

    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 418
    const-string v7, "scte214:supplementalProfiles"

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 419
    const-string v8, "width"

    const/4 v9, -0x1

    invoke-static {v1, v8, v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 420
    const-string v10, "height"

    invoke-static {v1, v10, v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    const/high16 v11, -0x40800000    # -1.0f

    .line 421
    invoke-static {v1, v11}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v11

    .line 423
    const-string v12, "audioSamplingRate"

    invoke-static {v1, v12, v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 424
    const-string v13, "lang"

    invoke-interface {v1, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 425
    const-string v15, "label"

    invoke-interface {v1, v4, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 426
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 428
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move/from16 v17, v2

    .line 429
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v15

    .line 430
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v14

    .line 431
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 432
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v2

    .line 433
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v3

    .line 434
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v3

    .line 435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v33, 0x0

    move-wide/from16 v25, p8

    move-object/from16 v20, v7

    move/from16 v24, v8

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v8, v17

    move-object/from16 v10, v19

    move/from16 v34, v33

    const/4 v11, -0x1

    const/16 v35, 0x0

    move-object/from16 v17, p3

    move-object/from16 v19, v6

    move-wide/from16 v6, p6

    .line 439
    :goto_a2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move/from16 p3, v11

    .line 440
    const-string v11, "BaseURL"

    invoke-static {v1, v11}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e5

    if-nez v34, :cond_b7

    .line 443
    invoke-virtual {v0, v1, v6, v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v6

    const/16 v34, 0x1

    :cond_b7
    move-object/from16 v11, p2

    move-wide/from16 p6, v6

    move/from16 v6, p14

    .line 446
    invoke-virtual {v0, v1, v11, v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 p9, v18

    move-object/from16 v18, v9

    move-object/from16 v9, p9

    move/from16 v11, p3

    move-wide/from16 v6, p6

    move-object/from16 v42, v3

    move-object/from16 v39, v4

    move-object/from16 v37, v13

    move-object/from16 v16, v15

    move-object/from16 v4, v17

    move-object/from16 p9, v23

    const/16 v36, 0x0

    move-object v3, v2

    move v15, v12

    move-object/from16 v17, v14

    move-object/from16 v2, v21

    :goto_e2
    move-object v14, v5

    goto/16 :goto_363

    :cond_e5
    move-object/from16 v11, p2

    move-wide/from16 v36, v6

    move/from16 v6, p14

    .line 447
    const-string v7, "ContentProtection"

    invoke-static {v1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_129

    .line 448
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v7

    move-object/from16 v29, v3

    .line 449
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_101

    .line 450
    move-object/from16 v35, v3

    check-cast v35, Ljava/lang/String;

    .line 452
    :cond_101
    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_10a

    .line 453
    check-cast v3, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    move-object/from16 p9, v18

    move-object/from16 v18, v9

    move-object/from16 v9, p9

    move/from16 v11, p3

    move-object v3, v2

    move-object/from16 v39, v4

    move-object/from16 v16, v15

    move-object/from16 v4, v17

    move-object/from16 v2, v21

    move-object/from16 p9, v23

    move-object/from16 v42, v29

    move-wide/from16 v6, v36

    const/16 v36, 0x0

    move v15, v12

    move-object/from16 v37, v13

    move-object/from16 v17, v14

    goto :goto_e2

    :cond_129
    move-object/from16 v29, v3

    .line 455
    const-string v3, "ContentComponent"

    invoke-static {v1, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_166

    const/4 v3, 0x0

    .line 456
    invoke-interface {v1, v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 457
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v10

    invoke-static {v8, v10}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v8

    move-object/from16 p9, v18

    move-object/from16 v18, v9

    move-object/from16 v9, p9

    move/from16 v11, p3

    move-object/from16 v39, v4

    move-object v10, v7

    :goto_14f
    move-object/from16 v16, v15

    move-object/from16 v4, v17

    move-object/from16 p9, v23

    move-object/from16 v42, v29

    move-wide/from16 v6, v36

    move-object/from16 v36, v3

    move v15, v12

    move-object/from16 v37, v13

    move-object/from16 v17, v14

    move-object v3, v2

    move-object v14, v5

    move-object/from16 v2, v21

    goto/16 :goto_363

    :cond_166
    const/4 v3, 0x0

    .line 458
    const-string v7, "Role"

    invoke-static {v1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_19d

    .line 459
    invoke-static {v1, v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_176
    move-object/from16 p9, v18

    move-object/from16 v18, v9

    move-object/from16 v9, p9

    move-object/from16 v39, v4

    move-object/from16 v16, v15

    move-object/from16 v4, v17

    move-object/from16 p9, v23

    move-object/from16 v42, v29

    move/from16 v23, p3

    move v15, v12

    move-object/from16 v17, v14

    move-object v14, v5

    move-wide/from16 v5, v25

    move/from16 v25, v8

    move-wide/from16 v7, v36

    move-object/from16 v36, v3

    move-object/from16 v37, v13

    move-object v3, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v10

    goto/16 :goto_35c

    .line 460
    :cond_19d
    const-string v7, "AudioChannelConfiguration"

    invoke-static {v1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    .line 461
    invoke-virtual {v0, v1, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    move-object/from16 p9, v18

    move-object/from16 v18, v9

    move-object/from16 v9, p9

    move-object/from16 v39, v4

    move v11, v7

    goto :goto_14f

    .line 462
    :cond_1b3
    const-string v7, "Accessibility"

    invoke-static {v1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1c3

    .line 463
    invoke-static {v1, v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    .line 464
    :cond_1c3
    const-string v7, "EssentialProperty"

    invoke-static {v1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1d3

    .line 465
    invoke-static {v1, v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    .line 466
    :cond_1d3
    const-string v7, "SupplementalProperty"

    invoke-static {v1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1e3

    .line 467
    invoke-static {v1, v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    .line 468
    :cond_1e3
    const-string v7, "Representation"

    invoke-static {v1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_283

    .line 472
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    move-object/from16 v38, v18

    move-object/from16 v41, v23

    move-object/from16 v42, v29

    move-object/from16 v18, v17

    move-object/from16 v17, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v8

    move/from16 v8, v24

    move-wide/from16 v23, v36

    move-object/from16 v36, v3

    if-nez v7, :cond_224

    move-object/from16 v3, v42

    move/from16 v11, p3

    move-object/from16 v39, v4

    move-object/from16 v16, v9

    move-object/from16 v7, v20

    move-object/from16 v40, v21

    move-object/from16 v4, v22

    move/from16 v9, v27

    move-wide/from16 v21, p4

    move/from16 v29, v6

    move-object/from16 v6, v19

    move-wide/from16 v19, p10

    move-object/from16 v37, v13

    :goto_21e
    move-object v13, v10

    move/from16 v10, v28

    move-wide/from16 v27, p12

    goto :goto_23e

    :cond_224
    move-object v3, v11

    move-object/from16 v39, v4

    move-object/from16 v16, v9

    move-object/from16 v7, v20

    move-object/from16 v40, v21

    move-object/from16 v4, v22

    move/from16 v9, v27

    move-wide/from16 v21, p4

    move/from16 v29, v6

    move-object/from16 v6, v19

    move-wide/from16 v19, p10

    move-object/from16 v37, v13

    move/from16 v11, p3

    goto :goto_21e

    .line 470
    :goto_23e
    invoke-virtual/range {v1 .. v29}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;JJJJJZ)Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;

    move-result-object v3

    move-object/from16 v22, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v27, v9

    move/from16 v28, v10

    move-object/from16 v21, v13

    move-object/from16 v13, v17

    move-object/from16 v4, v18

    move-object/from16 v17, v14

    move-object/from16 v18, v16

    move-object v14, v5

    move-object/from16 v16, v15

    move-wide/from16 v5, v25

    move v15, v12

    move-wide/from16 v43, v23

    move/from16 v24, v8

    move/from16 v23, v11

    move-wide/from16 v7, v43

    .line 494
    iget-object v9, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lio/bidmachine/media3/common/Format;

    iget-object v9, v9, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 496
    invoke-static {v9}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v9

    .line 495
    invoke-static {v0, v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v0

    move-object/from16 v9, v41

    .line 497
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    move-wide v6, v7

    move-object/from16 p9, v9

    move-object v3, v13

    move-object/from16 v10, v21

    :goto_27c
    move-object/from16 v9, v38

    move-object/from16 v2, v40

    move v8, v0

    goto/16 :goto_363

    :cond_283
    move-object v6, v1

    move-object v1, v0

    move v0, v8

    move-wide/from16 v7, v36

    move-object/from16 v37, v13

    move-object v13, v2

    move-object v2, v6

    move-object/from16 v36, v3

    move-object/from16 v39, v4

    move-object/from16 v16, v15

    move-object/from16 v4, v17

    move-object/from16 v38, v18

    move-object/from16 v40, v21

    move-object/from16 v42, v29

    move-object/from16 v18, v9

    move-object/from16 v21, v10

    move v15, v12

    move-object/from16 v17, v14

    move-object/from16 v9, v23

    move/from16 v23, p3

    move-object v14, v5

    move-wide/from16 v5, v25

    .line 498
    const-string v3, "SegmentBase"

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c4

    .line 499
    move-object v3, v4

    check-cast v3, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v3

    move-object v1, v2

    move-object v4, v3

    move-wide/from16 v25, v5

    move-wide v6, v7

    move-object/from16 p9, v9

    move-object v3, v13

    move-object/from16 v10, v21

    move/from16 v11, v23

    goto :goto_27c

    .line 500
    :cond_2c4
    const-string v3, "SegmentList"

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f7

    move-object/from16 v41, v9

    .line 502
    invoke-virtual {v1, v2, v5, v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    .line 503
    move-object v2, v4

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    move-wide/from16 v5, p4

    move-wide/from16 v3, p10

    move-wide/from16 v11, p12

    move/from16 v25, v0

    move-object v0, v1

    move-object/from16 p9, v41

    move-object/from16 v1, p1

    .line 504
    invoke-virtual/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    move-result-object v2

    move-object v4, v2

    move-wide v6, v7

    move-object v3, v13

    move/from16 v11, v23

    move/from16 v8, v25

    move-object/from16 v2, v40

    move-wide/from16 v25, v9

    move-object/from16 v10, v21

    move-object/from16 v9, v38

    goto/16 :goto_363

    :cond_2f7
    move/from16 v25, v0

    move-object v0, v1

    move-object v1, v2

    move-object/from16 p9, v9

    .line 512
    const-string v2, "SegmentTemplate"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_328

    .line 514
    invoke-virtual {v0, v1, v5, v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v10

    .line 515
    move-object v2, v4

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    move-wide/from16 v4, p10

    move-wide v8, v7

    move-object v3, v13

    move-wide/from16 v6, p4

    move-wide/from16 v12, p12

    .line 516
    invoke-virtual/range {v0 .. v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v2

    move-wide v7, v8

    move-object v4, v2

    move-wide v6, v7

    move/from16 v8, v25

    move-object/from16 v9, v38

    move-object/from16 v2, v40

    move-wide/from16 v25, v10

    :goto_323
    move-object/from16 v10, v21

    move/from16 v11, v23

    goto :goto_363

    :cond_328
    move-object v3, v13

    .line 525
    const-string v0, "InbandEventStream"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33d

    .line 526
    invoke-static {v1, v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v2, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v38

    goto :goto_35c

    :cond_33d
    move-object/from16 v2, v40

    .line 527
    const-string v0, "Label"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_351

    .line 528
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLabel(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/common/Label;

    move-result-object v0

    move-object/from16 v9, v38

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35c

    :cond_351
    move-object/from16 v9, v38

    .line 529
    invoke-static {v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_35c

    .line 530
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_35c
    :goto_35c
    move-wide v10, v7

    move/from16 v8, v25

    move-wide/from16 v25, v5

    move-wide v6, v10

    goto :goto_323

    .line 532
    :goto_363
    const-string v0, "AdaptationSet"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3bb

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v1, v33

    .line 536
    :goto_376
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3a8

    move-object/from16 v5, p9

    .line 539
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;

    move-object/from16 p1, p0

    move-object/from16 p7, v2

    move-object/from16 p2, v4

    move-object/from16 p4, v9

    move-object/from16 p3, v32

    move-object/from16 p5, v35

    move-object/from16 p6, v39

    .line 538
    invoke-virtual/range {p1 .. p7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildRepresentation(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    move-result-object v2

    move-object/from16 v9, p3

    move-object/from16 v38, p4

    move-object/from16 v21, p7

    .line 537
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v32, v9

    move-object/from16 v2, v21

    move-object/from16 v9, v38

    goto :goto_376

    :cond_3a8
    move-object/from16 p1, p0

    move-object/from16 p5, v0

    move-object/from16 p8, v3

    move/from16 p4, v8

    move-object/from16 p6, v16

    move-object/from16 p7, v18

    move-wide/from16 p2, v30

    .line 547
    invoke-virtual/range {p1 .. p8}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildAdaptationSet(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    move-result-object v0

    return-object v0

    :cond_3bb
    move-object/from16 v0, v18

    move-object/from16 v18, v9

    move-object v9, v0

    move-object/from16 v0, p0

    move-object/from16 v23, p9

    move-object/from16 v21, v2

    move-object v2, v3

    move-object v5, v14

    move v12, v15

    move-object/from16 v15, v16

    move-object/from16 v14, v17

    move-object/from16 v13, v37

    move-object/from16 v3, v42

    move-object/from16 v17, v4

    move-object/from16 v4, v39

    goto/16 :goto_a2
.end method

.method public parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1525
    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1527
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9c

    :goto_12
    move v0, v1

    goto/16 :goto_6c

    :sswitch_15
    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v0, 0x7

    goto :goto_6c

    :sswitch_20
    const-string v2, "tag:dts.com,2018:uhd:audio_channel_configuration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_12

    :cond_29
    const/4 v0, 0x6

    goto :goto_6c

    :sswitch_2b
    const-string v2, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_12

    :cond_34
    const/4 v0, 0x5

    goto :goto_6c

    :sswitch_36
    const-string v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_12

    :cond_3f
    const/4 v0, 0x4

    goto :goto_6c

    :sswitch_41
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_12

    :cond_4a
    const/4 v0, 0x3

    goto :goto_6c

    :sswitch_4c
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_12

    :cond_55
    const/4 v0, 0x2

    goto :goto_6c

    :sswitch_57
    const-string v2, "tag:dolby.com,2015:dash:audio_channel_configuration:2015"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_12

    :cond_60
    const/4 v0, 0x1

    goto :goto_6c

    :sswitch_62
    const-string v2, "urn:dts:dash:audio_channel_configuration:2012"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_12

    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    packed-switch v0, :pswitch_data_be

    goto :goto_8f

    .line 1539
    :pswitch_70
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDtsxChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    goto :goto_8f

    .line 1532
    :pswitch_75
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseMpegChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    goto :goto_8f

    .line 1543
    :pswitch_7a
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    goto :goto_8f

    .line 1529
    :pswitch_7f
    const-string p2, "value"

    invoke-static {p1, p2, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    goto :goto_8f

    .line 1546
    :pswitch_86
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDolbyAC4ChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    goto :goto_8f

    .line 1536
    :pswitch_8b
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDtsChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    .line 1553
    :cond_8f
    :goto_8f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1554
    const-string p2, "AudioChannelConfiguration"

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8f

    return v1

    nop

    :sswitch_data_9c
    .sparse-switch
        -0x7ee09c90 -> :sswitch_62
        -0x7ad5b1c4 -> :sswitch_57
        -0x50a2db6e -> :sswitch_4c
        -0x43d6a909 -> :sswitch_41
        -0x3aced4cf -> :sswitch_36
        -0x4b58cf3 -> :sswitch_2b
        0x129b7989 -> :sswitch_20
        0x79657164 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_86
        :pswitch_7f
        :pswitch_7a
        :pswitch_75
        :pswitch_8b
        :pswitch_70
        :pswitch_7a
    .end packed-switch
.end method

.method public parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J
    .registers 6

    const/4 v0, 0x0

    .line 1511
    const-string v1, "availabilityTimeOffset"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    return-wide p2

    .line 1515
    :cond_a
    const-string p2, "INF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 1518
    :cond_18
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const p2, 0x49742400    # 1000000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method public parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;Z)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1468
    const-string v0, "dvb:priority"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 1471
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_15

    :cond_f
    if-eqz p3, :cond_13

    move v0, v2

    goto :goto_15

    :cond_13
    const/high16 v0, -0x80000000

    .line 1473
    :goto_15
    const-string v3, "dvb:weight"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1474
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1475
    :cond_21
    const-string v3, "serviceLocation"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1476
    const-string v3, "BaseURL"

    invoke-static {p1, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1477
    invoke-static {p1}, Lio/bidmachine/media3/common/util/UriUtil;->isAbsolute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    if-nez v1, :cond_36

    move-object v1, p1

    .line 1481
    :cond_36
    new-instance p2, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    invoke-direct {p2, p1, v1, v0, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    filled-new-array {p2}, [Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 1484
    :cond_44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1485
    :goto_4a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_74

    .line 1486
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    .line 1487
    iget-object v6, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-static {v6, p1}, Lio/bidmachine/media3/common/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_60

    move-object v7, v6

    goto :goto_61

    :cond_60
    move-object v7, v1

    :goto_61
    if-eqz p3, :cond_69

    .line 1491
    iget v0, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 1492
    iget v2, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->weight:I

    .line 1493
    iget-object v7, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 1495
    :cond_69
    new-instance v5, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    invoke-direct {v5, v6, v7, v0, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    :cond_74
    return-object v3
.end method

.method public parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 603
    const-string v1, "schemeIdUri"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    const-string v3, "MpdParser"

    const/4 v4, 0x0

    if-eqz v1, :cond_99

    .line 605
    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_132

    goto :goto_48

    :sswitch_1d
    const-string v6, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_48

    :cond_26
    const/4 v5, 0x3

    goto :goto_48

    :sswitch_28
    const-string v6, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_48

    :cond_31
    const/4 v5, 0x2

    goto :goto_48

    :sswitch_33
    const-string v6, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_48

    :cond_3c
    move v5, v0

    goto :goto_48

    :sswitch_3e
    const-string v6, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_48

    :cond_47
    move v5, v4

    :goto_48
    packed-switch v5, :pswitch_data_144

    goto :goto_99

    .line 607
    :pswitch_4c
    const-string v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    const-string v5, "default_KID"

    invoke-static {p1, v5}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->getAttributeValueIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 609
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_85

    const-string v6, "00000000-0000-0000-0000-000000000000"

    .line 610
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    .line 611
    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 612
    array-length v6, v5

    new-array v6, v6, [Ljava/util/UUID;

    move v7, v4

    .line 613
    :goto_70
    array-length v8, v5

    if-ge v7, v8, :cond_7d

    .line 614
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v0

    goto :goto_70

    .line 616
    :cond_7d
    sget-object v0, Lio/bidmachine/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-static {v0, v6, v2}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v5

    move-object v6, v2

    goto :goto_9c

    .line 619
    :cond_85
    const-string v0, "Ignoring <ContentProtection> with schemeIdUri=\"urn:mpeg:dash:mp4protection:2011\" (ClearKey) due to missing required default_KID attribute."

    invoke-static {v3, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    move-object v5, v0

    :goto_8c
    move-object v6, v5

    goto :goto_9c

    .line 629
    :pswitch_8e
    sget-object v0, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    :goto_90
    move-object v1, v2

    :goto_91
    move-object v5, v1

    goto :goto_8c

    .line 626
    :pswitch_93
    sget-object v0, Lio/bidmachine/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    goto :goto_90

    .line 632
    :pswitch_96
    sget-object v0, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    goto :goto_90

    :cond_99
    :goto_99
    move-object v0, v2

    move-object v1, v0

    goto :goto_91

    .line 640
    :cond_9c
    :goto_9c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 641
    const-string v7, "clearkey:Laurl"

    invoke-static {p1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x4

    if-nez v7, :cond_b0

    const-string v7, "dashif:Laurl"

    .line 642
    invoke-static {p1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 643
    :cond_b0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v8, :cond_bb

    .line 644
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_11c

    .line 645
    :cond_bb
    const-string v7, "ms:laurl"

    invoke-static {p1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 646
    const-string v6, "licenseUrl"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_11c

    :cond_ca
    if-nez v5, :cond_f4

    .line 647
    const-string v7, "pssh"

    .line 648
    invoke-static {p1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTagIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 649
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v8, :cond_f4

    .line 651
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 652
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_f0

    .line 654
    const-string v0, "Skipping malformed cenc:pssh data"

    invoke-static {v3, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    move-object v5, v2

    goto :goto_11c

    :cond_f0
    move-object v10, v5

    move-object v5, v0

    move-object v0, v10

    goto :goto_11c

    :cond_f4
    if-nez v5, :cond_119

    .line 657
    sget-object v7, Lio/bidmachine/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 658
    invoke-virtual {v7, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_119

    const-string v9, "mspr:pro"

    .line 659
    invoke-static {p1, v9}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_119

    .line 660
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v8, :cond_119

    .line 664
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 663
    invoke-static {v7, v5}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v5

    goto :goto_11c

    .line 666
    :cond_119
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 668
    :goto_11c
    const-string v7, "ContentProtection"

    invoke-static {p1, v7}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9c

    if-eqz v0, :cond_12d

    .line 670
    new-instance v2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    const-string p1, "video/mp4"

    invoke-direct {v2, v0, v6, p1, v5}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 671
    :cond_12d
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :sswitch_data_132
    .sparse-switch
        -0x7610741f -> :sswitch_3e
        0x1d2c5beb -> :sswitch_33
        0x2d06c692 -> :sswitch_28
        0x6c0c9d2a -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_96
        :pswitch_93
        :pswitch_8e
        :pswitch_4c
    .end packed-switch
.end method

.method public parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 4

    const/4 v0, 0x0

    .line 573
    const-string v1, "contentType"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    return v1

    .line 576
    :cond_f
    const-string v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p1, 0x1

    return p1

    .line 578
    :cond_19
    const-string v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p1, 0x2

    return p1

    .line 580
    :cond_23
    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 p1, 0x3

    return p1

    .line 582
    :cond_2d
    const-string v0, "image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x4

    return p1

    :cond_37
    return v1
.end method

.method public parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/io/ByteArrayOutputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1218
    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 1219
    const-string v1, "duration"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, v4, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 1220
    const-string v1, "presentationTime"

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    move-wide/from16 v13, p4

    .line 1221
    invoke-static/range {v9 .. v14}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    sub-long v11, v1, p6

    const-wide/32 v13, 0xf4240

    move-wide/from16 v15, p4

    .line 1223
    invoke-static/range {v11 .. v16}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 1225
    const-string v3, "messageData"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    move-object/from16 v5, p8

    .line 1226
    invoke-virtual {v4, v0, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 1228
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-nez v3, :cond_49

    :goto_43
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v11, v0

    goto :goto_4e

    .line 1234
    :cond_49
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_43

    .line 1229
    :goto_4e
    invoke-virtual/range {v4 .. v11}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[B)Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    move-result-object v0

    .line 1227
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1248
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1249
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 1250
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1253
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 1254
    :goto_13
    const-string v1, "Event"

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 1255
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_a4

    goto/16 :goto_97

    .line 1291
    :pswitch_24
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto/16 :goto_97

    .line 1288
    :pswitch_2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_97

    .line 1285
    :pswitch_35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_97

    .line 1282
    :pswitch_3d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_97

    .line 1279
    :pswitch_45
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_97

    .line 1276
    :pswitch_4d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_97

    .line 1273
    :pswitch_55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_97

    .line 1270
    :pswitch_5d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_97

    .line 1263
    :pswitch_69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 1264
    :goto_75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_97

    .line 1266
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1265
    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 1260
    :pswitch_8d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_97

    .line 1257
    :pswitch_91
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1295
    :cond_97
    :goto_97
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    goto/16 :goto_13

    .line 1297
    :cond_9c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 1298
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_91
        :pswitch_8d
        :pswitch_69
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method public parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1158
    const-string v0, "schemeIdUri"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1159
    const-string v0, "value"

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1160
    const-string v0, "timescale"

    const-wide/16 v1, 0x1

    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    .line 1161
    const-string v0, "presentationTimeOffset"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v10, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1165
    :goto_2a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1166
    const-string v1, "Event"

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    move-object v2, p0

    move-wide v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p1

    .line 1168
    invoke-virtual/range {v2 .. v10}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;

    move-result-object p1

    .line 1170
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_42
    move-wide v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p1

    .line 1172
    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1174
    :goto_49
    const-string p1, "EventStream"

    invoke-static {v3, p1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 1176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 1177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    const/4 v1, 0x0

    .line 1178
    :goto_5e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 1179
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1180
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    aput-wide v9, p1, v1

    .line 1181
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    aput-object v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_7d
    move-object v2, p0

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, p1

    .line 1183
    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;

    move-result-object p1

    return-object p1

    :cond_87
    move-object p1, v3

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    goto :goto_2a
.end method

.method public parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 4

    .line 1392
    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method public parseLabel(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/common/Label;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1450
    const-string v1, "lang"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1451
    const-string v1, "Label"

    invoke-static {p1, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1452
    new-instance v1, Lio/bidmachine/media3/common/Label;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 136
    new-array v3, v2, [Ljava/lang/String;

    .line 137
    const-string v4, "profiles"

    invoke-virtual {v0, v1, v4, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseProfiles(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->isDvbProfileDeclared([Ljava/lang/String;)Z

    move-result v11

    .line 138
    const-string v3, "availabilityStartTime"

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v3, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 139
    const-string v3, "mediaPresentationDuration"

    invoke-static {v1, v3, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 140
    const-string v3, "minBufferTime"

    invoke-static {v1, v3, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 141
    const-string v3, "type"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    const-string v5, "dynamic"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_40

    .line 144
    const-string v3, "minimumUpdatePeriod"

    invoke-static {v1, v3, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    move-wide/from16 v19, v5

    goto :goto_42

    :cond_40
    move-wide/from16 v19, v12

    :goto_42
    if-eqz v18, :cond_4c

    .line 146
    const-string v3, "timeShiftBufferDepth"

    invoke-static {v1, v3, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v9, v5

    goto :goto_4d

    :cond_4c
    move-wide v9, v12

    :goto_4d
    if-eqz v18, :cond_58

    .line 148
    const-string v3, "suggestedPresentationDelay"

    invoke-static {v1, v3, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    move-wide/from16 v21, v5

    goto :goto_5a

    :cond_58
    move-wide/from16 v21, v12

    .line 149
    :goto_5a
    const-string v3, "publishTime"

    invoke-static {v1, v3, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v23

    const-wide/16 v5, 0x0

    if-eqz v18, :cond_67

    move-wide/from16 v25, v5

    goto :goto_69

    :cond_67
    move-wide/from16 v25, v12

    .line 155
    :goto_69
    new-instance v3, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v29, v12

    const/4 v12, 0x1

    if-eqz v11, :cond_7a

    move v13, v12

    goto :goto_7c

    :cond_7a
    const/high16 v13, -0x80000000

    .line 159
    :goto_7c
    invoke-direct {v3, v2, v4, v13, v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 161
    filled-new-array {v3}, [Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v18, :cond_95

    move-wide/from16 v5, v29

    :cond_95
    move-object/from16 v31, v13

    move-wide/from16 v12, v25

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 169
    :goto_a5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 170
    const-string v4, "BaseURL"

    invoke-static {v1, v4}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cb

    if-nez v27, :cond_b8

    .line 173
    invoke-virtual {v0, v1, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v12

    const/16 v27, 0x1

    :cond_b8
    move-object/from16 v4, v31

    move-object/from16 v31, v2

    .line 176
    invoke-virtual {v0, v1, v4, v11}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_c3
    move-object/from16 v28, v3

    move-object/from16 v2, v31

    move-object/from16 v31, v4

    goto/16 :goto_18e

    :cond_cb
    move-object/from16 v4, v31

    move-object/from16 v31, v2

    .line 177
    const-string v2, "ProgramInformation"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 178
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/ProgramInformation;

    move-result-object v32

    goto :goto_c3

    .line 179
    :cond_dc
    const-string v2, "UTCTiming"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 180
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;

    move-result-object v33

    goto :goto_c3

    .line 181
    :cond_e9
    const-string v2, "Location"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/bidmachine/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    goto :goto_c3

    .line 183
    :cond_fe
    const-string v0, "ServiceDescription"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 184
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseServiceDescription(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    move-result-object v35

    goto :goto_c3

    .line 185
    :cond_10b
    const-string v0, "Period"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_182

    if-nez v25, :cond_182

    .line 189
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12a

    move-object v2, v3

    move-object/from16 v28, v2

    move-object/from16 v37, v31

    move-object/from16 v31, v4

    move-wide v3, v5

    move-wide v5, v12

    move-object/from16 v13, v37

    :goto_126
    move-object/from16 v0, p0

    const/4 v12, 0x0

    goto :goto_134

    :cond_12a
    move-object/from16 v28, v3

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v12

    move-object/from16 v13, v31

    move-object/from16 v31, v2

    goto :goto_126

    .line 187
    :goto_134
    invoke-virtual/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;

    move-result-object v2

    .line 195
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-object/from16 v36, v13

    .line 196
    iget-wide v12, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    cmp-long v12, v12, v29

    if-nez v12, :cond_166

    if-eqz v18, :cond_14b

    move-object/from16 v2, v36

    const/16 v25, 0x1

    goto :goto_17f

    .line 202
    :cond_14b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to determine start of period "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    .line 202
    invoke-static {v0, v12}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 206
    :cond_166
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v29

    if-nez v4, :cond_177

    move-wide/from16 v12, v29

    :goto_174
    move-object/from16 v2, v36

    goto :goto_17b

    .line 208
    :cond_177
    iget-wide v12, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    add-long/2addr v12, v2

    goto :goto_174

    .line 209
    :goto_17b
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v3, v12

    :goto_17f
    move-wide v12, v5

    move-wide v5, v3

    goto :goto_18e

    :cond_182
    move-object/from16 v28, v3

    move-object/from16 v2, v31

    move-object/from16 v31, v4

    move-wide v3, v5

    move-wide v5, v12

    .line 212
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17f

    .line 214
    :goto_18e
    const-string v0, "MPD"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    cmp-long v0, v14, v29

    if-nez v0, :cond_1a3

    cmp-long v0, v5, v29

    if-eqz v0, :cond_1a1

    move-wide v4, v5

    const/4 v12, 0x0

    goto :goto_1ae

    :cond_1a1
    if-eqz v18, :cond_1a5

    :cond_1a3
    const/4 v12, 0x0

    goto :goto_1ad

    .line 221
    :cond_1a5
    const-string v0, "Unable to determine duration of static manifest."

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :goto_1ad
    move-wide v4, v14

    .line 226
    :goto_1ae
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d1

    move-object/from16 v1, p0

    move-wide v11, v9

    move-wide/from16 v9, v19

    move-wide/from16 v13, v21

    move-object/from16 v20, v34

    move-object/from16 v19, v35

    move-object/from16 v21, v2

    move-wide v2, v7

    move-wide/from16 v6, v16

    move/from16 v8, v18

    move-wide/from16 v15, v23

    move-object/from16 v17, v32

    move-object/from16 v18, v33

    .line 230
    invoke-virtual/range {v1 .. v21}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildMediaPresentationDescription(JJJZJJJJLio/bidmachine/media3/exoplayer/dash/manifest/ProgramInformation;Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0

    :cond_1d1
    move-object v0, v12

    .line 227
    const-string v1, "No periods found."

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1d9
    move-object/from16 v36, v2

    move-wide/from16 v2, v16

    move/from16 v4, v18

    move-object/from16 v17, v32

    move-object/from16 v18, v33

    move-wide/from16 v32, v23

    move-wide/from16 v23, v21

    move-wide/from16 v21, v9

    move-wide/from16 v9, v19

    move-object/from16 v20, v34

    move-object/from16 v19, v35

    move-object/from16 v0, p0

    move-wide/from16 v19, v9

    move-wide/from16 v9, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v32

    move-object/from16 v32, v17

    move-object/from16 v33, v18

    move-wide/from16 v16, v2

    move/from16 v18, v4

    move-object/from16 v3, v28

    move-object/from16 v2, v36

    goto/16 :goto_a5
.end method

.method public parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;JJJJZ)",
            "Landroid/util/Pair<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 317
    const-string v2, "id"

    const/4 v15, 0x0

    invoke-interface {v1, v15, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 318
    const-string v2, "start"

    move-wide/from16 v3, p3

    invoke-static {v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p7, v2

    if-eqz v4, :cond_1f

    add-long v4, p7, v17

    goto :goto_20

    :cond_1f
    move-wide v4, v2

    .line 321
    :goto_20
    const-string v6, "duration"

    invoke-static {v1, v6, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 324
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    move-wide v13, v2

    move-object/from16 v20, v9

    move/from16 v19, v11

    move-object/from16 v21, v15

    move-wide/from16 v11, p5

    move-object v2, v8

    move-object/from16 v3, v21

    move-wide v8, v13

    .line 330
    :goto_43
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 331
    const-string v13, "BaseURL"

    invoke-static {v1, v13}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7a

    if-nez v19, :cond_56

    .line 334
    invoke-virtual {v0, v1, v11, v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v11

    const/16 v19, 0x1

    :cond_56
    move-object/from16 v13, p2

    move/from16 v14, p11

    .line 337
    invoke-virtual {v0, v1, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v24, v2

    move-wide/from16 v26, v8

    move-wide/from16 v28, v11

    move-object/from16 v25, v20

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v22, 0x0

    move-wide v8, v4

    move-wide v12, v6

    move-object/from16 v20, v10

    move-object/from16 v6, v21

    move-object v7, v1

    :goto_77
    move-object v10, v3

    goto/16 :goto_183

    :cond_7a
    move-object/from16 v13, p2

    move/from16 v14, p11

    .line 338
    const-string v15, "AdaptationSet"

    invoke-static {v1, v15}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c1

    .line 342
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9b

    move-object v15, v2

    move-object v2, v10

    move-object/from16 v25, v20

    move-object/from16 v20, v2

    :goto_92
    move-wide/from16 v30, v11

    move-wide/from16 v12, p9

    move-wide v10, v4

    move-wide v4, v6

    move-wide/from16 v6, v30

    goto :goto_a2

    :cond_9b
    move-object v15, v2

    move-object v2, v13

    move-object/from16 v25, v20

    move-object/from16 v20, v10

    goto :goto_92

    .line 340
    :goto_a2
    invoke-virtual/range {v0 .. v14}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;JJJJJZ)Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    move-result-object v2

    move-wide/from16 v30, v6

    move-wide v6, v4

    move-wide v4, v10

    move-wide v10, v8

    move-wide/from16 v8, v30

    .line 339
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b0
    move-object/from16 p3, v3

    move-wide v12, v6

    move-object/from16 v24, v15

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v22, 0x0

    move-object v7, v1

    move-wide v0, v8

    move-wide v8, v4

    goto/16 :goto_176

    :cond_c1
    move-object v15, v2

    move-object/from16 v25, v20

    move-object/from16 v20, v10

    move-wide/from16 v30, v11

    move-wide v10, v8

    move-wide/from16 v8, v30

    .line 350
    const-string v2, "EventStream"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 351
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;

    move-result-object v2

    move-object/from16 v14, v25

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_dd
    move-object/from16 v14, v25

    .line 352
    const-string v2, "SegmentBase"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_103

    const/4 v13, 0x0

    .line 353
    invoke-virtual {v0, v1, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v3

    move-wide/from16 v28, v8

    move-wide/from16 v26, v10

    move-object/from16 v22, v13

    move-object/from16 v25, v14

    move-object/from16 v24, v15

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object v10, v3

    :goto_fc
    move-wide v8, v4

    move-wide v12, v6

    move-object/from16 v6, v21

    move-object v7, v1

    goto/16 :goto_183

    :cond_103
    const/4 v13, 0x0

    .line 354
    const-string v2, "SegmentList"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_134

    move-wide/from16 v22, v4

    move-wide v5, v6

    move-wide v7, v8

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 356
    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    move-wide v3, v2

    const/4 v2, 0x0

    move-wide/from16 v11, p9

    move-object/from16 v25, v14

    move-object/from16 v24, v15

    move-wide v14, v3

    move-wide/from16 v3, v22

    .line 358
    invoke-virtual/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    move-result-object v2

    move-wide v10, v9

    move-wide v8, v7

    move-wide v6, v5

    move-wide v4, v3

    move-wide/from16 v28, v8

    move-wide/from16 v26, v10

    move-object/from16 v22, v13

    move-object v10, v2

    goto :goto_fc

    :cond_134
    move-object/from16 p3, v3

    move-object/from16 v25, v14

    move-object/from16 v24, v15

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 366
    const-string v2, "SegmentTemplate"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_164

    .line 368
    invoke-virtual {v0, v1, v14, v15}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v10

    const/4 v2, 0x0

    .line 373
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v22, v13

    move-wide/from16 v12, p9

    .line 370
    invoke-virtual/range {v0 .. v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v3

    move-wide v12, v6

    move-object v7, v1

    move-wide v0, v8

    move-wide v8, v4

    move-wide/from16 v28, v0

    move-wide/from16 v26, v10

    move-object/from16 v6, v21

    goto/16 :goto_77

    :cond_164
    move-object/from16 v22, v13

    move-wide v12, v6

    move-object v7, v1

    move-wide v0, v8

    move-wide v8, v4

    .line 379
    const-string v2, "AssetIdentifier"

    invoke-static {v7, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 380
    invoke-static {v7, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v21

    :goto_176
    move-wide/from16 v28, v0

    move-wide/from16 v26, v10

    move-object/from16 v6, v21

    move-object/from16 v10, p3

    goto :goto_183

    .line 382
    :cond_17f
    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_176

    .line 384
    :goto_183
    const-string v0, "Period"

    invoke-static {v7, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    .line 387
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 386
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1a2
    move-object/from16 v0, p0

    move-object/from16 v21, v6

    move-object v1, v7

    move-wide v4, v8

    move-object v3, v10

    move-wide v6, v12

    move-wide v13, v14

    move-object/from16 v10, v20

    move-object/from16 v15, v22

    move-object/from16 v2, v24

    move-object/from16 v20, v25

    move-wide/from16 v8, v26

    move-wide/from16 v11, v28

    goto/16 :goto_43
.end method

.method public parseProfiles(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1683
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    return-object p3

    .line 1687
    :cond_8
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/ProgramInformation;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1424
    const-string v0, "moreInformationURL"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1425
    const-string v0, "lang"

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v1

    move-object v2, v0

    .line 1427
    :goto_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1428
    const-string v3, "Title"

    invoke-static {p1, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1429
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    move-object v4, v0

    move-object v3, v1

    move-object v5, v2

    goto :goto_40

    .line 1430
    :cond_22
    const-string v3, "Source"

    invoke-static {p1, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1431
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 1432
    :cond_2f
    const-string v3, "Copyright"

    invoke-static {p1, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1433
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 1435
    :cond_3c
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1e

    .line 1437
    :goto_40
    const-string v0, "ProgramInformation"

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1438
    new-instance v2, Lio/bidmachine/media3/exoplayer/dash/manifest/ProgramInformation;

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/ProgramInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_4e
    move-object v1, v3

    move-object v0, v4

    move-object v2, v5

    goto :goto_f
.end method

.method public parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 11

    const/4 v0, 0x0

    .line 1401
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1404
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, -0x1

    if-eqz p1, :cond_2e

    .line 1406
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1407
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1408
    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    const/4 p2, 0x1

    .line 1409
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v3, 0x1

    add-long p2, p1, v3

    :cond_2a
    :goto_2a
    move-wide v5, p2

    move-wide v3, v0

    move-object v1, p0

    goto :goto_31

    :cond_2e
    const-wide/16 v0, 0x0

    goto :goto_2a

    .line 1412
    :goto_31
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildRangedUri(Ljava/lang/String;JJ)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method public parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;JJJJJZ)Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;
    .registers 63
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;",
            "JJJJJZ)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 715
    const-string v2, "id"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 716
    const-string v2, "bandwidth"

    const/4 v4, -0x1

    invoke-static {v1, v2, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 718
    const-string v2, "mimeType"

    move-object/from16 v4, p3

    invoke-static {v1, v2, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 719
    const-string v2, "codecs"

    move-object/from16 v4, p4

    invoke-static {v1, v2, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 720
    const-string v2, "scte214:supplementalCodecs"

    move-object/from16 v4, p5

    .line 721
    invoke-static {v1, v2, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 722
    const-string v2, "scte214:supplementalProfiles"

    move-object/from16 v4, p6

    .line 723
    invoke-static {v1, v2, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 724
    const-string v2, "width"

    move/from16 v4, p7

    invoke-static {v1, v2, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    .line 725
    const-string v2, "height"

    move/from16 v4, p8

    invoke-static {v1, v2, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    move/from16 v2, p9

    .line 726
    invoke-static {v1, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v21

    .line 728
    const-string v2, "audioSamplingRate"

    move/from16 v4, p11

    invoke-static {v1, v2, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    .line 730
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 731
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 732
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v6, p15

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 733
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v7, p16

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 735
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move/from16 v23, p10

    move-wide/from16 v11, p24

    move-object/from16 v24, v3

    move/from16 v25, v9

    move-object/from16 v3, p17

    move-wide/from16 v9, p22

    .line 739
    :goto_7a
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 p6, v2

    .line 740
    const-string v2, "BaseURL"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    if-nez v25, :cond_8f

    .line 743
    invoke-virtual {v0, v1, v9, v10}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    const/16 v25, 0x1

    :cond_8f
    move-object/from16 v2, p2

    move-object/from16 p3, v3

    move-object/from16 v26, v14

    move/from16 v14, p28

    .line 746
    invoke-virtual {v0, v1, v2, v14}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v14, p6

    move-object v0, v1

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v30, v8

    move-wide/from16 v28, v11

    move-object/from16 v31, v13

    move/from16 v27, v15

    move/from16 v7, v23

    move-object/from16 v32, v24

    move/from16 v33, v25

    move-object/from16 v23, p3

    :goto_b3
    move-object v15, v4

    :goto_b4
    move-wide/from16 v24, v9

    goto/16 :goto_1fc

    :cond_b8
    move-object/from16 v2, p2

    move-object/from16 p3, v3

    move-object/from16 v26, v14

    move/from16 v14, p28

    .line 747
    const-string v3, "AudioChannelConfiguration"

    invoke-static {v1, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 748
    invoke-virtual {v0, v1, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v23, p3

    move-object/from16 v14, p6

    move-object v0, v1

    move v7, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v30, v8

    move-wide/from16 v28, v11

    move-object/from16 v31, v13

    move/from16 v27, v15

    move-object/from16 v32, v24

    move/from16 v33, v25

    goto :goto_b3

    .line 749
    :cond_e1
    const-string v3, "SegmentBase"

    invoke-static {v1, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 750
    move-object/from16 v3, p3

    check-cast v3, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v0, v1, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v3

    move-object/from16 v14, p6

    move-object v0, v1

    move-object v2, v5

    move-object/from16 v30, v8

    move-wide/from16 v28, v11

    move-object/from16 v31, v13

    move/from16 v27, v15

    move/from16 v7, v23

    move-object/from16 v32, v24

    move/from16 v33, v25

    move-object/from16 v23, v3

    move-object v15, v4

    move-object v3, v6

    goto :goto_b4

    .line 751
    :cond_108
    const-string v3, "SegmentList"

    invoke-static {v1, v3}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_144

    move-object v3, v8

    move-wide v7, v9

    .line 753
    invoke-virtual {v0, v1, v11, v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    .line 754
    move-object/from16 v2, p3

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    move-object/from16 v14, p6

    move-wide/from16 v11, p26

    move-object/from16 v30, v3

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v27, v15

    move-wide/from16 v5, p20

    move-object v15, v4

    move-wide/from16 v3, p18

    .line 755
    invoke-virtual/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    move-result-object v2

    move-object v0, v1

    move-object/from16 v31, v13

    move-object/from16 v32, v24

    move/from16 v33, v25

    move-object/from16 v3, v29

    move-wide/from16 v24, v7

    move/from16 v7, v23

    move-object/from16 v23, v2

    move-object/from16 v2, v28

    move-wide/from16 v28, v9

    goto/16 :goto_1fc

    :cond_144
    move-object/from16 v14, p6

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-wide v7, v9

    move/from16 v27, v15

    move-object v15, v4

    .line 763
    const-string v2, "SegmentTemplate"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 765
    invoke-virtual {v0, v1, v11, v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v10

    .line 766
    move-object/from16 v2, p3

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    move-object/from16 v3, p16

    move-wide/from16 v4, p18

    move-wide v8, v7

    move-object/from16 v31, v13

    move-wide/from16 v6, p20

    move-wide/from16 v12, p26

    .line 767
    invoke-virtual/range {v0 .. v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v2

    move-object v0, v1

    move-wide v7, v8

    move-object/from16 v32, v24

    move/from16 v33, v25

    move-object/from16 v3, v29

    move-wide/from16 v24, v7

    move/from16 v7, v23

    move-object/from16 v23, v2

    move-object/from16 v2, v28

    move-wide/from16 v28, v10

    goto/16 :goto_1fc

    :cond_183
    move-object v0, v1

    move-object/from16 v31, v13

    .line 776
    const-string v1, "ContentProtection"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 777
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v1

    .line 778
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_19a

    .line 779
    move-object/from16 v24, v2

    check-cast v24, Ljava/lang/String;

    .line 781
    :cond_19a
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_1a3

    .line 782
    check-cast v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a3
    move-object/from16 v32, v24

    move/from16 v33, v25

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-wide/from16 v24, v7

    move-wide/from16 v28, v11

    :goto_1af
    move/from16 v7, v23

    move-object/from16 v23, p3

    goto :goto_1fc

    .line 784
    :cond_1b4
    const-string v1, "InbandEventStream"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 785
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v28

    :goto_1c5
    move-object/from16 v3, v29

    goto :goto_1f3

    .line 786
    :cond_1c8
    const-string v1, "EssentialProperty"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 787
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c5

    :cond_1da
    move-object/from16 v2, v28

    .line 788
    const-string v1, "SupplementalProperty"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 789
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v1

    move-object/from16 v3, v29

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f3

    :cond_1ee
    move-object/from16 v3, v29

    .line 791
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1f3
    move-wide/from16 v28, v11

    move-object/from16 v32, v24

    move/from16 v33, v25

    move-wide/from16 v24, v7

    goto :goto_1af

    .line 793
    :goto_1fc
    const-string v1, "Representation"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25f

    move-object/from16 v1, p0

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v8, v22

    move/from16 v9, v27

    move-object/from16 v13, v31

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v26

    .line 796
    invoke-virtual/range {v1 .. v17}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/common/Format;

    move-result-object v0

    move-object/from16 v28, v16

    move-object/from16 v3, v17

    if-eqz v23, :cond_233

    goto :goto_238

    .line 813
    :cond_233
    new-instance v23, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct/range {v23 .. v23}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;-><init>()V

    .line 815
    :goto_238
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;

    .line 817
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_241

    goto :goto_243

    :cond_241
    move-object/from16 v30, p2

    :goto_243
    const-wide/16 v4, -0x1

    move-object/from16 p2, v0

    move-object/from16 p1, v1

    move-object/from16 p9, v3

    move-wide/from16 p10, v4

    move-object/from16 p6, v18

    move-object/from16 p7, v19

    move-object/from16 p4, v23

    move-object/from16 p8, v28

    move-object/from16 p3, v30

    move-object/from16 p5, v32

    invoke-direct/range {p1 .. p11}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Lio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V

    move-object/from16 v0, p1

    return-object v0

    :cond_25f
    move/from16 v4, v19

    move-object/from16 v1, v32

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v19

    move/from16 v19, v4

    move-object v4, v3

    move-object v5, v2

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    move-wide/from16 v9, v24

    move-wide/from16 v11, v28

    move-object/from16 v8, v30

    move-object/from16 v13, v31

    move/from16 v25, v33

    move-object/from16 v24, v1

    move/from16 v23, v7

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v14, v26

    move/from16 v15, v27

    move-object/from16 v7, p16

    move-object v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_7a
.end method

.method public parseRoleFlagsFromAccessibilityDescriptors(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1602
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 1603
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 1604
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v4, "urn:mpeg:dash:role:2011"

    invoke-static {v4, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1605
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v2

    :goto_1e
    or-int/2addr v1, v2

    goto :goto_31

    .line 1606
    :cond_20
    const-string v3, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    iget-object v4, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1608
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseTvaAudioPurposeCsValue(Ljava/lang/String;)I

    move-result v2

    goto :goto_1e

    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_34
    return v1
.end method

.method public parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I
    .registers 9

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_9

    return v4

    :cond_9
    const/4 v5, -0x1

    .line 1631
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_cc

    goto/16 :goto_af

    :sswitch_13
    const-string v6, "supplementary"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_af

    :cond_1d
    const/16 v5, 0xc

    goto/16 :goto_af

    :sswitch_21
    const-string v6, "emergency"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto/16 :goto_af

    :cond_2b
    const/16 v5, 0xb

    goto/16 :goto_af

    :sswitch_2f
    const-string v6, "commentary"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto/16 :goto_af

    :cond_39
    const/16 v5, 0xa

    goto/16 :goto_af

    :sswitch_3d
    const-string v6, "caption"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto/16 :goto_af

    :cond_47
    const/16 v5, 0x9

    goto/16 :goto_af

    :sswitch_4b
    const-string v6, "sign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto/16 :goto_af

    :cond_55
    move v5, v0

    goto/16 :goto_af

    :sswitch_58
    const-string v6, "main"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_af

    :cond_61
    const/4 v5, 0x7

    goto :goto_af

    :sswitch_63
    const-string v6, "dub"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_af

    :cond_6c
    const/4 v5, 0x6

    goto :goto_af

    :sswitch_6e
    const-string v6, "forced-subtitle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_af

    :cond_77
    const/4 v5, 0x5

    goto :goto_af

    :sswitch_79
    const-string v6, "alternate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    goto :goto_af

    :cond_82
    move v5, v1

    goto :goto_af

    :sswitch_84
    const-string v6, "forced_subtitle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    goto :goto_af

    :cond_8d
    const/4 v5, 0x3

    goto :goto_af

    :sswitch_8f
    const-string v6, "enhanced-audio-intelligibility"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_98

    goto :goto_af

    :cond_98
    move v5, v2

    goto :goto_af

    :sswitch_9a
    const-string v6, "description"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a3

    goto :goto_af

    :cond_a3
    move v5, v3

    goto :goto_af

    :sswitch_a5
    const-string v6, "subtitle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ae

    goto :goto_af

    :cond_ae
    move v5, v4

    :goto_af
    packed-switch v5, :pswitch_data_102

    return v4

    :pswitch_b3
    return v1

    :pswitch_b4
    const/16 p1, 0x20

    return p1

    :pswitch_b7
    return v0

    :pswitch_b8
    const/16 p1, 0x40

    return p1

    :pswitch_bb
    const/16 p1, 0x100

    return p1

    :pswitch_be
    return v3

    :pswitch_bf
    const/16 p1, 0x10

    return p1

    :pswitch_c2
    return v2

    :pswitch_c3
    const/16 p1, 0x800

    return p1

    :pswitch_c6
    const/16 p1, 0x200

    return p1

    :pswitch_c9
    const/16 p1, 0x80

    return p1

    :sswitch_data_cc
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_a5
        -0x66ca7c04 -> :sswitch_9a
        -0x5e3a5c50 -> :sswitch_8f
        -0x5dde3142 -> :sswitch_84
        -0x53ecbf86 -> :sswitch_79
        -0x533bdf74 -> :sswitch_6e
        0x185f1 -> :sswitch_63
        0x3305b9 -> :sswitch_58
        0x35ddbd -> :sswitch_4b
        0x20ef99e6 -> :sswitch_3d
        0x3597fba9 -> :sswitch_2f
        0x6118c591 -> :sswitch_21
        0x6e96bb0f -> :sswitch_13
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c9
        :pswitch_c2
        :pswitch_c9
        :pswitch_bf
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b7
        :pswitch_b4
        :pswitch_b3
    .end packed-switch
.end method

.method public parseRoleFlagsFromProperties(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1617
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1618
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 1619
    const-string v3, "http://dashif.org/guidelines/trickmode"

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v1, 0x4000

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    return v1
.end method

.method public parseRoleFlagsFromRoleDescriptors(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1590
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 1591
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 1592
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v4, "urn:mpeg:dash:role:2011"

    invoke-static {v4, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1593
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_22
    return v1
.end method

.method public parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_b

    .line 937
    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    goto :goto_c

    :cond_b
    move-wide v4, v2

    :goto_c
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_19

    .line 940
    iget-wide v6, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    goto :goto_1a

    :cond_19
    move-wide v6, v4

    .line 939
    :goto_1a
    const-string v8, "presentationTimeOffset"

    invoke-static {v0, v8, v6, v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_25

    .line 942
    iget-wide v6, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    goto :goto_26

    :cond_25
    move-wide v6, v4

    :goto_26
    if-eqz v1, :cond_2a

    .line 943
    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    .line 944
    :cond_2a
    const-string v8, "indexRange"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_49

    .line 946
    const-string v4, "-"

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 947
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v5, 0x1

    .line 948
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v4, v6

    add-long/2addr v4, v2

    :cond_49
    move-wide v15, v4

    if-eqz v1, :cond_4e

    .line 951
    iget-object v13, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    .line 953
    :cond_4e
    :goto_4e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 954
    const-string v1, "Initialization"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 955
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v13

    :goto_5d
    move-object v8, v13

    goto :goto_63

    .line 957
    :cond_5f
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5d

    .line 959
    :goto_63
    const-string v1, "SegmentBase"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    move-wide v13, v6

    move-object/from16 v7, p0

    .line 961
    invoke-virtual/range {v7 .. v16}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildSingleSegmentBase(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    return-object v0

    :cond_73
    move-object v13, v8

    goto :goto_4e
.end method

.method public parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const-wide/16 v2, 0x1

    if-eqz v6, :cond_b

    .line 985
    iget-wide v4, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    goto :goto_c

    :cond_b
    move-wide v4, v2

    :goto_c
    const-string v0, "timescale"

    invoke-static {v1, v0, v4, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v6, :cond_17

    .line 988
    iget-wide v4, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    goto :goto_19

    :cond_17
    const-wide/16 v4, 0x0

    .line 987
    :goto_19
    const-string v0, "presentationTimeOffset"

    invoke-static {v1, v0, v4, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v6, :cond_24

    .line 989
    iget-wide v4, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    goto :goto_29

    :cond_24
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_29
    const-string v0, "duration"

    invoke-static {v1, v0, v4, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    if-eqz v6, :cond_33

    .line 990
    iget-wide v2, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    :cond_33
    const-string v0, "startNumber"

    invoke-static {v1, v0, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    .line 992
    invoke-static/range {p7 .. p10}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->getFinalAvailabilityTimeOffset(JJ)J

    move-result-wide v17

    const/4 v0, 0x0

    move-object v7, v0

    move-object/from16 v16, v7

    move-object/from16 v19, v16

    .line 1000
    :goto_43
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1001
    const-string v0, "Initialization"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1002
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v0

    move-object/from16 v16, v0

    move-wide v2, v8

    goto :goto_85

    .line 1003
    :cond_56
    const-string v0, "SegmentTimeline"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    move-object/from16 v0, p0

    move-wide/from16 v4, p5

    move-wide v2, v8

    .line 1004
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v8

    move-object/from16 v19, v8

    goto :goto_85

    :cond_6a
    move-wide v2, v8

    .line 1005
    const-string v0, "SegmentURL"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    if-nez v7, :cond_7a

    .line 1007
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    :cond_7a
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 1011
    :cond_82
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1013
    :goto_85
    const-string v0, "SegmentList"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    if-eqz v6, :cond_a2

    if-eqz v16, :cond_92

    goto :goto_96

    .line 1016
    :cond_92
    iget-object v0, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-object/from16 v16, v0

    :goto_96
    if-eqz v19, :cond_99

    goto :goto_9d

    .line 1017
    :cond_99
    iget-object v0, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    move-object/from16 v19, v0

    :goto_9d
    if-eqz v7, :cond_a0

    goto :goto_a2

    .line 1018
    :cond_a0
    iget-object v7, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    :cond_a2
    :goto_a2
    move-object/from16 v6, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v6

    move-object/from16 v6, p0

    move-wide/from16 v22, p3

    move-wide/from16 v20, p11

    move-wide v8, v2

    .line 1021
    invoke-virtual/range {v6 .. v23}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildSegmentList(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    return-object v0

    :cond_b6
    move-wide v8, v2

    goto :goto_43
.end method

.method public parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;JJJJJ)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const-wide/16 v2, 0x1

    if-eqz v6, :cond_d

    .line 1068
    iget-wide v4, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    goto :goto_e

    :cond_d
    move-wide v4, v2

    :goto_e
    const-string v7, "timescale"

    invoke-static {v1, v7, v4, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz v6, :cond_19

    .line 1071
    iget-wide v7, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    goto :goto_1b

    :cond_19
    const-wide/16 v7, 0x0

    .line 1070
    :goto_1b
    const-string v9, "presentationTimeOffset"

    invoke-static {v1, v9, v7, v8}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v6, :cond_26

    .line 1072
    iget-wide v9, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    goto :goto_2b

    :cond_26
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2b
    const-string v11, "duration"

    invoke-static {v1, v11, v9, v10}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v6, :cond_35

    .line 1073
    iget-wide v2, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    :cond_35
    const-string v9, "startNumber"

    invoke-static {v1, v9, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 1075
    invoke-static/range {p3 .. p3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLastSegmentNumberSupplementalProperty(Ljava/util/List;)J

    move-result-wide v13

    .line 1077
    invoke-static/range {p8 .. p11}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->getFinalAvailabilityTimeOffset(JJ)J

    move-result-wide v15

    if-eqz v6, :cond_48

    .line 1081
    iget-object v3, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    :goto_49
    const-string v2, "media"

    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;)Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

    move-result-object v17

    if-eqz v6, :cond_54

    .line 1084
    iget-object v2, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    .line 1083
    :goto_55
    const-string v3, "initialization"

    invoke-virtual {v0, v1, v3, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;)Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1090
    :goto_5f
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1091
    const-string v2, "Initialization"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1092
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v2

    move-object/from16 v19, v2

    move-wide v2, v4

    goto :goto_86

    .line 1093
    :cond_72
    const-string v2, "SegmentTimeline"

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    move-wide v2, v4

    move-wide/from16 v4, p6

    .line 1094
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v20

    goto :goto_86

    :cond_82
    move-wide v2, v4

    .line 1096
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1098
    :goto_86
    const-string v0, "SegmentTemplate"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    if-eqz v6, :cond_9e

    if-eqz v19, :cond_93

    goto :goto_97

    .line 1101
    :cond_93
    iget-object v0, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-object/from16 v19, v0

    :goto_97
    if-eqz v20, :cond_9a

    goto :goto_9e

    .line 1102
    :cond_9a
    iget-object v0, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    move-object/from16 v20, v0

    :cond_9e
    :goto_9e
    move-object/from16 v1, p0

    move-wide v3, v2

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v13

    move-wide v14, v15

    move-object/from16 v16, v18

    move-object/from16 v2, v19

    move-object/from16 v13, v20

    move-wide/from16 v20, p4

    move-wide/from16 v18, p12

    .line 1105
    invoke-virtual/range {v1 .. v21}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildSegmentTemplate(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJJLjava/util/List;JLio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;JJ)Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    return-object v0

    :cond_b4
    move-wide v4, v7

    move-wide v7, v9

    move-wide v9, v13

    move-wide v14, v15

    move-object/from16 v0, p0

    move-wide v15, v14

    move-wide v13, v9

    move-wide v9, v7

    move-wide v7, v4

    move-wide v4, v2

    goto :goto_5f
.end method

.method public parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "JJ)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    move-wide v3, v2

    move-wide v5, v10

    move v2, v12

    move v7, v2

    .line 1315
    :cond_13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1316
    const-string v8, "S"

    invoke-static {v0, v8}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 1317
    const-string v8, "t"

    invoke-static {v0, v8, v10, v11}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v2, :cond_2e

    move-object v2, v1

    move-object/from16 v1, p0

    .line 1320
    invoke-virtual/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J

    move-result-wide v3

    move-object v1, v2

    :cond_2e
    cmp-long v2, v8, v10

    if-eqz v2, :cond_33

    move-wide v3, v8

    .line 1330
    :cond_33
    const-string v2, "d"

    invoke-static {v0, v2, v10, v11}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    .line 1331
    const-string v2, "r"

    invoke-static {v0, v2, v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    const/4 v2, 0x1

    goto :goto_44

    .line 1334
    :cond_41
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1336
    :goto_44
    const-string v8, "SegmentTimeline"

    invoke-static {v0, v8}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    if-eqz v2, :cond_61

    const-wide/16 v17, 0x3e8

    move-wide/from16 v15, p2

    move-wide/from16 v13, p4

    .line 1338
    invoke-static/range {v13 .. v18}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move-wide v7, v8

    .line 1339
    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J

    :cond_61
    return-object v1
.end method

.method public parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 4

    .line 1396
    const-string v0, "media"

    const-string v1, "mediaRange"

    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method public parseSelectionFlagsFromDashRoleScheme(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1576
    :cond_4
    const-string v1, "forced_subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "forced-subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v0

    :cond_15
    const/4 p1, 0x2

    return p1
.end method

.method public parseSelectionFlagsFromRoleDescriptors(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1563
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 1564
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 1565
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v4, "urn:mpeg:dash:role:2011"

    invoke-static {v4, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1566
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseSelectionFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_22
    return v1
.end method

.method public parseServiceDescription(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const v3, -0x800001

    move-wide v4, v1

    move-wide v6, v4

    move-wide v8, v6

    move v10, v3

    move v11, v10

    .line 294
    :goto_f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 295
    const-string v12, "Latency"

    invoke-static {v0, v12}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    const-string v13, "max"

    const-string v14, "min"

    if-eqz v12, :cond_35

    .line 296
    const-string v4, "target"

    invoke-static {v0, v4, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 297
    invoke-static {v0, v14, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 298
    invoke-static {v0, v13, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    :cond_2c
    :goto_2c
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    move/from16 v19, v10

    move/from16 v20, v11

    goto :goto_46

    .line 299
    :cond_35
    const-string v12, "PlaybackRate"

    invoke-static {v0, v12}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 300
    invoke-static {v0, v14, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    move-result v10

    .line 301
    invoke-static {v0, v13, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->parseFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    move-result v11

    goto :goto_2c

    .line 303
    :goto_46
    const-string v4, "ServiceDescription"

    invoke-static {v0, v4}, Lio/bidmachine/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 304
    new-instance v12, Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    invoke-direct/range {v12 .. v20}, Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;-><init>(JJJFF)V

    return-object v12

    :cond_54
    move-wide v4, v13

    move-wide v6, v15

    move-wide/from16 v8, v17

    move/from16 v10, v19

    move/from16 v11, v20

    goto :goto_f
.end method

.method public parseTileCountFromProperties(Ljava/util/List;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1702
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 1703
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 1704
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v4, "http://dashif.org/thumbnail_tile"

    invoke-static {v4, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "http://dashif.org/guidelines/thumbnail_tile"

    iget-object v4, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 1705
    invoke-static {v3, v4}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_22
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_4b

    .line 1709
    const-string v3, "x"

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1710
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_31

    goto :goto_4b

    .line 1714
    :cond_31
    :try_start_31
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 1715
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1716
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_4a} :catch_4b

    return-object p1

    :catch_4b
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4e
    const/4 p1, 0x0

    return-object p1
.end method

.method public parseTvaAudioPurposeCsValue(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_6

    return v2

    :cond_6
    const/4 v3, -0x1

    .line 1666
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_54

    :pswitch_e
    goto :goto_45

    :pswitch_f
    const-string v4, "6"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_45

    :cond_18
    move v3, v0

    goto :goto_45

    :pswitch_1a
    const-string v4, "4"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_45

    :cond_23
    const/4 v3, 0x3

    goto :goto_45

    :pswitch_25
    const-string v4, "3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_45

    :cond_2e
    const/4 v3, 0x2

    goto :goto_45

    :pswitch_30
    const-string v4, "2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_45

    :cond_39
    move v3, v1

    goto :goto_45

    :pswitch_3b
    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_45

    :cond_44
    move v3, v2

    :goto_45
    packed-switch v3, :pswitch_data_64

    return v2

    :pswitch_49
    return v1

    :pswitch_4a
    const/16 p1, 0x8

    return p1

    :pswitch_4d
    return v0

    :pswitch_4e
    const/16 p1, 0x800

    return p1

    :pswitch_51
    const/16 p1, 0x200

    return p1

    :pswitch_data_54
    .packed-switch 0x31
        :pswitch_3b
        :pswitch_30
        :pswitch_25
        :pswitch_1a
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4e
        :pswitch_4d
        :pswitch_4a
        :pswitch_49
    .end packed-switch
.end method

.method public parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;)Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;
    .registers 5

    const/4 v0, 0x0

    .line 1384
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1386
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;->compile(Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

    move-result-object p1

    return-object p1

    :cond_c
    return-object p3
.end method

.method public parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;
    .registers 5

    .line 277
    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v2, "value"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.dash.manifest.DashManifestParser.RepresentationInfo (io.bidmachine.media3.exoplayer.dash.manifest.DashManifestParser$RepresentationInfo)
.class public final Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;
.super Ljava/lang/Object;
.source "DashManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepresentationInfo"
.end annotation


# instance fields
.field public final baseUrls:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final drmSchemeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field public final drmSchemeType:Ljava/lang/String;

.field public final essentialProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final format:Lio/bidmachine/media3/common/Format;

.field public final inbandEventStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final revisionId:J

.field public final segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;

.field public final supplementalProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;J)V"
        }
    .end annotation

    .line 2199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2200
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lio/bidmachine/media3/common/Format;

    .line 2201
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 2202
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;

    .line 2203
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    .line 2204
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 2205
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 2206
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->essentialProperties:Ljava/util/List;

    .line 2207
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->supplementalProperties:Ljava/util/List;

    .line 2208
    iput-wide p9, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    return-void
.end method
