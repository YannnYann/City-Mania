###### Class com.unity3d.ads.gatewayclient.RequestUrlFactory (com.unity3d.ads.gatewayclient.RequestUrlFactory)
.class public interface abstract Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;
.super Ljava/lang/Object;
.source "RequestUrlFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/gatewayclient/RequestUrlFactory$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getRequestUrl(Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/String;)Ljava/lang/String;
.end method

###### Class com.unity3d.ads.gatewayclient.RequestUrlFactory.DefaultImpls (com.unity3d.ads.gatewayclient.RequestUrlFactory$DefaultImpls)
.class public final Lcom/unity3d/ads/gatewayclient/RequestUrlFactory$DefaultImpls;
.super Ljava/lang/Object;
.source "RequestUrlFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic getRequestUrl$default(Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 6
    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;->getRequestUrl(Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getRequestUrl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
