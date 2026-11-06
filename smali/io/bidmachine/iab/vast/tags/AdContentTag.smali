###### Class io.bidmachine.iab.vast.tags.AdContentTag (io.bidmachine.iab.vast.tags.AdContentTag)
.class public Lio/bidmachine/iab/vast/tags/AdContentTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# instance fields
.field public c:Lio/bidmachine/iab/vast/tags/AdSystemTag;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/iab/vast/tags/AdSystemTag;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->c:Lio/bidmachine/iab/vast/tags/AdSystemTag;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->d:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->e:Ljava/util/List;

    return-void
.end method

.method public e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    const-string v2, "Creatives"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_33

    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v0, :cond_1a

    goto :goto_c

    .line 7
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8
    const-string v5, "Creative"

    invoke-static {v4, v5}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 9
    new-instance v4, Lio/bidmachine/iab/vast/tags/CreativeTag;

    invoke-direct {v4, p1}, Lio/bidmachine/iab/vast/tags/CreativeTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 11
    :cond_2f
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    .line 14
    :cond_33
    invoke-interface {p1, v5, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final f(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/iab/vast/tags/ExtensionTag;
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    const-string v2, "Extension"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lio/bidmachine/iab/vast/tags/ExtensionTag;

    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/ExtensionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    const-string v4, "appodeal"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_21

    .line 6
    new-instance v0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_51

    .line 7
    :cond_21
    const-string v4, "AdVerifications"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    move-object v3, v1

    .line 8
    :goto_2a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_4b

    .line 9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v0, :cond_37

    goto :goto_2a

    .line 12
    :cond_37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-static {v6, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 14
    new-instance v3, Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;

    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2a

    .line 16
    :cond_47
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2a

    :cond_4b
    move-object v0, v3

    goto :goto_51

    .line 20
    :cond_4d
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, v1

    .line 23
    :goto_51
    invoke-interface {p1, v5, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    const-string v2, "Extensions"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_34

    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v0, :cond_1a

    goto :goto_c

    .line 7
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8
    const-string v5, "Extension"

    invoke-static {v4, v5}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->f(Lorg/xmlpull/v1/XmlPullParser;)Lio/bidmachine/iab/vast/tags/ExtensionTag;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 11
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 14
    :cond_30
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    .line 17
    :cond_34
    invoke-interface {p1, v5, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public getCreativeTagList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/CreativeTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->d:Ljava/util/List;

    return-object v0
.end method

.method public getErrorUrlList()Ljava/util/List;
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
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->g:Ljava/util/List;

    return-object v0
.end method

.method public getExtensionTagList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/ExtensionTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->e:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionUrlList()Ljava/util/List;
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
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->f:Ljava/util/List;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->g:Ljava/util/List;

    if-nez v0, :cond_12

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->g:Ljava/util/List;

    .line 7
    :cond_12
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->f:Ljava/util/List;

    if-nez v0, :cond_12

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->f:Ljava/util/List;

    .line 7
    :cond_12
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AdContentTag;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
