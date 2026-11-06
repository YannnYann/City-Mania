###### Class io.bidmachine.iab.vast.tags.PostBannerTag (io.bidmachine.iab.vast.tags.PostBannerTag)
.class public Lio/bidmachine/iab/vast/tags/PostBannerTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# instance fields
.field public final c:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final d:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final e:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final f:Lio/bidmachine/iab/utils/IabElementStyle;

.field public g:Ljava/lang/String;

.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 4
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 6
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 8
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->h:F

    .line 15
    iput v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->i:F

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->j:Z

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->k:Z

    .line 18
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->l:Z

    .line 20
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->m:Z

    .line 21
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->n:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    const-string v2, "Postbanner"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e2

    .line 3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_15

    goto :goto_7

    .line 7
    :cond_15
    :try_start_15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 8
    const-string v4, "CloseTime"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 9
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 11
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->h:F

    goto :goto_7

    :catchall_32
    move-exception v3

    goto/16 :goto_db

    .line 13
    :cond_35
    const-string v4, "Duration"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 14
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 16
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->i:F

    goto :goto_7

    .line 18
    :cond_4e
    const-string v4, "ClosableView"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 19
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_7

    .line 20
    :cond_5c
    const-string v4, "Countdown"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 21
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_7

    .line 22
    :cond_6a
    const-string v4, "LoadingView"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 23
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_7

    .line 24
    :cond_78
    const-string v4, "Progress"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 25
    iget-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {p1, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lio/bidmachine/iab/utils/IabElementStyle;)V

    goto :goto_7

    .line 26
    :cond_86
    const-string v4, "UseNativeClose"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 27
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->l:Z

    goto/16 :goto_7

    .line 28
    :cond_96
    const-string v4, "IgnoresSafeAreaLayoutGuide"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 29
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->k:Z

    goto/16 :goto_7

    .line 30
    :cond_a6
    const-string v4, "ProductLink"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 31
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->g:Ljava/lang/String;

    goto/16 :goto_7

    .line 32
    :cond_b6
    const-string v4, "R1"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 33
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->m:Z

    goto/16 :goto_7

    .line 34
    :cond_c6
    const-string v4, "R2"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 35
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->n:Z

    goto/16 :goto_7

    .line 37
    :cond_d6
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_d9
    .catchall {:try_start_15 .. :try_end_d9} :catchall_32

    goto/16 :goto_7

    .line 40
    :goto_db
    const-string v4, "VastXmlTag"

    invoke-static {v4, v3}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 43
    :cond_e2
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCloseStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->c:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getCloseTimeSec()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->h:F

    return v0
.end method

.method public getCountDownStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->d:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getDurationSec()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->i:F

    return v0
.end method

.method public getLoadingStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->e:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getProductLink()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public isForceUseNativeClose()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->l:Z

    return v0
.end method

.method public isR1()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->m:Z

    return v0
.end method

.method public isR2()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->n:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->j:Z

    return v0
.end method

.method public setCloseTimeSec(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeTimeSec"
        }
    .end annotation

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->h:F

    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/tags/PostBannerTag;->j:Z

    return-void
.end method
