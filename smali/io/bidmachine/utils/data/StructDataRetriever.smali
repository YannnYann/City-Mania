###### Class io.bidmachine.utils.data.StructDataRetriever (io.bidmachine.utils.data.StructDataRetriever)
.class public Lio/bidmachine/utils/data/StructDataRetriever;
.super Lio/bidmachine/utils/data/MapDataRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/utils/data/MapDataRetriever<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/utils/data/MapDataRetriever;-><init>()V

    return-void
.end method


# virtual methods
.method public setStruct(Lcom/explorestack/protobuf/Struct;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtils;->toMapOrNull(Lcom/explorestack/protobuf/Struct;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/utils/data/MapDataRetriever;->setParams(Ljava/util/Map;)V

    return-void
.end method
