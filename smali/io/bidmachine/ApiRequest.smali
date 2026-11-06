###### Class io.bidmachine.ApiRequest (io.bidmachine.ApiRequest)
.class public Lio/bidmachine/ApiRequest;
.super Lio/bidmachine/core/NetworkRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ApiRequest$ApiEventDataBinder;,
        Lio/bidmachine/ApiRequest$ApiTrackerDataBinder;,
        Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;,
        Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;,
        Lio/bidmachine/ApiRequest$ApiInitDataBinder;,
        Lio/bidmachine/ApiRequest$ApiDataBinder;,
        Lio/bidmachine/ApiRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/core/NetworkRequest<",
        "TRequestDataType;TResponseType;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# static fields
.field static REQUEST_TIMEOUT:I = 0x2710


# instance fields
.field requiredUrl:Ljava/lang/String;

.field timeOut:I


# direct methods
.method public static synthetic $r8$lambda$zKQ_rxlzIBeYkZwrs86Qr72NaCo(Ljava/lang/Throwable;Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Method;",
            "Ljava/lang/String;",
            "TRequestDataType;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/core/NetworkRequest;-><init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lio/bidmachine/core/NetworkRequest$GZIPRequestDataEncoder;

    invoke-direct {p1}, Lio/bidmachine/core/NetworkRequest$GZIPRequestDataEncoder;-><init>()V

    invoke-virtual {p0, p1}, Lio/bidmachine/core/NetworkRequest;->addContentEncoder(Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;Lio/bidmachine/ApiRequest$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest;-><init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ApiRequest;->requiredUrl:Ljava/lang/String;

    return-object v0
.end method

.method public obtainError(Ljava/net/URLConnection;I)Lio/bidmachine/utils/BMError;
    .registers 6

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_b

    const/16 p1, 0x12c

    if-ge p2, p1, :cond_b

    .line 3
    sget-object p1, Lio/bidmachine/utils/BMError;->BMServerNoFill:Lio/bidmachine/utils/BMError;

    return-object p1

    :cond_b
    const/16 p1, 0x190

    const/16 v0, 0x1f4

    if-lt p2, p1, :cond_16

    if-ge p2, v0, :cond_16

    .line 7
    sget-object p1, Lio/bidmachine/utils/BMError;->Request:Lio/bidmachine/utils/BMError;

    goto :goto_25

    :cond_16
    if-lt p2, v0, :cond_1f

    const/16 p1, 0x258

    if-ge p2, p1, :cond_1f

    .line 9
    sget-object p1, Lio/bidmachine/utils/BMError;->Server:Lio/bidmachine/utils/BMError;

    goto :goto_25

    .line 11
    :cond_1f
    const-string p1, "Unknown server error"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 13
    :goto_25
    new-instance v0, Lio/bidmachine/utils/BMError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/utils/BMError;-><init>(Lio/bidmachine/utils/BMError;ILjava/lang/String;)V

    return-object v0
.end method

.method public obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;
    .registers 4

    .line 14
    new-instance v0, Lio/bidmachine/ApiRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lio/bidmachine/ApiRequest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;Ljava/net/URLConnection;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 15
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_f

    .line 16
    sget-object p1, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    return-object p1

    .line 17
    :cond_f
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-nez p1, :cond_1f

    instance-of p1, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz p1, :cond_18

    goto :goto_1f

    .line 20
    :cond_18
    const-string p1, "Unknown api request error"

    invoke-static {p1, p2}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1

    .line 21
    :cond_1f
    :goto_1f
    sget-object p1, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    return-object p1
.end method

.method public bridge synthetic obtainError(Ljava/net/URLConnection;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ApiRequest;->obtainError(Ljava/net/URLConnection;I)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ApiRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public prepareRequestParams(Ljava/net/URLConnection;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/core/NetworkRequest;->prepareRequestParams(Ljava/net/URLConnection;)V

    .line 3
    iget v0, p0, Lio/bidmachine/ApiRequest;->timeOut:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 4
    iget v0, p0, Lio/bidmachine/ApiRequest;->timeOut:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

###### Class io.bidmachine.ApiRequest.ApiAuctionDataBinder (io.bidmachine.ApiRequest$ApiAuctionDataBinder)
.class public Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;
.super Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiAuctionDataBinder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lcom/explorestack/protobuf/openrtb/Request;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setRequest(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 4
    const-string p2, "3.0"

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 5
    const-string p2, "adcom"

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setDomainspec(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 6
    const-string p2, "1.0"

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->setDomainver(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 7
    const-string p2, "Auction Request"

    invoke-static {p2, p1}, Lio/bidmachine/A;->b(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V

    .line 8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p3, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lcom/explorestack/protobuf/openrtb/Request;)[B

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.ApiRequest.ApiDataBinder (io.bidmachine.ApiRequest$ApiDataBinder)
.class public abstract Lio/bidmachine/ApiRequest$ApiDataBinder;
.super Lio/bidmachine/core/NetworkRequest$RequestDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ApiDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "ResponseDataType:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/core/NetworkRequest$RequestDataBinder<",
        "TRequestDataType;TResponseDataType;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;-><init>()V

    return-void
.end method

###### Class io.bidmachine.ApiRequest.ApiEventDataBinder (io.bidmachine.ApiRequest$ApiEventDataBinder)
.class public Lio/bidmachine/ApiRequest$ApiEventDataBinder;
.super Lio/bidmachine/ApiRequest$ApiDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiEventDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ApiRequest$ApiDataBinder<",
        "Lio/bidmachine/protobuf/analytics/events/SDKEvent;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ApiRequest$ApiDataBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiEventDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/analytics/events/SDKEvent;",
            "Ljava/lang/Void;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lio/bidmachine/protobuf/analytics/events/SDKEvent;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/analytics/events/SDKEvent;",
            "Ljava/lang/Void;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "Lio/bidmachine/protobuf/analytics/events/SDKEvent;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 2
    invoke-virtual {p3}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p3, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiEventDataBinder;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lio/bidmachine/protobuf/analytics/events/SDKEvent;)[B

    move-result-object p1

    return-object p1
.end method

.method public prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/analytics/events/SDKEvent;",
            "Ljava/lang/Void;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p1, "Content-Type"

    const-string v0, "application/x-protobuf"

    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.ApiRequest.ApiInitDataBinder (io.bidmachine.ApiRequest$ApiInitDataBinder)
.class public Lio/bidmachine/ApiRequest$ApiInitDataBinder;
.super Lio/bidmachine/ApiRequest$ApiDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiInitDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ApiRequest$ApiDataBinder<",
        "Lio/bidmachine/protobuf/InitRequest;",
        "Lio/bidmachine/protobuf/InitResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ApiRequest$ApiDataBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lio/bidmachine/protobuf/InitResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/InitRequest;",
            "Lio/bidmachine/protobuf/InitResponse;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Lio/bidmachine/protobuf/InitResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {p3}, Lio/bidmachine/protobuf/InitResponse;->parseFrom([B)Lio/bidmachine/protobuf/InitResponse;

    move-result-object p1

    .line 3
    const-string p2, "Init Response"

    invoke-static {p2, p1}, Lio/bidmachine/A;->b(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V

    return-object p1
.end method

.method public bridge synthetic createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiInitDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lio/bidmachine/protobuf/InitResponse;

    move-result-object p1

    return-object p1
.end method

.method public obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lio/bidmachine/protobuf/InitRequest;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/InitRequest;",
            "Lio/bidmachine/protobuf/InitResponse;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "Lio/bidmachine/protobuf/InitRequest;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    const-string p1, "Init Request"

    invoke-static {p1, p3}, Lio/bidmachine/A;->b(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V

    if-eqz p3, :cond_c

    .line 4
    invoke-virtual {p3}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p3, Lio/bidmachine/protobuf/InitRequest;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiInitDataBinder;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lio/bidmachine/protobuf/InitRequest;)[B

    move-result-object p1

    return-object p1
.end method

.method public prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/InitRequest;",
            "Lio/bidmachine/protobuf/InitResponse;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p1, "Content-Type"

    const-string v0, "application/x-protobuf"

    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.ApiRequest.ApiResponseAuctionDataBinder (io.bidmachine.ApiRequest$ApiResponseAuctionDataBinder)
.class public Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;
.super Lio/bidmachine/ApiRequest$ApiDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiResponseAuctionDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ApiRequest$ApiDataBinder<",
        "Lcom/explorestack/protobuf/openrtb/Request;",
        "Lcom/explorestack/protobuf/openrtb/Response;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ApiRequest$ApiDataBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lcom/explorestack/protobuf/openrtb/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Lcom/explorestack/protobuf/openrtb/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {p3}, Lcom/explorestack/protobuf/openrtb/Openrtb;->parseFrom([B)Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 4
    const-string p2, "Auction Response"

    invoke-static {p2, p1}, Lio/bidmachine/A;->b(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object p1

    return-object p1
.end method

.method public obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lcom/explorestack/protobuf/openrtb/Request;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    check-cast p3, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lcom/explorestack/protobuf/openrtb/Request;)[B

    move-result-object p1

    return-object p1
.end method

.method public prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p1, "Content-Type"

    const-string v0, "application/x-protobuf"

    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.ApiRequest.ApiTrackerDataBinder (io.bidmachine.ApiRequest$ApiTrackerDataBinder)
.class public Lio/bidmachine/ApiRequest$ApiTrackerDataBinder;
.super Lio/bidmachine/ApiRequest$ApiDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiTrackerDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ApiRequest$ApiDataBinder<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ApiRequest$ApiDataBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest$ApiTrackerDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "Ljava/lang/Object;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/UserAgentManager;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3
    const-string v0, "User-Agent"

    invoke-virtual {p2, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

###### Class io.bidmachine.ApiRequest.Builder (io.bidmachine.ApiRequest$Builder)
.class public Lio/bidmachine/ApiRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "ResponseDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callback:Lio/bidmachine/core/NetworkRequest$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/core/NetworkRequest$Callback<",
            "TResponseDataType;",
            "Lio/bidmachine/utils/BMError;",
            ">;"
        }
    .end annotation
.end field

.field private cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

.field private dataBinder:Lio/bidmachine/ApiRequest$ApiDataBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/ApiRequest$ApiDataBinder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation
.end field

.field private method:Lio/bidmachine/core/NetworkRequest$Method;

.field private requestData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestDataType;"
        }
    .end annotation
.end field

.field private timeOut:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget v0, Lio/bidmachine/ApiRequest;->REQUEST_TIMEOUT:I

    iput v0, p0, Lio/bidmachine/ApiRequest$Builder;->timeOut:I

    .line 10
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    iput-object v0, p0, Lio/bidmachine/ApiRequest$Builder;->method:Lio/bidmachine/core/NetworkRequest$Method;

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/ApiRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/ApiRequest<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ApiRequest;

    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->method:Lio/bidmachine/core/NetworkRequest$Method;

    iget-object v2, p0, Lio/bidmachine/ApiRequest$Builder;->requestData:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lio/bidmachine/ApiRequest;-><init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;Lio/bidmachine/ApiRequest$a;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->callback:Lio/bidmachine/core/NetworkRequest$Callback;

    invoke-virtual {v0, v1}, Lio/bidmachine/core/NetworkRequest;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)V

    .line 5
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

    invoke-virtual {v0, v1}, Lio/bidmachine/core/NetworkRequest;->setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)V

    .line 6
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->dataBinder:Lio/bidmachine/ApiRequest$ApiDataBinder;

    invoke-virtual {v0, v1}, Lio/bidmachine/core/NetworkRequest;->setDataBinder(Lio/bidmachine/core/NetworkRequest$RequestDataBinder;)V

    .line 7
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->url:Ljava/lang/String;

    iput-object v1, v0, Lio/bidmachine/ApiRequest;->requiredUrl:Ljava/lang/String;

    .line 8
    iget v1, p0, Lio/bidmachine/ApiRequest$Builder;->timeOut:I

    iput v1, v0, Lio/bidmachine/ApiRequest;->timeOut:I

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ApiRequest$Builder;->url:Ljava/lang/String;

    return-object v0
.end method

.method public request()Lio/bidmachine/ApiRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/ApiRequest<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ApiRequest$Builder;->build()Lio/bidmachine/ApiRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/core/NetworkRequest;->request()V

    return-object v0
.end method

.method public setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)Lio/bidmachine/ApiRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Callback<",
            "TResponseDataType;",
            "Lio/bidmachine/utils/BMError;",
            ">;)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->callback:Lio/bidmachine/core/NetworkRequest$Callback;

    return-object p0
.end method

.method public setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)Lio/bidmachine/ApiRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$CancelCallback;",
            ")",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

    return-object p0
.end method

.method public setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ApiRequest$ApiDataBinder<",
            "TRequestDataType;TResponseDataType;>;)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->dataBinder:Lio/bidmachine/ApiRequest$ApiDataBinder;

    return-object p0
.end method

.method public setLoadingTimeOut(I)Lio/bidmachine/ApiRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    if-lez p1, :cond_3

    goto :goto_5

    .line 1
    :cond_3
    sget p1, Lio/bidmachine/ApiRequest;->REQUEST_TIMEOUT:I

    :goto_5
    iput p1, p0, Lio/bidmachine/ApiRequest$Builder;->timeOut:I

    return-object p0
.end method

.method public setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Method;",
            ")",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->method:Lio/bidmachine/core/NetworkRequest$Method;

    return-object p0
.end method

.method public setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestDataType;)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->requestData:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

###### Class io.bidmachine.ApiRequest.a (io.bidmachine.ApiRequest$a)
.class public abstract synthetic Lio/bidmachine/ApiRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ApiRequest$$ExternalSyntheticLambda0 (io.bidmachine.ApiRequest$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ApiRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;

.field public final synthetic f$1:Ljava/net/URLConnection;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Ljava/net/URLConnection;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ApiRequest$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    iput-object p2, p0, Lio/bidmachine/ApiRequest$$ExternalSyntheticLambda0;->f$1:Ljava/net/URLConnection;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/ApiRequest$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    iget-object v1, p0, Lio/bidmachine/ApiRequest$$ExternalSyntheticLambda0;->f$1:Ljava/net/URLConnection;

    invoke-static {v0, v1}, Lio/bidmachine/ApiRequest;->$r8$lambda$zKQ_rxlzIBeYkZwrs86Qr72NaCo(Ljava/lang/Throwable;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
