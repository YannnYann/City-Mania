###### Class com.unity3d.ads.core.domain.SetInitializationState (com.unity3d.ads.core.domain.SetInitializationState)
.class public interface abstract Lcom/unity3d/ads/core/domain/SetInitializationState;
.super Ljava/lang/Object;
.source "SetInitializationState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/SetInitializationState$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract invoke(Lcom/unity3d/ads/core/data/model/InitializationState;Z)V
.end method

###### Class com.unity3d.ads.core.domain.SetInitializationState.DefaultImpls (com.unity3d.ads.core.domain.SetInitializationState$DefaultImpls)
.class public final Lcom/unity3d/ads/core/domain/SetInitializationState$DefaultImpls;
.super Ljava/lang/Object;
.source "SetInitializationState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/SetInitializationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/SetInitializationState;Lcom/unity3d/ads/core/data/model/InitializationState;ZILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 6
    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/unity3d/ads/core/domain/SetInitializationState;->invoke(Lcom/unity3d/ads/core/data/model/InitializationState;Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invoke"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
