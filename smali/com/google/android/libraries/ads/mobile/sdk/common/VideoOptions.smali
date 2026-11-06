###### Class com.google.android.libraries.ads.mobile.sdk.common.VideoOptions (com.google.android.libraries.ads.mobile.sdk.common.VideoOptions)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;
    }
.end annotation


# static fields
.field public static final Companion:Lads_mobile_sdk/xx3;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lads_mobile_sdk/xx3;

    .line 1
    invoke-direct {v0}, Lads_mobile_sdk/xx3;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->Companion:Lads_mobile_sdk/xx3;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->a:Z

    .line 5
    iput-boolean p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->b:Z

    .line 6
    iput-boolean p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZI)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public final getClickToExpandRequested()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->c:Z

    return v0
.end method

.method public final getCustomControlsRequested()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->b:Z

    return v0
.end method

.method public final getStartMuted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->a:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.common.VideoOptions.Builder (com.google.android.libraries.ads.mobile.sdk.common.VideoOptions$Builder)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->a:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->a:Z

    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->b:Z

    iget-boolean v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->c:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;-><init>(ZZZI)V

    return-object v0
.end method

.method public final setClickToExpandRequested(Z)Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->c:Z

    return-object p0
.end method

.method public final setCustomControlsRequested(Z)Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->b:Z

    return-object p0
.end method

.method public final setStartMuted(Z)Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions$Builder;->a:Z

    return-object p0
.end method
