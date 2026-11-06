###### Class io.bidmachine.iab.vast.tags.VerificationTag (io.bidmachine.iab.vast.tags.VerificationTag)
.class public Lio/bidmachine/iab/vast/tags/VerificationTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final e:[Ljava/lang/String;


# instance fields
.field public c:Lio/bidmachine/iab/vast/tags/JavaScriptResourceTag;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "vendor"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/vast/tags/VerificationTag;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 3
    const-string v2, "Verification"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3f

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
    const-string v4, "JavaScriptResource"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 10
    new-instance v3, Lio/bidmachine/iab/vast/tags/JavaScriptResourceTag;

    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/JavaScriptResourceTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/VerificationTag;->c:Lio/bidmachine/iab/vast/tags/JavaScriptResourceTag;

    goto :goto_a

    .line 11
    :cond_2c
    const-string v4, "VerificationParameters"

    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 12
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/iab/vast/tags/VerificationTag;->d:Ljava/lang/String;

    goto :goto_a

    .line 14
    :cond_3b
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 17
    :cond_3f
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJavaScriptResourceTag()Lio/bidmachine/iab/vast/tags/JavaScriptResourceTag;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VerificationTag;->c:Lio/bidmachine/iab/vast/tags/JavaScriptResourceTag;

    return-object v0
.end method

.method public getSupportedAttributes()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/tags/VerificationTag;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "vendor"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerificationParameters()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VerificationTag;->d:Ljava/lang/String;

    return-object v0
.end method
