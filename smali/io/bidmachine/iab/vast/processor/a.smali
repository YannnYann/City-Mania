###### Class io.bidmachine.iab.vast.processor.a (io.bidmachine.iab.vast.processor.a)
.class public Lio/bidmachine/iab/vast/processor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lio/bidmachine/iab/vast/processor/a;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/vast/tags/VastXmlTag;)V
    .registers 6

    .line 2
    const-string v0, "followAdditionalWrappers"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getBooleanAttributeValueByName(Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    const-string v2, "allowMultipleAds"

    invoke-virtual {p1, v2, v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getBooleanAttributeValueByName(Ljava/lang/String;Z)Z

    move-result v2

    .line 6
    const-string v3, "fallbackOnNoAd"

    invoke-virtual {p1, v3, v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getBooleanAttributeValueByName(Ljava/lang/String;Z)Z

    move-result p1

    .line 7
    invoke-direct {p0, v0, v2, p1}, Lio/bidmachine/iab/vast/processor/a;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "followAdditionalWrappers",
            "allowMultipleAds",
            "fallbackOnNoAd"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/processor/a;->a:Z

    .line 10
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/processor/a;->b:Z

    .line 11
    iput-boolean p3, p0, Lio/bidmachine/iab/vast/processor/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/a;->b:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/a;->c:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/a;->a:Z

    return v0
.end method
