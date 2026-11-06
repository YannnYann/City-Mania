###### Class com.google.android.gms.ads.VersionInfo (com.google.android.gms.ads.VersionInfo)
.class public Lcom/google/android/gms/ads/VersionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/VersionInfo;->a:I

    iput p2, p0, Lcom/google/android/gms/ads/VersionInfo;->b:I

    iput p3, p0, Lcom/google/android/gms/ads/VersionInfo;->c:I

    return-void
.end method


# virtual methods
.method public final getMajorVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->a:I

    return v0
.end method

.method public final getMicroVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->c:I

    return v0
.end method

.method public final getMinorVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->a:I

    iget v1, p0, Lcom/google/android/gms/ads/VersionInfo;->b:I

    iget v2, p0, Lcom/google/android/gms/ads/VersionInfo;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
