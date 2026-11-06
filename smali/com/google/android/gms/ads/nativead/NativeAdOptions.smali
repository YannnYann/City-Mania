###### Class com.google.android.gms.ads.nativead.NativeAdOptions (com.google.android.gms.ads.nativead.NativeAdOptions)
.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$Companion;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$SwipeGestureDirection;
    }
.end annotation


# static fields
.field public static final ADCHOICES_BOTTOM_LEFT:I = 0x3

.field public static final ADCHOICES_BOTTOM_RIGHT:I = 0x2

.field public static final ADCHOICES_TOP_LEFT:I = 0x0

.field public static final ADCHOICES_TOP_RIGHT:I = 0x1

.field public static final Companion:Lcom/google/android/gms/ads/nativead/NativeAdOptions$Companion;

.field public static final NATIVE_MEDIA_ASPECT_RATIO_ANY:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE:I = 0x2

.field public static final NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT:I = 0x3

.field public static final NATIVE_MEDIA_ASPECT_RATIO_SQUARE:I = 0x4

.field public static final NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN:I = 0x0

.field public static final ORIENTATION_ANY:I = 0x0

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_NOT_SET:I = -0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final SWIPE_GESTURE_DIRECTION_DOWN:I = 0x8

.field public static final SWIPE_GESTURE_DIRECTION_LEFT:I = 0x2

.field public static final SWIPE_GESTURE_DIRECTION_RIGHT:I = 0x1

.field public static final SWIPE_GESTURE_DIRECTION_UP:I = 0x4


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:Lcom/google/android/gms/ads/VideoOptions;

.field private final f:Z

.field private final g:Z

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->Companion:Lcom/google/android/gms/ads/nativead/NativeAdOptions$Companion;

    return-void
.end method

.method private constructor <init>(ZIZILcom/google/android/gms/ads/VideoOptions;ZZI)V
    .registers 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->a:Z

    .line 5
    iput p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->b:I

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->c:Z

    .line 7
    iput p4, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->d:I

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->e:Lcom/google/android/gms/ads/VideoOptions;

    .line 9
    iput-boolean p6, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->f:Z

    .line 10
    iput-boolean p7, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->g:Z

    .line 11
    iput p8, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->h:I

    return-void
.end method

.method public synthetic constructor <init>(ZIZILcom/google/android/gms/ads/VideoOptions;ZZII)V
    .registers 10

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;-><init>(ZIZILcom/google/android/gms/ads/VideoOptions;ZZI)V

    return-void
.end method


# virtual methods
.method public final getAdChoicesPlacement()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->d:I

    return v0
.end method

.method public final getCustomClickGestureAllowTaps()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->g:Z

    return v0
.end method

.method public final getCustomClickGestureDirection()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->h:I

    return v0
.end method

.method public final getMediaAspectRatio()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->b:I

    return v0
.end method

.method public final getShouldRequestMultipleImages()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->c:Z

    return v0
.end method

.method public final getShouldReturnUrls()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->a:Z

    return v0
.end method

.method public final getUseCustomMuteThisAd()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->f:Z

    return v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->e:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final shouldRequestMultipleImages()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->c:Z

    return v0
.end method

.method public final shouldReturnUrlsForImageAssets()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->a:Z

    return v0
.end method

###### Class com.google.android.gms.ads.nativead.NativeAdOptions.AdChoicesPlacement (com.google.android.gms.ads.nativead.NativeAdOptions$AdChoicesPlacement)
.class public interface abstract annotation Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AdChoicesPlacement"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.ads.nativead.NativeAdOptions.Builder (com.google.android.gms.ads.nativead.NativeAdOptions$Builder)
.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Lcom/google/android/gms/ads/VideoOptions;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->e:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .registers 11

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a:Z

    .line 3
    iget v2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->b:I

    .line 4
    iget-boolean v3, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->c:Z

    .line 5
    iget v4, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->e:I

    .line 6
    iget-object v5, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->d:Lcom/google/android/gms/ads/VideoOptions;

    .line 7
    iget-boolean v6, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->f:Z

    .line 8
    iget-boolean v7, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->g:Z

    .line 9
    iget v8, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->h:I

    const/4 v9, 0x0

    .line 10
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;-><init>(ZIZILcom/google/android/gms/ads/VideoOptions;ZZII)V

    return-object v0
.end method

.method public final enableCustomClickGestureDirection(IZ)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 3
    .param p1    # I
        .annotation runtime Lcom/google/android/gms/ads/nativead/NativeAdOptions$SwipeGestureDirection;
        .end annotation
    .end param

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->g:Z

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->h:I

    return-object p0
.end method

.method public final setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2
    .param p1    # I
        .annotation runtime Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->e:I

    return-object p0
.end method

.method public final setMediaAspectRatio(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2
    .param p1    # I
        .annotation runtime Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->b:I

    return-object p0
.end method

.method public final setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->f:Z

    return-object p0
.end method

.method public final setRequestMultipleImages(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->c:Z

    return-object p0
.end method

.method public final setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a:Z

    return-object p0
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->d:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

###### Class com.google.android.gms.ads.nativead.NativeAdOptions.Companion (com.google.android.gms.ads.nativead.NativeAdOptions$Companion)
.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Companion;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.ads.nativead.NativeAdOptions.NativeMediaAspectRatio (com.google.android.gms.ads.nativead.NativeAdOptions$NativeMediaAspectRatio)
.class public interface abstract annotation Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NativeMediaAspectRatio"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.ads.nativead.NativeAdOptions.SwipeGestureDirection (com.google.android.gms.ads.nativead.NativeAdOptions$SwipeGestureDirection)
.class public interface abstract annotation Lcom/google/android/gms/ads/nativead/NativeAdOptions$SwipeGestureDirection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SwipeGestureDirection"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation
