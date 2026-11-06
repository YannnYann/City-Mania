###### Class com.unity3d.ads.core.domain.GetInitializationState (com.unity3d.ads.core.domain.GetInitializationState)
.class public interface abstract Lcom/unity3d/ads/core/domain/GetInitializationState;
.super Ljava/lang/Object;
.source "GetInitializationState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/GetInitializationState$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract invoke(Z)Lcom/unity3d/ads/core/data/model/InitializationState;
.end method

###### Class com.unity3d.ads.core.domain.GetInitializationState.DefaultImpls (com.unity3d.ads.core.domain.GetInitializationState$DefaultImpls)
.class public final Lcom/unity3d/ads/core/domain/GetInitializationState$DefaultImpls;
.super Ljava/lang/Object;
.source "GetInitializationState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/GetInitializationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/GetInitializationState;ZILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/InitializationState;
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 6
    :cond_7
    invoke-interface {p0, p1}, Lcom/unity3d/ads/core/domain/GetInitializationState;->invoke(Z)Lcom/unity3d/ads/core/data/model/InitializationState;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invoke"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
