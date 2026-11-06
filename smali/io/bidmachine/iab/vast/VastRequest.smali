###### Class io.bidmachine.iab.vast.VastRequest (io.bidmachine.iab.vast.VastRequest)
.class public Lio/bidmachine/iab/vast/VastRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/vast/VastRequest$l;,
        Lio/bidmachine/iab/vast/VastRequest$Builder;,
        Lio/bidmachine/iab/vast/VastRequest$k;
    }
.end annotation


# static fields
.field public static A:I

.field public static final z:Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lio/bidmachine/iab/CacheControl;

.field public c:Landroid/net/Uri;

.field public d:Lio/bidmachine/iab/vast/processor/VastAd;

.field public e:Lio/bidmachine/iab/vast/VideoType;

.field public f:Landroid/os/Bundle;

.field public g:Lio/bidmachine/iab/vast/processor/VastMediaPicker;

.field public h:Lio/bidmachine/iab/vast/VastVideoLoadedListener;

.field public i:Lio/bidmachine/iab/measurer/VastAdMeasurer;

.field public j:F

.field public k:Ljava/lang/Float;

.field public l:F

.field public m:Z

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:F

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/VastRequest$k;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/VastRequest$k;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/VastRequest;->z:Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;

    const/4 v0, 0x5

    .line 3
    sput v0, Lio/bidmachine/iab/vast/VastRequest;->A:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    iput-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->b:Lio/bidmachine/iab/CacheControl;

    .line 8
    sget-object v0, Lio/bidmachine/iab/vast/VideoType;->NonRewarded:Lio/bidmachine/iab/vast/VideoType;

    iput-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->e:Lio/bidmachine/iab/vast/VideoType;

    const/high16 v0, 0x40400000    # 3.0f

    .line 19
    iput v0, p0, Lio/bidmachine/iab/vast/VastRequest;->j:F

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lio/bidmachine/iab/vast/VastRequest;->o:I

    .line 28
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->q:Z

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/VastRequest;->r:Z

    .line 32
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/VastRequest;->s:Z

    .line 34
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->t:Z

    .line 35
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->u:Z

    const/4 v1, -0x1

    .line 36
    iput v1, p0, Lio/bidmachine/iab/vast/VastRequest;->v:I

    const/high16 v1, 0x40a00000    # 5.0f

    .line 37
    iput v1, p0, Lio/bidmachine/iab/vast/VastRequest;->w:F

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/bidmachine/iab/vast/VastRequest;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/bidmachine/iab/vast/VastRequest;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;F)F
    .registers 2

    .line 3
    iput p1, p0, Lio/bidmachine/iab/vast/VastRequest;->l:F

    return p1
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/CacheControl;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest;->b:Lio/bidmachine/iab/CacheControl;

    return-object p1
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/measurer/VastAdMeasurer;
    .registers 2

    .line 8
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest;->i:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    return-object p1
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/processor/VastAd;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 2

    .line 10
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest;->k:Ljava/lang/Float;

    return-object p1
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;Landroid/content/Context;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 4

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Landroid/content/Context;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/VastRequest;Z)Z
    .registers 2

    .line 4
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/VastRequest;->m:Z

    return p1
.end method

.method public static synthetic b(Lio/bidmachine/iab/vast/VastRequest;F)F
    .registers 2

    .line 3
    iput p1, p0, Lio/bidmachine/iab/vast/VastRequest;->j:F

    return p1
.end method

