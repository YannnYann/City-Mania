###### Class io.bidmachine.iab.vast.tags.StaticResourceTag (io.bidmachine.iab.vast.tags.StaticResourceTag)
.class public Lio/bidmachine/iab/vast/tags/StaticResourceTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "creativeType"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/vast/tags/StaticResourceTag;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public getSupportedAttributes()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/tags/StaticResourceTag;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public isTextSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isValidTag()Z
    .registers 3

    .line 1
    const-string v0, "creativeType"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3
    const-string v1, "image/.*(?i)(gif|jpeg|jpg|bmp|png)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method
