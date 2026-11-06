###### Class io.bidmachine.iab.vast.tags.LinearCreativeTag (io.bidmachine.iab.vast.tags.LinearCreativeTag)
.class public Lio/bidmachine/iab/vast/tags/LinearCreativeTag;
.super Lio/bidmachine/iab/vast/tags/CreativeContentTag;
.source "SourceFile"


# static fields
.field public static final i:[Ljava/lang/String;


# instance fields
.field public c:Ljava/lang/Float;

.field public d:Ljava/util/List;

.field public e:Lio/bidmachine/iab/vast/tags/VideoClicksTag;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/EnumMap;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "skipoffset"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/CreativeContentTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 7
    const-string v3, "Linear"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v4, "skipoffset"

    invoke-virtual {p0, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->e(Ljava/lang/String;)I

    move-result v4

    if-le v4, v0, :cond_1c

    .line 11
    invoke-virtual {p0, v4}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->a(I)V

    .line 13
    :cond_1c
    :goto_1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_97

    .line 14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_2a

    goto :goto_1c

    .line 17
    :cond_2a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 18
    const-string v4, "Duration"

    invoke-static {v0, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 19
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->e(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1c

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->setDurationSec(Ljava/lang/Float;)V

    goto :goto_1c

    .line 24
    :cond_4d
    const-string v4, "MediaFiles"

    invoke-static {v0, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 25
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->a(Ljava/util/List;)V

    goto :goto_1c

    .line 26
    :cond_5d
    const-string v4, "VideoClicks"

    invoke-static {v0, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 27
    new-instance v0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->a(Lio/bidmachine/iab/vast/tags/VideoClicksTag;)V

    goto :goto_1c

    .line 28
    :cond_6e
    const-string v4, "AdParameters"

    invoke-static {v0, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 29
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->setAdParameters(Ljava/lang/String;)V

    goto :goto_1c

    .line 30
    :cond_7e
    const-string v4, "TrackingEvents"

    invoke-static {v0, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 31
    new-instance v0, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 32
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;->a()Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->a(Ljava/util/EnumMap;)V

    goto :goto_1c

    .line 34
    :cond_93
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1c

    .line 37
    :cond_97
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->d:Ljava/util/List;

    return-void
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    const-string v2, "MediaFiles"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_47

    .line 4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v0, :cond_1a

    goto :goto_c

    .line 7
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8
    const-string v5, "MediaFile"

    invoke-static {v4, v5}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 9
    new-instance v4, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    invoke-direct {v4, p0}, Lio/bidmachine/iab/vast/tags/MediaFileTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 10
    invoke-virtual {v4}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->isValidTag()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 11
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_35
    const/4 v4, 0x0

    .line 13
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "VastXmlTag"

    const-string v6, "MediaFile: is not valid. Skipping it."

    invoke-static {v5, v6, v4}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    .line 17
    :cond_43
    invoke-static {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    .line 20
    :cond_47
    invoke-interface {p0, v5, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    .line 4
    iput p1, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->h:I

    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/tags/VideoClicksTag;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->e:Lio/bidmachine/iab/vast/tags/VideoClicksTag;

    return-void
.end method

.method public final a(Ljava/util/EnumMap;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->g:Ljava/util/EnumMap;

    return-void
.end method

.method public getDurationSec()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->c:Ljava/lang/Float;

    return-object v0
.end method

.method public getMediaFileTagList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->d:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedAttributes()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingEventListMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/bidmachine/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->g:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getVideoClicksTag()Lio/bidmachine/iab/vast/tags/VideoClicksTag;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->e:Lio/bidmachine/iab/vast/tags/VideoClicksTag;

    return-object v0
.end method

.method public setAdParameters(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adParameters"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->f:Ljava/lang/String;

    return-void
.end method

.method public setDurationSec(Ljava/lang/Float;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "durationSec"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->c:Ljava/lang/Float;

    return-void
.end method
