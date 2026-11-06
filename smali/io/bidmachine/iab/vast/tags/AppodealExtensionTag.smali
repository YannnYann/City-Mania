###### Class io.bidmachine.iab.vast.tags.AppodealExtensionTag (io.bidmachine.iab.vast.tags.AppodealExtensionTag)
.class public Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;
.super Lio/bidmachine/iab/vast/tags/ExtensionTag;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/VastExtension;


# instance fields
.field public final d:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final e:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final f:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final g:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final h:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final i:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final j:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final k:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public o:Lio/bidmachine/iab/vast/tags/CompanionTag;

.field public p:Ljava/lang/Boolean;

.field public q:Ljava/lang/Float;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/ExtensionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 4
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 6
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 8
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 10
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 12
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 14
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 16
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->k:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 18
    new-instance v0, Lio/bidmachine/iab/vast/tags/PostBannerTag;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/tags/PostBannerTag;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->r:Z

    .line 32
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->s:Z

    .line 33
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->t:Z

    .line 34
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->u:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 41
    const-string v2, "Extension"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_52
    :goto_52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2c3

    .line 43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_60

    goto :goto_52

    .line 46
    :cond_60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 47
    const-string v4, "Video"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 48
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_52

    .line 49
    :cond_72
    const-string v4, "LoadingView"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 50
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_52

    .line 51
    :cond_80
    const-string v4, "Countdown"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 52
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->k:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_52

    .line 53
    :cond_8e
    const-string v4, "Progress"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 54
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_52

    .line 55
    :cond_9c
    const-string v4, "ClosableView"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 56
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_52

    .line 57
    :cond_aa
    const-string v4, "Mute"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 58
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_52

    .line 59
    :cond_b8
    const-string v4, "CTA"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 60
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_52

    .line 61
    :cond_c6
    const-string v4, "RepeatView"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 62
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto/16 :goto_52

    .line 63
    :cond_d5
    const-string v4, "Postbanner"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 64
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    invoke-virtual {v3, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_52

    .line 65
    :cond_e4
    const-string v4, "Autorotate"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 66
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->p:Ljava/lang/Boolean;

    goto/16 :goto_52

    .line 67
    :cond_f8
    const-string v4, "R1"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 68
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->t:Z

    goto/16 :goto_52

    .line 69
    :cond_108
    const-string v4, "R2"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_118

    .line 70
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->u:Z

    goto/16 :goto_52

    .line 71
    :cond_118
    const-string v4, "ForceOrientation"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 72
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->g(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->v:Ljava/lang/Integer;

    goto/16 :goto_52

    .line 73
    :cond_12c
    const-string v4, "CtaText"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13f

    .line 74
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setContent(Ljava/lang/String;)V

    goto/16 :goto_52

    .line 75
    :cond_13f
    const-string v4, "ShowCta"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_156

    .line 76
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setVisible(Ljava/lang/Boolean;)V

    goto/16 :goto_52

    .line 77
    :cond_156
    const-string v4, "ShowMute"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 78
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setVisible(Ljava/lang/Boolean;)V

    goto/16 :goto_52

    .line 79
    :cond_16d
    const-string v4, "ShowCompanion"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_180

    .line 80
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->setVisible(Z)V

    goto/16 :goto_52

    .line 81
    :cond_180
    const-string v4, "CompanionCloseTime"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19a

    .line 82
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->f(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_52

    .line 84
    iget-object v4, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    invoke-virtual {v4, v3}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->setCloseTimeSec(I)V

    goto/16 :goto_52

    .line 86
    :cond_19a
    const-string v4, "Muted"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1aa

    .line 87
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->r:Z

    goto/16 :goto_52

    .line 88
    :cond_1aa
    const-string v4, "VideoClickable"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ba

    .line 89
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->s:Z

    goto/16 :goto_52

    .line 90
    :cond_1ba
    const-string v4, "CtaXPosition"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 91
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_52

    .line 92
    :cond_1d1
    const-string v4, "CtaYPosition"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e8

    .line 93
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_52

    .line 94
    :cond_1e8
    const-string v4, "CloseXPosition"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ff

    .line 95
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_52

    .line 96
    :cond_1ff
    const-string v4, "CloseYPosition"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_216

    .line 97
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_52

    .line 98
    :cond_216
    const-string v4, "MuteXPosition"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22d

    .line 99
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_52

    .line 100
    :cond_22d
    const-string v4, "MuteYPosition"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_244

    .line 101
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_52

    .line 102
    :cond_244
    const-string v4, "AssetsColor"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25a

    .line 103
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 105
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->m:Ljava/lang/Integer;

    goto/16 :goto_52

    .line 107
    :cond_25a
    const-string v4, "AssetsBackgroundColor"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_270

    .line 108
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 110
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->n:Ljava/lang/Integer;

    goto/16 :goto_52

    .line 112
    :cond_270
    const-string v4, "Companion"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28d

    .line 113
    new-instance v3, Lio/bidmachine/iab/vast/tags/CompanionTag;

    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/CompanionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 114
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->isValidTag()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->hasCreative()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 115
    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->o:Lio/bidmachine/iab/vast/tags/CompanionTag;

    goto/16 :goto_52

    .line 117
    :cond_28d
    const-string v4, "CloseTime"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a7

    .line 118
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 120
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->q:Ljava/lang/Float;

    goto/16 :goto_52

    .line 122
    :cond_2a7
    const-string v4, "ShowProgress"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2be

    .line 123
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setVisible(Ljava/lang/Boolean;)V

    goto/16 :goto_52

    .line 125
    :cond_2be
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_52

    .line 128
    :cond_2c3
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAssetsBackgroundColor()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAssetsColor()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCloseStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getCloseTimeSec()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->q:Ljava/lang/Float;

    return-object v0
.end method

.method public getCompanionTag()Lio/bidmachine/iab/vast/tags/CompanionTag;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->o:Lio/bidmachine/iab/vast/tags/CompanionTag;

    return-object v0
.end method

.method public getCountDownStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->k:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getCtaStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getForceOrientation()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->v:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLoadingStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getMuteStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getPostBannerTag()Lio/bidmachine/iab/vast/tags/PostBannerTag;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->l:Lio/bidmachine/iab/vast/tags/PostBannerTag;

    return-object v0
.end method

.method public getProgressStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getRepeatStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getVideoStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public isAutoRotate()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMuted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->r:Z

    return v0
.end method

.method public isR1()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->t:Z

    return v0
.end method

.method public isR2()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->u:Z

    return v0
.end method

.method public isVideoClickable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;->s:Z

    return v0
.end method
