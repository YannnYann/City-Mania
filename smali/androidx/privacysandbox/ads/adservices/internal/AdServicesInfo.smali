###### Class androidx.privacysandbox.ads.adservices.internal.AdServicesInfo (androidx.privacysandbox.ads.adservices.internal.AdServicesInfo)
.class public final Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;
.super Ljava/lang/Object;
.source "AdServicesInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;,
        Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;-><init>()V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adServicesVersion()I
    .registers 3

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_d

    .line 27
    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;->getAdServicesVersion()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final extServicesVersionS()I
    .registers 3

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_d

    const/16 v1, 0x20

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_d
    :goto_d
    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;->getAdExtServicesVersionS()I

    move-result v0

    return v0
.end method

###### Class androidx.privacysandbox.ads.adservices.internal.AdServicesInfo.Extensions30ExtImpl (androidx.privacysandbox.ads.adservices.internal.AdServicesInfo$Extensions30ExtImpl)
.class public final Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;
.super Ljava/lang/Object;
.source "AdServicesInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extensions30ExtImpl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;

    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;-><init>()V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdExtServicesVersionS()I
    .registers 2

    const/16 v0, 0x1f

    .line 52
    invoke-static {v0}, Lads_mobile_sdk/dh1$$ExternalSyntheticApiModelOutline0;->m(I)I

    move-result v0

    return v0
.end method

###### Class androidx.privacysandbox.ads.adservices.internal.AdServicesInfo.Extensions30Impl (androidx.privacysandbox.ads.adservices.internal.AdServicesInfo$Extensions30Impl)
.class public final Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;
.super Ljava/lang/Object;
.source "AdServicesInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extensions30Impl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;

    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;-><init>()V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdServicesVersion()I
    .registers 2

    const v0, 0xf4240

    .line 44
    invoke-static {v0}, Lads_mobile_sdk/dh1$$ExternalSyntheticApiModelOutline0;->m(I)I

    move-result v0

    return v0
.end method