.method public static synthetic b(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/measurer/VastAdMeasurer;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/iab/vast/VastRequest;->i:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/CacheControl;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/iab/vast/VastRequest;->b:Lio/bidmachine/iab/CacheControl;

    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/iab/vast/VastRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/iab/vast/VastRequest;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/iab/vast/VastRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/iab/vast/VastRequest;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/VastVideoLoadedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/VastRequest;->h:Lio/bidmachine/iab/vast/VastVideoLoadedListener;

    return-object p0
.end method

.method public static newBuilder()Lio/bidmachine/iab/vast/VastRequest$Builder;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/VastRequest$Builder;

    new-instance v1, Lio/bidmachine/iab/vast/VastRequest;

    invoke-direct {v1}, Lio/bidmachine/iab/vast/VastRequest;-><init>()V

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastRequest$Builder;-><init>(Lio/bidmachine/iab/vast/VastRequest;)V

    return-object v0
.end method

.method public static setCacheSize(I)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheSize"
        }
    .end annotation

    if-lez p0, :cond_4

    .line 1
    sput p0, Lio/bidmachine/iab/vast/VastRequest;->A:I

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14

    .line 133
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/VastRequest;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_af

    .line 137
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_14

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 142
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int p1, p1, 0xe6

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 146
    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ":"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 147
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 149
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 151
    :cond_5e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 154
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 155
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 156
    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentLength()I

    move-result p2

    int-to-long v5, p2

    const/16 p2, 0x400

    .line 158
    new-array p2, p2, [B

    const-wide/16 v7, 0x0

    .line 160
    :goto_82
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_8e

    .line 161
    invoke-virtual {v4, p2, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v9, v9

    add-long/2addr v7, v9

    goto :goto_82

    .line 164
    :cond_8e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    cmp-long p2, v5, v7

    if-nez p2, :cond_a7

    .line 169
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 170
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 171
    :cond_a7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The downloaded file size does not match the stated size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_af
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "No dir for caching file"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/vast/VastExtension;)Ljava/lang/Float;
    .registers 4

    if-eqz p2, :cond_7

    .line 11
    invoke-interface {p2}, Lio/bidmachine/iab/vast/VastExtension;->getCloseTimeSec()Ljava/lang/Float;

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 13
    :goto_8
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->isForceUseNativeCloseTime()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 14
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->getVideoCloseTime()Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2, v0}, Lio/bidmachine/iab/utils/Utils;->max(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    .line 16
    :cond_16
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/processor/VastAd;->getDurationSec()Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lio/bidmachine/iab/utils/Utils;->min(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_26

    const/high16 p1, 0x40a00000    # 5.0f

    .line 18
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_26
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .registers 7

    .line 173
    :try_start_0
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/VastRequest;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5c

    .line 177
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 179
    array-length v0, p1

    sget v1, Lio/bidmachine/iab/vast/VastRequest;->A:I

    if-le v0, v1, :cond_5c

    .line 180
    array-length v0, p1

    new-array v0, v0, [Lio/bidmachine/iab/vast/VastRequest$l;

    const/4 v1, 0x0

    move v2, v1

    .line 181
    :goto_1c
    array-length v3, p1

    if-ge v2, v3, :cond_2d

    .line 182
    new-instance v3, Lio/bidmachine/iab/vast/VastRequest$l;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lio/bidmachine/iab/vast/VastRequest$l;-><init>(Ljava/io/File;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :catch_2b
    move-exception p1

    goto :goto_57

    .line 185
    :cond_2d
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 187
    :goto_30
    array-length v2, p1

    if-ge v1, v2, :cond_3c

    .line 188
    aget-object v2, v0, v1

    iget-object v2, v2, Lio/bidmachine/iab/vast/VastRequest$l;->b:Ljava/io/File;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 191
    :cond_3c
    sget v0, Lio/bidmachine/iab/vast/VastRequest;->A:I

    :goto_3e
    array-length v1, p1

    if-ge v0, v1, :cond_5c

    .line 192
    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/iab/vast/VastRequest;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 194
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_2b

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 200
    :goto_57
    const-string v0, "VastRequest"

    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final a(Landroid/content/Context;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 11

    const-string v0, "VastRequest"

    .line 19
    :try_start_2
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lio/bidmachine/iab/vast/tags/MediaFileTag;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/bidmachine/iab/vast/VastRequest;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c6

    .line 21
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c6

    new-instance v3, Ljava/io/File;

    .line 22
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_c6

    .line 30
    :cond_2c
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_ad

    .line 33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 34
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 35
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 36
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_95

    if-nez v3, :cond_97

    .line 41
    :try_start_4d
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 42
    invoke-virtual {v2, p1, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v3, 0x9

    .line 43
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 45
    iget v4, p0, Lio/bidmachine/iab/vast/VastRequest;->n:I

    if-eqz v4, :cond_7a

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_69

    goto :goto_7a

    .line 50
    :cond_69
    sget-object p2, Lio/bidmachine/iab/vast/VastSpecError;->DURATION:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, p2}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 51
    const-string p2, "Estimated duration does not match actual duration"

    invoke-static {p2}, Lio/bidmachine/iab/IabError;->badContent(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    goto :goto_c2

    :catch_78
    move-exception p2

    goto :goto_83

    .line 52
    :cond_7a
    :goto_7a
    iput-object v1, p0, Lio/bidmachine/iab/vast/VastRequest;->c:Landroid/net/Uri;

    .line 53
    invoke-virtual {p0, p2}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/processor/VastAd;)V

    .line 54
    invoke-virtual {p0, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequestListener;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_82} :catch_78

    goto :goto_c2

    .line 61
    :goto_83
    :try_start_83
    invoke-static {v0, p2}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->BAD_FILE:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, v1}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 64
    const-string v1, "Exception during metadata retrieval"

    invoke-static {v1, p2}, Lio/bidmachine/iab/IabError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    goto :goto_c2

    :catch_95
    move-exception p1

    goto :goto_dc

    .line 68
    :cond_97
    const-string p2, "Empty thumbnail"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    sget-object p2, Lio/bidmachine/iab/vast/VastSpecError;->BAD_FILE:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, p2}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 71
    const-string p2, "Thumbnail is empty"

    invoke-static {p2}, Lio/bidmachine/iab/IabError;->badContent(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    goto :goto_c2

    .line 74
    :cond_ad
    const-string p2, "Video file not supported"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object p2, Lio/bidmachine/iab/vast/VastSpecError;->BAD_FILE:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, p2}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 77
    const-string p2, "Failed to get thumbnail by file URI"

    invoke-static {p2}, Lio/bidmachine/iab/IabError;->badContent(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    .line 79
    :goto_c2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/VastRequest;->a(Landroid/content/Context;)V

    goto :goto_ed

    .line 80
    :cond_c6
    :goto_c6
    const-string p1, "fileUri is null"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    sget-object p1, Lio/bidmachine/iab/vast/VastSpecError;->BAD_URI:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 83
    const-string p1, "Can\'t find video by local URI"

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->badContent(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_db} :catch_95

    return-void

    .line 129
    :goto_dc
    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    sget-object p2, Lio/bidmachine/iab/vast/VastSpecError;->BAD_URI:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {p0, p2}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 132
    const-string p2, "Exception during caching media file"

    invoke-static {p2, p1}, Lio/bidmachine/iab/IabError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    :goto_ed
    return-void
.end method

.method public final declared-synchronized a(Lio/bidmachine/iab/IabError;)V
    .registers 3

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->h:Lio/bidmachine/iab/vast/VastVideoLoadedListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 225
    :cond_7
    :try_start_7
    new-instance v0, Lio/bidmachine/iab/vast/VastRequest$j;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/iab/vast/VastRequest$j;-><init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastActivityListener;)V
    .registers 6

    .line 212
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VastRequest"

    const-string v2, "sendShowFailed - %s"

    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    new-instance v0, Lio/bidmachine/iab/vast/VastRequest$g;

    invoke-direct {v0, p0, p2, p1}, Lio/bidmachine/iab/vast/VastRequest$g;-><init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/VastActivityListener;Lio/bidmachine/iab/IabError;)V

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 6

    .line 208
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VastRequest"

    const-string v2, "sendLoadFailed - %s"

    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;)V

    .line 211
    new-instance v0, Lio/bidmachine/iab/vast/VastRequest$f;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/iab/vast/VastRequest$f;-><init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 5

    .line 201
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1e

    :cond_a
    const/4 v0, 0x0

    .line 204
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VastRequest"

    const-string v2, "sendLoaded"

    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1e

    .line 207
    new-instance v0, Lio/bidmachine/iab/vast/VastRequest$e;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/iab/vast/VastRequest$e;-><init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/VastRequestListener;)V

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final declared-synchronized a(Lio/bidmachine/iab/vast/processor/VastAd;)V
    .registers 3

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->h:Lio/bidmachine/iab/vast/VastVideoLoadedListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 221
    :cond_7
    :try_start_7
    new-instance v0, Lio/bidmachine/iab/vast/VastRequest$i;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/iab/vast/VastRequest$i;-><init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;)V

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/vast_rtb_cache/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    return-object v0
.end method

