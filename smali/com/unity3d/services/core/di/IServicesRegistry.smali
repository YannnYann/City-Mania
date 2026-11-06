###### Class com.unity3d.services.core.di.IServicesRegistry (com.unity3d.services.core.di.IServicesRegistry)
.class public interface abstract Lcom/unity3d/services/core/di/IServicesRegistry;
.super Ljava/lang/Object;
.source "IServicesRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/di/IServicesRegistry$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/reflect/KClass<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public abstract getServices()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/unity3d/services/core/di/ServiceKey;",
            "Lkotlin/Lazy<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unity3d/services/core/di/ServiceKey;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract resolveServiceOrNull(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unity3d/services/core/di/ServiceKey;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract updateService(Lcom/unity3d/services/core/di/ServiceKey;Lkotlin/Lazy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/unity3d/services/core/di/ServiceKey;",
            "Lkotlin/Lazy<",
            "+TT;>;)V"
        }
    .end annotation
.end method

###### Class com.unity3d.services.core.di.IServicesRegistry.DefaultImpls (com.unity3d.services.core.di.IServicesRegistry$DefaultImpls)
.class public final Lcom/unity3d/services/core/di/IServicesRegistry$DefaultImpls;
.super Ljava/lang/Object;
.source "IServicesRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/di/IServicesRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic getService$default(Lcom/unity3d/services/core/di/IServicesRegistry;Ljava/lang/String;Lkotlin/reflect/KClass;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-nez p4, :cond_d

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    .line 18
    const-string p1, ""

    :cond_8
    invoke-interface {p0, p1, p2}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getService"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
