###### Class io.bidmachine.displays.DisplayAdObjectParams (io.bidmachine.displays.DisplayAdObjectParams)
.class public Lio/bidmachine/displays/DisplayAdObjectParams;
.super Lio/bidmachine/displays/IabAdObjectParams;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/adcom/Ad;)V
    .registers 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/displays/IabAdObjectParams;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getEventList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/models/AdObjectParams;->prepareEvents(Ljava/util/List;)V

    return-void
.end method
