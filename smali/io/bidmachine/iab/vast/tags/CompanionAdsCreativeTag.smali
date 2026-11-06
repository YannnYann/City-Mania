###### Class io.bidmachine.iab.vast.tags.CompanionAdsCreativeTag (io.bidmachine.iab.vast.tags.CompanionAdsCreativeTag)
.class public Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;
.super Lio/bidmachine/iab/vast/tags/CreativeContentTag;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/CreativeContentTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->c:Ljava/util/List;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 8
    const-string v2, "CompanionAds"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4b

    .line 10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_1f

    goto :goto_11

    .line 13
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 14
    const-string v4, "Companion"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 15
    new-instance v3, Lio/bidmachine/iab/vast/tags/CompanionTag;

    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/CompanionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 16
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->isValidTag()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 17
    iget-object v4, p0, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3c
    const/4 v3, 0x0

    .line 19
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "VastXmlTag"

    const-string v5, "Creative Companion: is not valid. Skipping it."

    invoke-static {v4, v5, v3}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    .line 22
    :cond_47
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11

    .line 25
    :cond_4b
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCompanionTagList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/CompanionTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->c:Ljava/util/List;

    return-object v0
.end method
