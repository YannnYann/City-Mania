###### Class io.bidmachine.iab.vast.tags.MediaFileTag (io.bidmachine.iab.vast.tags.MediaFileTag)
.class public Lio/bidmachine/iab/vast/tags/MediaFileTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    const-string v10, "maintainAspectRatio"

    const-string v11, "apiFramework"

    const-string v0, "delivery"

    const-string v1, "type"

    const-string v2, "width"

    const-string v3, "height"

    const-string v4, "codec"

    const-string v5, "id"

    const-string v6, "bitrate"

    const-string v7, "minBitrate"

    const-string v8, "maxBitrate"

    const-string v9, "scalable"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/vast/tags/MediaFileTag;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 1
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSupportedAttributes()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/tags/MediaFileTag;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

.method public isTextSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isValidTag()Z
    .registers 4

    .line 1
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    return v0

    :cond_30
    const/4 v0, 0x0

    return v0
.end method
