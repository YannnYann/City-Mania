###### Class com.unity3d.ads.core.domain.IsCronetFallbackAvailable (com.unity3d.ads.core.domain.IsCronetFallbackAvailable)
.class public final Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;
.super Ljava/lang/Object;
.source "IsCronetFallbackAvailable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIsCronetFallbackAvailable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsCronetFallbackAvailable.kt\ncom/unity3d/ads/core/domain/IsCronetFallbackAvailable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,17:1\n1#2:18\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable$Companion;

.field public static final FALLBACK_PROVIDER_CLASS:Ljava/lang/String; = "org.chromium.net.impl.JavaCronetProvider"


# instance fields
.field private final className:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;->Companion:Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;->className:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 9
    const-string p1, "org.chromium.net.impl.JavaCronetProvider"

    .line 8
    :cond_6
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke()Z
    .registers 3

    .line 11
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_18

    :catchall_d
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_18
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.unity3d.ads.core.domain.IsCronetFallbackAvailable.Companion (com.unity3d.ads.core.domain.IsCronetFallbackAvailable$Companion)
.class public final Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable$Companion;
.super Ljava/lang/Object;
.source "IsCronetFallbackAvailable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable$Companion;-><init>()V

    return-void
.end method
