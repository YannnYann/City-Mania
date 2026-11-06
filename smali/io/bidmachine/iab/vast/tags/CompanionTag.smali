###### Class io.bidmachine.iab.vast.tags.CompanionTag (io.bidmachine.iab.vast.tags.CompanionTag)
.class public Lio/bidmachine/iab/vast/tags/CompanionTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/String;


# instance fields
.field public c:Lio/bidmachine/iab/vast/tags/StaticResourceTag;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;

.field public h:Ljava/util/Map;

.field public i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    const-string v8, "adSlotID"

    const-string v9, "required"

    const-string v0, "width"

    const-string v1, "height"

    const-string v2, "id"

    const-string v3, "assetWidth"

    const-string v4, "assetHeight"

    const-string v5, "expandedWidth"

    const-string v6, "expandedHeight"

    const-string v7, "apiFramework"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/vast/tags/CompanionTag;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 3
    const-string v2, "Companion"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9e

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_18

    goto :goto_a

    .line 8
    :cond_18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 9
    const-string v4, "StaticResource"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 10
    new-instance v3, Lio/bidmachine/iab/vast/tags/StaticResourceTag;

    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/StaticResourceTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 11
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/StaticResourceTag;->isValidTag()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 12
    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->a(Lio/bidmachine/iab/vast/tags/StaticResourceTag;)V

    goto :goto_a

    .line 14
    :cond_33
    const-string v4, "IFrameResource"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 15
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->n(Ljava/lang/String;)V

    goto :goto_a

    .line 16
    :cond_43
    const-string v4, "HTMLResource"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 17
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->setHtmlResource(Ljava/lang/String;)V

    goto :goto_a

    .line 18
    :cond_53
    const-string v4, "CompanionClickThrough"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 19
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->m(Ljava/lang/String;)V

    goto :goto_a

    .line 20
    :cond_63
    const-string v4, "CompanionClickTracking"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 21
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->l(Ljava/lang/String;)V

    goto :goto_a

    .line 22
    :cond_73
    const-string v4, "TrackingEvents"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 23
    new-instance v3, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;

    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 24
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;->a()Ljava/util/EnumMap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->a(Ljava/util/Map;)V

    goto :goto_a

    .line 25
    :cond_88
    const-string v4, "AdParameters"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 26
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->setAdParameters(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 28
    :cond_99
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_a

    .line 31
    :cond_9e
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->g:Ljava/util/List;

    if-nez v0, :cond_12

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->g:Ljava/util/List;

    .line 7
    :cond_12
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private m(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->f:Ljava/lang/String;

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/iab/vast/tags/StaticResourceTag;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->c:Lio/bidmachine/iab/vast/tags/StaticResourceTag;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->h:Ljava/util/Map;

    return-void
.end method

.method public getCompanionClickTrackingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->g:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getHtmlForMraid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidUtils;->processRawHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtmlForMraid()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 3
    :cond_5
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->c:Lio/bidmachine/iab/vast/tags/StaticResourceTag;

    if-eqz v0, :cond_1a

    .line 4
    iget-object v1, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 8
    const-string v1, "<script type=\'text/javascript\'>document.write(\'<a style=\"display: flex; width: 100%%; height: 100%%; justify-content: center; align-items: center\" href=\"%s\" target=\"_blank\"><img style=\"border-style: none; height: 100%%; width: 100%%; object-fit: contain;\" src=\"%s\"/></a>\');</script>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->d:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->d:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 18
    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"%s\" height=\"%s\" src=\"%s\"></iframe>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedAttributes()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/tags/CompanionTag;->j:[Ljava/lang/String;

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
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasCreative()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->e:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->c:Lio/bidmachine/iab/vast/tags/StaticResourceTag;

    if-nez v0, :cond_f

    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->d:Ljava/lang/String;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public isValidTag()Z
    .registers 3

    .line 1
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
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
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->i:Ljava/lang/String;

    return-void
.end method

.method public setHtmlResource(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "htmlResource"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/CompanionTag;->e:Ljava/lang/String;

    return-void
.end method
