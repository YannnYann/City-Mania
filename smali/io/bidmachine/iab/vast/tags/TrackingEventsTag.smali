###### Class io.bidmachine.iab.vast.tags.TrackingEventsTag (io.bidmachine.iab.vast.tags.TrackingEventsTag)
.class public Lio/bidmachine/iab/vast/tags/TrackingEventsTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;->c:Ljava/util/EnumMap;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 8
    const-string v2, "TrackingEvents"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_73

    .line 10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_21

    goto :goto_13

    .line 13
    :cond_21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 14
    const-string v4, "Tracking"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 15
    new-instance v3, Lio/bidmachine/iab/vast/tags/TrackingTag;

    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/TrackingTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 17
    const-string v4, "event"

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    :try_start_38
    invoke-static {v3}, Lio/bidmachine/iab/vast/TrackingEvent;->valueOf(Ljava/lang/String;)Lio/bidmachine/iab/vast/TrackingEvent;

    move-result-object v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_3d

    goto :goto_49

    .line 22
    :catch_3d
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "VastXmlTag"

    const-string v5, "Event: %s is not valid. Skipping it."

    invoke-static {v4, v5, v3}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v1

    :goto_49
    if-eqz v3, :cond_6b

    .line 25
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 26
    iget-object v5, p0, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;->c:Ljava/util/EnumMap;

    invoke-virtual {v5, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_5d

    .line 28
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 30
    :cond_5d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v4, p0, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;->c:Ljava/util/EnumMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 35
    :cond_6b
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_13

    .line 38
    :cond_6f
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_13

    .line 41
    :cond_73
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/EnumMap;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/TrackingEventsTag;->c:Ljava/util/EnumMap;

    return-object v0
.end method
