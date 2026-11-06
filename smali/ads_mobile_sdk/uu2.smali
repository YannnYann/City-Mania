###### Class ads_mobile_sdk.uu2 (ads_mobile_sdk.uu2)
.class public final Lads_mobile_sdk/uu2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/jv2;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public e:[B


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jv2;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/uu2;->a:Lads_mobile_sdk/jv2;

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/uu2;->b:Ljava/io/File;

    .line 34
    iput-object p4, p0, Lads_mobile_sdk/uu2;->c:Ljava/io/File;

    .line 35
    iput-object p3, p0, Lads_mobile_sdk/uu2;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 4

    .line 65
    iget-object v0, p0, Lads_mobile_sdk/uu2;->e:[B

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/uu2;->d:Ljava/io/File;

    .line 67
    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_20
    .catchall {:try_start_7 .. :try_end_c} :catchall_1b

    .line 68
    :try_start_c
    invoke-static {v2}, Lads_mobile_sdk/du;->a(Ljava/io/InputStream;)Lads_mobile_sdk/du;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/du;->i()[B

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_21
    .catchall {:try_start_c .. :try_end_14} :catchall_18

    .line 73
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_25

    :catchall_18
    move-exception v0

    move-object v1, v2

    goto :goto_1c

    :catchall_1b
    move-exception v0

    :goto_1c
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    throw v0

    :catch_20
    move-object v2, v1

    .line 75
    :catch_21
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 76
    :goto_25
    iput-object v0, p0, Lads_mobile_sdk/uu2;->e:[B

    .line 78
    :cond_27
    iget-object v0, p0, Lads_mobile_sdk/uu2;->e:[B

    if-nez v0, :cond_2c

    return-object v1

    .line 81
    :cond_2c
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
