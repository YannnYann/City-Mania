###### Class io.bidmachine.iab.vast.tags.InLineAdTag (io.bidmachine.iab.vast.tags.InLineAdTag)
.class public Lio/bidmachine/iab/vast/tags/InLineAdTag;
.super Lio/bidmachine/iab/vast/tags/AdContentTag;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 3
    const-string v2, "InLine"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_71

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
    const-string v4, "Creatives"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 10
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->a(Ljava/util/List;)V

    goto :goto_a

    .line 11
    :cond_2c
    const-string v4, "Extensions"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 12
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->b(Ljava/util/List;)V

    goto :goto_a

    .line 13
    :cond_3c
    const-string v4, "Impression"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 14
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->m(Ljava/lang/String;)V

    goto :goto_a

    .line 15
    :cond_4c
    const-string v4, "Error"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 16
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->l(Ljava/lang/String;)V

    goto :goto_a

    .line 17
    :cond_5c
    const-string v4, "AdSystem"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 18
    new-instance v3, Lio/bidmachine/iab/vast/tags/AdSystemTag;

    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/AdSystemTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->a(Lio/bidmachine/iab/vast/tags/AdSystemTag;)V

    goto :goto_a

    .line 20
    :cond_6d
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 23
    :cond_71
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