.method public canDisplay()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->b:Lio/bidmachine/iab/CacheControl;

    sget-object v1, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->checkFile()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public checkFile()Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest;->c:Landroid/net/Uri;

    if-eqz v1, :cond_21

    .line 2
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/bidmachine/iab/vast/VastRequest;->c:Landroid/net/Uri;

    .line 3
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_21

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    :catch_21
    :cond_21
    return v0
.end method

.method public display(Landroid/content/Context;Lio/bidmachine/iab/vast/VideoType;Lio/bidmachine/iab/vast/VastActivityListener;Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastPlaybackListener;Lio/bidmachine/iab/measurer/MraidAdMeasurer;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "videoType",
            "vastActivityListener",
            "vastView",
            "vastPlaybackListener",
            "postBannerAdMeasurer"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VastRequest"

    const-string v2, "display"

    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    if-nez v0, :cond_1e

    .line 6
    const-string p1, "VastAd is null during display VastActivity"

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastActivityListener;)V

    return-void

    .line 11
    :cond_1e
    iput-object p2, p0, Lio/bidmachine/iab/vast/VastRequest;->e:Lio/bidmachine/iab/vast/VideoType;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lio/bidmachine/iab/vast/VastRequest;->o:I

    .line 13
    new-instance p2, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;

    invoke-direct {p2}, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;-><init>()V

    .line 14
    invoke-virtual {p2, p0}, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->setRequest(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p3}, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->setListener(Lio/bidmachine/iab/vast/VastActivityListener;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->setVastView(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    .line 17
    invoke-virtual {p2, p5}, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->setPlaybackListener(Lio/bidmachine/iab/vast/VastPlaybackListener;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    iget-object p4, p0, Lio/bidmachine/iab/vast/VastRequest;->i:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    .line 18
    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->setAdMeasurer(Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    .line 19
    invoke-virtual {p2, p6}, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->setPostBannerAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    .line 20
    invoke-virtual {p2, p1}, Lio/bidmachine/iab/vast/activity/VastActivity$Builder;->display(Landroid/content/Context;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 22
    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastActivityListener;)V

    :cond_54
    return-void
.end method

.method public fireErrorUrls(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "urls",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/VastRequest;->fireUrls(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public fireUrls(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "urls",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_c
    if-eqz p2, :cond_11

    .line 6
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_11
    if-eqz p1, :cond_19

    .line 9
    sget-object p2, Lio/bidmachine/iab/vast/VastRequest;->z:Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;

    invoke-static {p1, v0, p2}, Lio/bidmachine/iab/vast/VastUrlProcessorRegistry;->processUrls(Ljava/util/List;Landroid/os/Bundle;Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;)V

    return-void

    :cond_19
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "VastRequest"

    const-string v0, "Url list is null"

    invoke-static {p2, v0, p1}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getCacheControl()Lio/bidmachine/iab/CacheControl;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->b:Lio/bidmachine/iab/CacheControl;

    return-object v0
.end method

.method public getCompanionCloseTime()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/VastRequest;->l:F

    return v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public getForceOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/VastRequest;->v:I

    return v0
.end method

.method public getFusedVideoCloseTimeSec()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/VastRequest;->w:F

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDurationMillis()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/VastRequest;->n:I

    return v0
.end method

.method public getPlaceholderTimeoutSec()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/VastRequest;->j:F

    return v0
.end method

.method public getPreferredVideoOrientation()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/VastRequest;->shouldUseScreenSizeForVideoOrientation()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_8
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    if-eqz v0, :cond_1d

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lio/bidmachine/iab/vast/tags/MediaFileTag;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lio/bidmachine/iab/utils/Utils;->orientationBySize(II)I

    move-result v0

    return v0

    :cond_1d
    const/4 v0, 0x2

    return v0
.end method

.method public getRequestedOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/VastRequest;->o:I

    return v0
.end method

.method public getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    return-object v0
.end method

.method public getVideoCloseTime()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->k:Ljava/lang/Float;

    return-object v0
.end method

.method public getVideoType()Lio/bidmachine/iab/vast/VideoType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->e:Lio/bidmachine/iab/vast/VideoType;

    return-object v0
.end method

.method public isAutoClose()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->p:Z

    return v0
.end method

.method public isForceUseNativeCloseTime()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->m:Z

    return v0
.end method

.method public isR1()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->t:Z

    return v0
.end method

.method public isR2()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->u:Z

    return v0
.end method

.method public loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "xmlData",
            "vastRequestListener"
        }
    .end annotation

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "loadVideoWithData\n%s"

    const-string v2, "VastRequest"

    invoke-static {v2, v1, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    .line 4
    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6
    :try_start_14
    new-instance v0, Lio/bidmachine/iab/vast/VastRequest$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/bidmachine/iab/vast/VastRequest$c;-><init>(Lio/bidmachine/iab/vast/VastRequest;Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/iab/vast/VastRequestListener;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    .line 13
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    const-string p2, "Exception during creating background thread"

    invoke-static {p2, p1}, Lio/bidmachine/iab/IabError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void

    .line 19
    :cond_2b
    sget-object p1, Lio/bidmachine/iab/IabError;->NO_NETWORK:Lio/bidmachine/iab/IabError;

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void
.end method

.method public loadVideoWithDataSync(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "xmlData",
            "vastRequestListener"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/processor/VastProcessor;

    .line 2
    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest;->g:Lio/bidmachine/iab/vast/processor/VastMediaPicker;

    if-eqz v1, :cond_7

    goto :goto_c

    .line 4
    :cond_7
    new-instance v1, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;

    invoke-direct {v1, p1}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;-><init>(Landroid/content/Context;)V

    :goto_c
    invoke-direct {v0, p0, v1}, Lio/bidmachine/iab/vast/processor/VastProcessor;-><init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastMediaPicker;)V

    .line 5
    invoke-virtual {v0, p2}, Lio/bidmachine/iab/vast/processor/VastProcessor;->process(Ljava/lang/String;)Lio/bidmachine/iab/vast/processor/VastProcessorResult;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    if-nez v0, :cond_41

    .line 8
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->getVastSpecError()Lio/bidmachine/iab/vast/VastSpecError;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 11
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/VastRequest;->sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V

    .line 13
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastSpecError;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 14
    const-string p2, "VastAd is null during loadVideoWithDataSync with VastSpecCode - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    .line 17
    :cond_37
    const-string p1, "VastAd is null during loadVideoWithDataSync without VastSpecCode"

    .line 19
    :goto_39
    invoke-static {p1}, Lio/bidmachine/iab/IabError;->badContent(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void

    .line 24
    :cond_41
    invoke-virtual {v0, p0}, Lio/bidmachine/iab/vast/processor/VastAd;->setVastRequest(Lio/bidmachine/iab/vast/VastRequest;)V

    .line 25
    iget-object p2, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    invoke-virtual {p2}, Lio/bidmachine/iab/vast/processor/VastAd;->getAppodealExtension()Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_92

    .line 27
    invoke-interface {p2}, Lio/bidmachine/iab/vast/VastExtension;->isAutoRotate()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/VastRequest;->q:Z

    .line 31
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/VastRequest;->r:Z

    goto :goto_63

    .line 33
    :cond_5f
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->q:Z

    .line 34
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->r:Z

    .line 37
    :cond_63
    :goto_63
    invoke-interface {p2}, Lio/bidmachine/iab/vast/VastExtension;->getPostBannerTag()Lio/bidmachine/iab/vast/tags/PostBannerTag;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->getCloseTimeSec()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7a

    .line 38
    invoke-interface {p2}, Lio/bidmachine/iab/vast/VastExtension;->getPostBannerTag()Lio/bidmachine/iab/vast/tags/PostBannerTag;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/PostBannerTag;->getCloseTimeSec()F

    move-result v1

    iput v1, p0, Lio/bidmachine/iab/vast/VastRequest;->l:F

    .line 40
    :cond_7a
    invoke-interface {p2}, Lio/bidmachine/iab/vast/VastExtension;->isR1()Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/vast/VastRequest;->t:Z

    .line 41
    invoke-interface {p2}, Lio/bidmachine/iab/vast/VastExtension;->isR2()Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/vast/VastRequest;->u:Z

    .line 43
    invoke-interface {p2}, Lio/bidmachine/iab/vast/VastExtension;->getForceOrientation()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_92

    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lio/bidmachine/iab/vast/VastRequest;->v:I

    .line 48
    :cond_92
    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    invoke-virtual {p0, v1, p2}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/vast/VastExtension;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lio/bidmachine/iab/vast/VastRequest;->w:F

    .line 50
    iget-object p2, p0, Lio/bidmachine/iab/vast/VastRequest;->i:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    if-eqz p2, :cond_a5

    .line 51
    invoke-interface {p2, p0}, Lio/bidmachine/iab/measurer/VastAdMeasurer;->onVastModelLoaded(Lio/bidmachine/iab/vast/VastRequest;)V

    .line 53
    :cond_a5
    sget-object p2, Lio/bidmachine/iab/vast/VastRequest$a;->a:[I

    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest;->b:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v0, :cond_c5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_c1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_b8

    return-void

    .line 61
    :cond_b8
    invoke-virtual {p0, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequestListener;)V

    .line 62
    iget-object p2, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Landroid/content/Context;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void

    .line 63
    :cond_c1
    invoke-virtual {p0, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void

    .line 64
    :cond_c5
    iget-object p2, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/vast/VastRequest;->a(Landroid/content/Context;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void
.end method

.method public performCache(Landroid/content/Context;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "vastRequestListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    if-nez v0, :cond_e

    .line 2
    const-string p1, "VastAd is null during performCache"

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void

    .line 7
    :cond_e
    :try_start_e
    new-instance v0, Lio/bidmachine/iab/vast/VastRequest$d;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/iab/vast/VastRequest$d;-><init>(Lio/bidmachine/iab/vast/VastRequest;Landroid/content/Context;Lio/bidmachine/iab/vast/VastRequestListener;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 14
    const-string v0, "VastRequest"

    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    const-string v0, "Exception during creating background thread"

    invoke-static {v0, p1}, Lio/bidmachine/iab/IabError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void
.end method

.method public sendVastSpecError(Lio/bidmachine/iab/vast/VastSpecError;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastSpecError"
        }
    .end annotation

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "sendVastSpecError - %s"

    const-string v2, "VastRequest"

    invoke-static {v2, v1, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :try_start_b
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    if-eqz v0, :cond_2b

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    const-string v1, "params_error_code"

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/VastSpecError;->getCode()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/vast/VastRequest;->d:Lio/bidmachine/iab/vast/processor/VastAd;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/processor/VastAd;->getErrorUrlList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/vast/VastRequest;->fireErrorUrls(Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p1

    .line 9
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    return-void
.end method

.method public declared-synchronized setVastVideoLoadedListener(Lio/bidmachine/iab/vast/VastVideoLoadedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastVideoLoadedListener"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest;->h:Lio/bidmachine/iab/vast/VastVideoLoadedListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public shouldPreloadCompanion()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->s:Z

    return v0
.end method

.method public shouldUseScreenSizeForCompanionOrientation()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->r:Z

    return v0
.end method

.method public shouldUseScreenSizeForVideoOrientation()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/VastRequest;->q:Z

    return v0
.end method

###### Class io.bidmachine.iab.vast.VastRequest.Builder (io.bidmachine.iab.vast.VastRequest$Builder)
.class public Lio/bidmachine/iab/vast/VastRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/VastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/iab/vast/VastRequest;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    return-object v0
.end method

.method public forceUseNativeCloseTime(Z)Lio/bidmachine/iab/vast/VastRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceUseNativeCloseTime"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setAdMeasurer(Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/vast/VastRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastAdMeasurer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/measurer/VastAdMeasurer;

    return-object p0
.end method

.method public setCacheControl(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/vast/VastRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheControl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/CacheControl;

    return-object p0
.end method

.method public setCompanionCloseTime(I)Lio/bidmachine/iab/vast/VastRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeTime"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequest;F)F

    return-object p0
.end method

.method public setPlaceholderTimeoutSec(F)Lio/bidmachine/iab/vast/VastRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholderTimeoutSec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastRequest;->b(Lio/bidmachine/iab/vast/VastRequest;F)F

    return-object p0
.end method

.method public setVideoCloseTime(I)Lio/bidmachine/iab/vast/VastRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeTimeSec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$Builder;->a:Lio/bidmachine/iab/vast/VastRequest;

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequest;Ljava/lang/Float;)Ljava/lang/Float;

    return-object p0
.end method

###### Class io.bidmachine.iab.vast.VastRequest.a (io.bidmachine.iab.vast.VastRequest$a)
.class public abstract synthetic Lio/bidmachine/iab/vast/VastRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/VastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/iab/CacheControl;->values()[Lio/bidmachine/iab/CacheControl;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/iab/vast/VastRequest$a;->a:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/iab/vast/VastRequest$a;->a:[I

    sget-object v1, Lio/bidmachine/iab/CacheControl;->Stream:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/iab/vast/VastRequest$a;->a:[I

    sget-object v1, Lio/bidmachine/iab/CacheControl;->PartialLoad:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class io.bidmachine.iab.vast.VastRequest.c (io.bidmachine.iab.vast.VastRequest$c)
.class public Lio/bidmachine/iab/vast/VastRequest$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/VastRequest;->loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/bidmachine/iab/vast/VastRequestListener;

.field public final synthetic d:Lio/bidmachine/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest$c;->d:Lio/bidmachine/iab/vast/VastRequest;

    iput-object p2, p0, Lio/bidmachine/iab/vast/VastRequest$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/iab/vast/VastRequest$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/bidmachine/iab/vast/VastRequest$c;->c:Lio/bidmachine/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$c;->d:Lio/bidmachine/iab/vast/VastRequest;

    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest$c;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/iab/vast/VastRequest$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/iab/vast/VastRequest$c;->c:Lio/bidmachine/iab/vast/VastRequestListener;

    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/iab/vast/VastRequest;->loadVideoWithDataSync(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.VastRequest.d (io.bidmachine.iab.vast.VastRequest$d)
.class public Lio/bidmachine/iab/vast/VastRequest$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/VastRequest;->performCache(Landroid/content/Context;Lio/bidmachine/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/bidmachine/iab/vast/VastRequestListener;

.field public final synthetic c:Lio/bidmachine/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;Landroid/content/Context;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest$d;->c:Lio/bidmachine/iab/vast/VastRequest;

    iput-object p2, p0, Lio/bidmachine/iab/vast/VastRequest$d;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/iab/vast/VastRequest$d;->b:Lio/bidmachine/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$d;->c:Lio/bidmachine/iab/vast/VastRequest;

    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/iab/vast/VastRequest$d;->b:Lio/bidmachine/iab/vast/VastRequestListener;

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequest;Landroid/content/Context;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/vast/VastRequestListener;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.VastRequest.e (io.bidmachine.iab.vast.VastRequest$e)
.class public Lio/bidmachine/iab/vast/VastRequest$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/VastRequestListener;

.field public final synthetic b:Lio/bidmachine/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest$e;->b:Lio/bidmachine/iab/vast/VastRequest;

    iput-object p2, p0, Lio/bidmachine/iab/vast/VastRequest$e;->a:Lio/bidmachine/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$e;->a:Lio/bidmachine/iab/vast/VastRequestListener;

    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest$e;->b:Lio/bidmachine/iab/vast/VastRequest;

    invoke-interface {v0, v1}, Lio/bidmachine/iab/vast/VastRequestListener;->onVastLoaded(Lio/bidmachine/iab/vast/VastRequest;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.VastRequest.f (io.bidmachine.iab.vast.VastRequest$f)
.class public Lio/bidmachine/iab/vast/VastRequest$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/IabError;

.field public final synthetic b:Lio/bidmachine/iab/vast/VastRequestListener;

.field public final synthetic c:Lio/bidmachine/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastRequestListener;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest$f;->c:Lio/bidmachine/iab/vast/VastRequest;

    iput-object p2, p0, Lio/bidmachine/iab/vast/VastRequest$f;->a:Lio/bidmachine/iab/IabError;

    iput-object p3, p0, Lio/bidmachine/iab/vast/VastRequest$f;->b:Lio/bidmachine/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$f;->c:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->b(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/measurer/VastAdMeasurer;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$f;->c:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->b(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/measurer/VastAdMeasurer;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest$f;->a:Lio/bidmachine/iab/IabError;

    invoke-interface {v0, v1}, Lio/bidmachine/iab/measurer/AdMeasurer;->onError(Lio/bidmachine/iab/IabError;)V

    .line 4
    :cond_13
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$f;->b:Lio/bidmachine/iab/vast/VastRequestListener;

    if-eqz v0, :cond_5e

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$f;->c:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->c(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/CacheControl;

    move-result-object v0

    sget-object v1, Lio/bidmachine/iab/CacheControl;->PartialLoad:Lio/bidmachine/iab/CacheControl;

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$f;->c:Lio/bidmachine/iab/vast/VastRequest;

    .line 7
    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->d(Lio/bidmachine/iab/vast/VastRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$f;->c:Lio/bidmachine/iab/vast/VastRequest;

    .line 8
    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->e(Lio/bidmachine/iab/vast/VastRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_55

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$f;->b:Lio/bidmachine/iab/vast/VastRequestListener;

    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest$f;->c:Lio/bidmachine/iab/vast/VastRequest;

    .line 12
    invoke-static {v1}, Lio/bidmachine/iab/vast/VastRequest;->c(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/CacheControl;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/iab/vast/VastRequest$f;->a:Lio/bidmachine/iab/IabError;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 13
    const-string v3, "%s load failed after display - %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/iab/IabError;->expired(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object v2

    .line 14
    invoke-interface {v0, v1, v2}, Lio/bidmachine/iab/vast/VastRequestListener;->onVastLoadFailed(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    return-void

    .line 20
    :cond_55
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$f;->b:Lio/bidmachine/iab/vast/VastRequestListener;

    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest$f;->c:Lio/bidmachine/iab/vast/VastRequest;

    iget-object v2, p0, Lio/bidmachine/iab/vast/VastRequest$f;->a:Lio/bidmachine/iab/IabError;

    invoke-interface {v0, v1, v2}, Lio/bidmachine/iab/vast/VastRequestListener;->onVastLoadFailed(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    :cond_5e
    return-void
.end method

###### Class io.bidmachine.iab.vast.VastRequest.g (io.bidmachine.iab.vast.VastRequest$g)
.class public Lio/bidmachine/iab/vast/VastRequest$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;Lio/bidmachine/iab/vast/VastActivityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/VastActivityListener;

.field public final synthetic b:Lio/bidmachine/iab/IabError;

.field public final synthetic c:Lio/bidmachine/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/VastActivityListener;Lio/bidmachine/iab/IabError;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest$g;->c:Lio/bidmachine/iab/vast/VastRequest;

    iput-object p2, p0, Lio/bidmachine/iab/vast/VastRequest$g;->a:Lio/bidmachine/iab/vast/VastActivityListener;

    iput-object p3, p0, Lio/bidmachine/iab/vast/VastRequest$g;->b:Lio/bidmachine/iab/IabError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$g;->a:Lio/bidmachine/iab/vast/VastActivityListener;

    if-eqz v0, :cond_b

    .line 2
    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest$g;->c:Lio/bidmachine/iab/vast/VastRequest;

    iget-object v2, p0, Lio/bidmachine/iab/vast/VastRequest$g;->b:Lio/bidmachine/iab/IabError;

    invoke-interface {v0, v1, v2}, Lio/bidmachine/iab/vast/VastActivityListener;->onVastShowFailed(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    :cond_b
    return-void
.end method

###### Class io.bidmachine.iab.vast.VastRequest.i (io.bidmachine.iab.vast.VastRequest$i)
.class public Lio/bidmachine/iab/vast/VastRequest$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/vast/processor/VastAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/processor/VastAd;

.field public final synthetic b:Lio/bidmachine/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest$i;->b:Lio/bidmachine/iab/vast/VastRequest;

    iput-object p2, p0, Lio/bidmachine/iab/vast/VastRequest$i;->a:Lio/bidmachine/iab/vast/processor/VastAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$i;->b:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->f(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/VastVideoLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$i;->b:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->f(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/VastVideoLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest$i;->b:Lio/bidmachine/iab/vast/VastRequest;

    iget-object v2, p0, Lio/bidmachine/iab/vast/VastRequest$i;->a:Lio/bidmachine/iab/vast/processor/VastAd;

    invoke-interface {v0, v1, v2}, Lio/bidmachine/iab/vast/VastVideoLoadedListener;->onSuccess(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;)V

    :cond_15
    return-void
.end method

###### Class io.bidmachine.iab.vast.VastRequest.j (io.bidmachine.iab.vast.VastRequest$j)
.class public Lio/bidmachine/iab/vast/VastRequest$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/VastRequest;->a(Lio/bidmachine/iab/IabError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/IabError;

.field public final synthetic b:Lio/bidmachine/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest$j;->b:Lio/bidmachine/iab/vast/VastRequest;

    iput-object p2, p0, Lio/bidmachine/iab/vast/VastRequest$j;->a:Lio/bidmachine/iab/IabError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$j;->b:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->f(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/VastVideoLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/VastRequest$j;->b:Lio/bidmachine/iab/vast/VastRequest;

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastRequest;->f(Lio/bidmachine/iab/vast/VastRequest;)Lio/bidmachine/iab/vast/VastVideoLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/vast/VastRequest$j;->b:Lio/bidmachine/iab/vast/VastRequest;

    iget-object v2, p0, Lio/bidmachine/iab/vast/VastRequest$j;->a:Lio/bidmachine/iab/IabError;

    invoke-interface {v0, v1, v2}, Lio/bidmachine/iab/vast/VastVideoLoadedListener;->onError(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V

    :cond_15
    return-void
.end method

###### Class io.bidmachine.iab.vast.VastRequest.k (io.bidmachine.iab.vast.VastRequest$k)
.class public Lio/bidmachine/iab/vast/VastRequest$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/VastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlReady(Ljava/lang/String;)V
    .registers 5

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VastRequest"

    const-string v2, "Fire url: %s"

    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->simpleTrackUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.iab.vast.VastRequest.l (io.bidmachine.iab.vast.VastRequest$l)
.class public Lio/bidmachine/iab/vast/VastRequest$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/VastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/vast/VastRequest$l;->b:Ljava/io/File;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/iab/vast/VastRequest$l;->a:J

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 1
    check-cast p1, Lio/bidmachine/iab/vast/VastRequest$l;

    .line 2
    iget-wide v0, p0, Lio/bidmachine/iab/vast/VastRequest$l;->a:J

    iget-wide v2, p1, Lio/bidmachine/iab/vast/VastRequest$l;->a:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    if-nez p1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    const/4 p1, 0x1

    return p1
.end method
