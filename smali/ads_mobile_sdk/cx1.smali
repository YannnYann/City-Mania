###### Class ads_mobile_sdk.cx1 (ads_mobile_sdk.cx1)
.class public final Lads_mobile_sdk/cx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bx1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ts3;

.field public final c:Lads_mobile_sdk/a;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ts3;Lads_mobile_sdk/a;Lads_mobile_sdk/na;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lads_mobile_sdk/cx1;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lads_mobile_sdk/cx1;->b:Lads_mobile_sdk/ts3;

    .line 51
    iput-object p3, p0, Lads_mobile_sdk/cx1;->c:Lads_mobile_sdk/a;

    .line 52
    invoke-virtual {p4}, Lads_mobile_sdk/na;->M()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/cx1;->d:Ljava/lang/String;

    .line 53
    invoke-virtual {p4}, Lads_mobile_sdk/na;->G()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/cx1;->e:Z

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .registers 10

    .line 2
    invoke-static {}, Lads_mobile_sdk/th;->v()Lads_mobile_sdk/sh;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/cx1;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lads_mobile_sdk/sh;->a(Ljava/lang/String;)Lads_mobile_sdk/sh;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lads_mobile_sdk/sh;->h()Lads_mobile_sdk/sh;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/cx1;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/sh;->b(Ljava/lang/String;)Lads_mobile_sdk/sh;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/sh;->a(J)Lads_mobile_sdk/sh;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/sh;->b(J)Lads_mobile_sdk/sh;

    move-result-object p1

    .line 8
    iget-boolean p2, p0, Lads_mobile_sdk/cx1;->e:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_97

    .line 9
    :try_start_33
    iget-object p2, p0, Lads_mobile_sdk/cx1;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v2, p0, Lads_mobile_sdk/cx1;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 13
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_8f

    .line 14
    array-length v2, p2

    if-lez v2, :cond_8f

    .line 15
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 16
    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    array-length v3, p2

    move v4, v1

    :goto_63
    if-ge v4, v3, :cond_7e

    aget-byte v5, p2, v4

    and-int/lit16 v5, v5, 0xff

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v0, :cond_78

    const/16 v6, 0x30

    .line 21
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    :cond_78
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 26
    :cond_7e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/16 v2, 0xb

    .line 27
    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_8e} :catch_92

    goto :goto_94

    .line 34
    :cond_8f
    const-string p2, "E"

    goto :goto_94

    .line 35
    :catch_92
    const-string p2, "E"

    .line 36
    :goto_94
    invoke-virtual {p1, p2}, Lads_mobile_sdk/sh;->c(Ljava/lang/String;)V

    .line 39
    :cond_97
    :try_start_97
    iget-object p2, p0, Lads_mobile_sdk/cx1;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v2, p0, Lads_mobile_sdk/cx1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 41
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Lads_mobile_sdk/sh;->c(J)V
    :try_end_ad
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_ad} :catch_ae

    goto :goto_b3

    :catch_ae
    const-wide/16 v1, -0x1

    .line 43
    invoke-virtual {p1, v1, v2}, Lads_mobile_sdk/sh;->c(J)V

    .line 48
    :goto_b3
    iget-object p2, p0, Lads_mobile_sdk/cx1;->c:Lads_mobile_sdk/a;

    monitor-enter p2

    .line 49
    :try_start_b6
    iget-boolean v1, p2, Lads_mobile_sdk/a;->d:Z
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_ee

    monitor-exit p2

    if-nez v1, :cond_c0

    .line 50
    iget-object p2, p0, Lads_mobile_sdk/cx1;->c:Lads_mobile_sdk/a;

    invoke-virtual {p2}, Lads_mobile_sdk/a;->a()V

    .line 52
    :cond_c0
    iget-object p2, p0, Lads_mobile_sdk/cx1;->c:Lads_mobile_sdk/a;

    .line 54
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/th;

    invoke-virtual {p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p2, v1, p1}, Lads_mobile_sdk/a;->a(Ljava/lang/String;[B)Lads_mobile_sdk/ai;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lads_mobile_sdk/ai;->h()Lads_mobile_sdk/ai;

    move-result-object p1

    .line 64
    sget-object p2, Lads_mobile_sdk/ph;->c:Lads_mobile_sdk/ph;

    .line 65
    invoke-virtual {p1, p2}, Lads_mobile_sdk/ai;->a(Lads_mobile_sdk/ph;)Lads_mobile_sdk/ai;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bi;

    .line 68
    invoke-virtual {p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object p1

    .line 69
    invoke-static {v0}, Lads_mobile_sdk/hi;->a(Z)Lcom/google/common/io/BaseEncoding;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_ee
    move-exception p1

    .line 70
    monitor-exit p2

    throw p1
.end method
