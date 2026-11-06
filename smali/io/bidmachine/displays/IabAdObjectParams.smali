###### Class io.bidmachine.displays.IabAdObjectParams (io.bidmachine.displays.IabAdObjectParams)
.class public Lio/bidmachine/displays/IabAdObjectParams;
.super Lio/bidmachine/models/AdObjectParams;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/adcom/Ad;)V
    .registers 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/models/AdObjectParams;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "creativeAdm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_18

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final setCreativeAdm(Ljava/lang/String;)V
    .registers 4

    const-string v0, "creativeAdm"

    if-eqz p1, :cond_13

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_13

    .line 6
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
