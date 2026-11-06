###### Class com.google.android.gms.ads.VideoOptions (com.google.android.gms.ads.VideoOptions)
.class public final Lcom/google/android/gms/ads/VideoOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoOptions$Builder;
    }
.end annotation


# static fields
.field public static final Companion:Lads_mobile_sdk/yx3;

.field public static final DEFAULT_START_MUTED:Z = true


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lads_mobile_sdk/yx3;

    .line 1
    invoke-direct {v0}, Lads_mobile_sdk/yx3;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/ads/VideoOptions;->Companion:Lads_mobile_sdk/yx3;

    return-void
.end method

.method private constructor <init>(ZZZ)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions;->a:Z

    .line 5
    iput-boolean p2, p0, Lcom/google/android/gms/ads/VideoOptions;->b:Z

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/ads/VideoOptions;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZI)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/VideoOptions;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public final getClickToExpandRequested()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->c:Z

    return v0
.end method

.method public final getCustomControlsRequested()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->b:Z

    return v0
.end method

.method public final getStartMuted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->a:Z

    return v0
.end method

###### Class com.google.android.gms.ads.VideoOptions.Builder (com.google.android.gms.ads.VideoOptions$Builder)
.class public final Lcom/google/android/gms/ads/VideoOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->a:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/VideoOptions;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/VideoOptions;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->a:Z

    iget-boolean v2, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->b:Z

    iget-boolean v3, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->c:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/VideoOptions;-><init>(ZZZI)V

    return-object v0
.end method

.method public final setClickToExpandRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->c:Z

    return-object p0
.end method

.method public final setCustomControlsRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->b:Z

    return-object p0
.end method

.method public final setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->a:Z

    return-object p0
.end method
