###### Class io.bidmachine.util.network.ResponseMetadata (io.bidmachine.util.network.ResponseMetadata)
.class public final Lio/bidmachine/util/network/ResponseMetadata;
.super Ljava/lang/Object;
.source "ResponseMetadata.kt"


# instance fields
.field public final code:I

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;ILjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lio/bidmachine/util/network/ResponseMetadata;->url:Ljava/net/URL;

    .line 7
    iput p2, p0, Lio/bidmachine/util/network/ResponseMetadata;->code:I

    .line 8
    iput-object p3, p0, Lio/bidmachine/util/network/ResponseMetadata;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getCode()I
    .registers 2

    .line 7
    iget v0, p0, Lio/bidmachine/util/network/ResponseMetadata;->code:I

    return v0
.end method

.method public final getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lio/bidmachine/util/network/ResponseMetadata;->headers:Ljava/util/Map;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_18

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getUrl()Ljava/net/URL;
    .registers 2

    .line 6
    iget-object v0, p0, Lio/bidmachine/util/network/ResponseMetadata;->url:Ljava/net/URL;

    return-object v0
.end method
