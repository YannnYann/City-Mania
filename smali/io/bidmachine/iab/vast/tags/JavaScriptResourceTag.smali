###### Class io.bidmachine.iab.vast.tags.JavaScriptResourceTag (io.bidmachine.iab.vast.tags.JavaScriptResourceTag)
.class public Lio/bidmachine/iab/vast/tags/JavaScriptResourceTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "apiFramework"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/vast/tags/JavaScriptResourceTag;->c:[Ljava/lang/String;

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
    sget-object v0, Lio/bidmachine/iab/vast/tags/JavaScriptResourceTag;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public isTextSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
