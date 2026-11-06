###### Class io.bidmachine.iab.vast.processor.VastProcessorResult (io.bidmachine.iab.vast.processor.VastProcessorResult)
.class public Lio/bidmachine/iab/vast/processor/VastProcessorResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public b:Lio/bidmachine/iab/vast/processor/VastAd;

.field public c:Lio/bidmachine/iab/vast/VastSpecError;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a:Ljava/util/List;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lio/bidmachine/iab/vast/VastSpecError;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->c:Lio/bidmachine/iab/vast/VastSpecError;

    return-void
.end method

.method public a(Lio/bidmachine/iab/vast/processor/VastAd;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->b:Lio/bidmachine/iab/vast/processor/VastAd;

    return-void
.end method

.method public a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V
    .registers 5

    .line 5
    invoke-virtual {p0, p2}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/VastSpecError;->getCode()I

    move-result p2

    const-string v1, "params_error_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->getErrorUrlList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3d

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 11
    invoke-static {p2, v0}, Lio/bidmachine/iab/vast/VastUrlProcessorRegistry;->processUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 13
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3d
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 4
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->d:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->d:Z

    return v0
.end method

.method public getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->b:Lio/bidmachine/iab/vast/processor/VastAd;

    return-object v0
.end method

.method public getVastSpecError()Lio/bidmachine/iab/vast/VastSpecError;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->c:Lio/bidmachine/iab/vast/VastSpecError;

    return-object v0
.end method

.method public hasVastAd()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->b:Lio/bidmachine/iab/vast/processor/VastAd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
