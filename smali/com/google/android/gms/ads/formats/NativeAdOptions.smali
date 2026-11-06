###### Class com.google.android.gms.ads.formats.NativeAdOptions (com.google.android.gms.ads.formats.NativeAdOptions)
.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$Companion;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;
    }
.end annotation


# static fields
.field public static final ADCHOICES_BOTTOM_LEFT:I = 0x3

.field public static final ADCHOICES_BOTTOM_RIGHT:I = 0x2

.field public static final ADCHOICES_TOP_LEFT:I = 0x0

.field public static final ADCHOICES_TOP_RIGHT:I = 0x1

.field public static final Companion:Lcom/google/android/gms/ads/formats/NativeAdOptions$Companion;

.field public static final NATIVE_MEDIA_ASPECT_RATIO_ANY:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE:I = 0x2

.field public static final NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT:I = 0x3

.field public static final NATIVE_MEDIA_ASPECT_RATIO_SQUARE:I = 0x4

.field public static final NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN:I = 0x0

.field public static final ORIENTATION_ANY:I = 0x0

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_NOT_SET:I = -0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x1


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I

.field private final f:Lcom/google/android/gms/ads/VideoOptions;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->Companion:Lcom/google/android/gms/ads/formats/NativeAdOptions$Companion;

    return-void
.end method

.method private constructor <init>(ZIIZILcom/google/android/gms/ads/VideoOptions;Z)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->a:Z

    .line 6
    iput p2, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->b:I

    .line 7
    iput p3, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->c:I

    .line 8
    iput-boolean p4, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->d:Z

    .line 9
    iput p5, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->e:I

    .line 10
    iput-object p6, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->f:Lcom/google/android/gms/ads/VideoOptions;

    .line 11
    iput-boolean p7, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(ZIIZILcom/google/android/gms/ads/VideoOptions;ZI)V
    .registers 9

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(ZIIZILcom/google/android/gms/ads/VideoOptions;Z)V

    return-void
.end method


# virtual methods
.method public final getAdChoicesPlacement()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->e:I

    return v0
.end method

.method public final getImageOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->b:I

    return v0
.end method

.method public final getMediaAspectRatio()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->c:I

    return v0
.end method

.method public final getShouldRequestMultipleImages()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->d:Z

    return v0
.end method

.method public final getShouldReturnUrls()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->a:Z

    return v0
.end method

.method public final getUseCustomMuteThisAd()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->g:Z

    return v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->f:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

###### Class com.google.android.gms.ads.formats.NativeAdOptions.AdChoicesPlacement (com.google.android.gms.ads.formats.NativeAdOptions$AdChoicesPlacement)
.class public interface abstract annotation Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AdChoicesPlacement"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.ads.formats.NativeAdOptions.Builder (com.google.android.gms.ads.formats.NativeAdOptions$Builder)
.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lcom/google/android/gms/ads/VideoOptions;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->c:I

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->f:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->a:Z

    .line 3
    iget v2, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->b:I

    .line 4
    iget v3, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->c:I

    .line 5
    iget-boolean v4, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->d:Z

    .line 6
    iget v5, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->f:I

    .line 7
    iget-object v6, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->e:Lcom/google/android/gms/ads/VideoOptions;

    .line 8
    iget-boolean v7, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->g:Z

    const/4 v8, 0x0

    .line 9
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(ZIIZILcom/google/android/gms/ads/VideoOptions;ZI)V

    return-object v0
.end method

.method public final setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1    # I
        .annotation runtime Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->f:I

    return-object p0
.end method

.method public final setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->c:I

    return-object p0
.end method

.method public final setMediaAspectRatio(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1    # I
        .annotation runtime Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->b:I

    return-object p0
.end method

.method public final setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->g:Z

    return-object p0
.end method

.method public final setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->d:Z

    return-object p0
.end method

.method public final setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->a:Z

    return-object p0
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->e:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

###### Class com.google.android.gms.ads.formats.NativeAdOptions.Companion (com.google.android.gms.ads.formats.NativeAdOptions$Companion)
.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
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
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Companion;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.ads.formats.NativeAdOptions.NativeMediaAspectRatio (com.google.android.gms.ads.formats.NativeAdOptions$NativeMediaAspectRatio)
.class public interface abstract annotation Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NativeMediaAspectRatio"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation
