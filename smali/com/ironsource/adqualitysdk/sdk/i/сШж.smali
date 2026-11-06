###### Class com.ironsource.adqualitysdk.sdk.i.C0622 (com.ironsource.adqualitysdk.sdk.i.ᘦ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final 丫:Ljava/lang/String;

.field public static final 乁:Ljava/lang/String;

.field public static final 爫:Ljava/lang/String;

.field public static final ﬤ:Ljava/lang/String;

.field public static final טּ:Ljava/lang/String;


# instance fields
.field public final סּ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;

.field public final ףּ:Ljava/lang/String;

.field public ﭖ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

.field public final ﭴ:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

.field public ﮉ:Lcom/ironsource/adqualitysdk/sdk/i/ᴭ;

.field public final ﮌ:Landroid/content/Context;

.field public final ﮐ:Ljava/util/ArrayList;

.field public final ﱟ:Ljava/util/ArrayList;

.field public ﱡ:Z

.field public ﺙ:Z

.field public final ﻏ:Landroid/os/Handler;

.field public final ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

.field public final ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

.field public final ｋ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

.field public ﾇ:Z

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ʴ;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "4D+ieNLfQMXS\n"

    const-string v1, "oVHDFKurKaY=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->טּ:Ljava/lang/String;

    const-string v0, "smH3dxHxumOtPf1iWve5Lqd993gN57JjtQ==\n"

    const-string v1, "xhOWFHST2wA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﬤ:Ljava/lang/String;

    const-string v0, "QSfw4gR2tE5XK+3qHDqtXFwp8/YcfvpO\n"

    const-string v1, "Mkifj2gXmT0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->爫:Ljava/lang/String;

    const-string v0, "JR1fL8xSLe4FFw==\n"

    const-string v1, "THMrAb83Xp0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->乁:Ljava/lang/String;

    const-string v0, "lzAwqZNzmy2LKy+snEHcOg==\n"

    const-string v1, "5ERCwP0UtV4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->丫:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/r;Lcom/ironsource/adqualitysdk/sdk/i/ʴ;ZLjava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;)V
    .registers 16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﱟ:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﮐ:Ljava/util/ArrayList;

    move-object v0, p6

    .line 23
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->סּ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;

    .line 24
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﭴ:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 25
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ọ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ọ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 44
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ʴ;

    .line 45
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﮌ:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    const-string v1, "SxnlOZ72sq5URe8s1fCx414F5TaC4LquTA==\n"

    const-string v3, "P2uEWvuU080=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1Vx5ZvbjodjDUGRu7q+4yshSenLu6+/Y\n"

    const-string v4, "pjMWC5qCjKs=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    const-string v3, "8DfL1yq1EWA=\n"

    const-string v4, "uGCOoU/bZRM=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdMkVH+r\n"

    const-string v5, "1KVBOguFAKg=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ΐ;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    .line 49
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->乁:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_66

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v8

    move v4, v3

    goto :goto_67

    :cond_66
    move v4, v8

    .line 54
    :goto_67
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    .line 56
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->丫:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v0, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_91
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 61
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->っ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ᕆ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 64
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_a9
    move-object v2, p1

    move-object v3, p2

    goto :goto_af

    :cond_ac
    const-wide/16 v6, 0x0

    goto :goto_a9

    .line 65
    :goto_af
    invoke-direct/range {v1 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;-><init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/r;ILjava/lang/String;J)V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    .line 66
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/⁀;

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/⁀;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾇ:Z

    .line 70
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RaczbV7kfxBloyN2VMY=\n"

    const-string v3, "BsZQBTu0DX8=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 72
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻏ:Landroid/os/Handler;

    .line 74
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    invoke-direct {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;-><init>(I)V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    xor-int/lit8 v1, p4, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﺙ:Z

    .line 78
    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ףּ:Ljava/lang/String;

    .line 80
    monitor-enter p0

    const/4 v1, 0x0

    .line 81
    :try_start_e8
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ッ;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ッ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_f4
    .catchall {:try_start_e8 .. :try_end_f4} :catchall_f9

    .line 83
    monitor-exit p0

    .line 84
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻏ()V

    return-void

    :catchall_f9
    move-exception v0

    .line 85
    monitor-exit p0

    throw v0
.end method

.method public static ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V
    .registers 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_2
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﱡ:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    .line 3
    monitor-exit p0

    throw v0
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ｋ()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    .line 3
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﾒ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 5
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾇ()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 6
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﺙ()V

    .line 8
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->טּ:Ljava/lang/String;

    const-string v1, "+FeQTJXtrDPORJtGiPDrddldkwif4qh7zg==\n"

    const-string v2, "qzL+KPyDyxM=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﻐ()I

    move-result v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ぃ;

    invoke-direct {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ぃ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ｚ;

    invoke-direct {v4, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ｚ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;ILcom/ironsource/adqualitysdk/sdk/i/ぃ;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4a

    goto :goto_4c

    :catchall_4a
    move-exception v0

    goto :goto_4e

    .line 11
    :cond_4c
    :goto_4c
    monitor-exit p0

    return-void

    .line 12
    :goto_4e
    monitor-exit p0

    throw v0
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ァ;)V
    .registers 10

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;

    .line 16
    monitor-enter v2

    .line 17
    :try_start_19
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ｱ;

    .line 18
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ｱ;->ﾒ:Lorg/json/JSONObject;
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_51

    monitor-exit v2

    .line 19
    const-string v4, "g2AO\n"

    const-string v5, "5xR9pn43a98=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 21
    :try_start_2c
    const-string v4, "buGK\n"

    const-string v5, "CpX5WjU+T9s=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﻏ:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_3d} :catch_3d

    .line 25
    :catch_3d
    :cond_3d
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    invoke-virtual {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾒ(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 26
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    .line 27
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘣ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ｱ;

    const/4 v5, 0x0

    .line 28
    invoke-virtual {v4, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ｱ;Lcom/ironsource/adqualitysdk/sdk/i/ṯ;)V

    .line 30
    :cond_4d
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c

    :catchall_51
    move-exception p0

    .line 31
    monitor-exit v2

    throw p0

    .line 32
    :cond_54
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

    .line 33
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    .line 34
    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;->ﾒ()Z

    move-result v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ァ;)V

    .line 35
    iget-object p0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﱟ:Landroid/os/Handler;

    .line 36
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;

    invoke-direct {p1, v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;ZLorg/json/JSONArray;Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final ﱟ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﮉ:Lcom/ironsource/adqualitysdk/sdk/i/ᴭ;

    if-eqz v0, :cond_13

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

    .line 3
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_9
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;->ｋ:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    monitor-exit v1

    goto :goto_13

    :catchall_10
    move-exception v0

    .line 6
    monitor-exit v1

    throw v0

    .line 8
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﭖ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﾒ()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﭖ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    return-void
.end method

.method public final declared-synchronized ﱡ()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾇ:Z

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻏ:Landroid/os/Handler;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_20

    .line 5
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

    .line 6
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    .line 7
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;->ﾒ:Landroid/content/Context;

    .line 8
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾇ:Z

    .line 10
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﱟ()V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_d

    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_d

    throw v0
.end method

.method public final declared-synchronized ﺙ()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﱡ:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public final ﻏ()V
    .registers 5

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴭ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᴭ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﮉ:Lcom/ironsource/adqualitysdk/sdk/i/ᴭ;

    .line 12
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

    .line 13
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_c
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;->ｋ:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_42

    monitor-exit v1

    .line 16
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ꮠ;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﭖ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    .line 50
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴘ;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᴘ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᴘ;)V

    .line 62
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᴉ;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᴉ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 63
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ↄ:Landroid/os/Handler;

    if-eqz v2, :cond_41

    .line 64
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;

    invoke-direct {v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;Lcom/ironsource/adqualitysdk/sdk/i/ſ;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_41
    return-void

    :catchall_42
    move-exception v0

    .line 65
    monitor-exit v1

    throw v0
.end method

.method public final ﻐ()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻏ:Landroid/os/Handler;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_12

    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Z)V

    .line 6
    monitor-exit p0

    return-void

    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_a

    throw v0
.end method

.method public final ﻛ()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    :try_start_1
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﺙ:Z

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ẓ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ẓ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 3
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻐ()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 5
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->טּ:Ljava/lang/String;

    const-string v2, "pKXIWoCykUvBuNR0guKsSqO22V6V4JdQj7M=\n"

    const-string v3, "4de6NfKS+CU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final declared-synchronized ｋ()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾇ:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final ﾇ(Lorg/json/JSONObject;)V
    .registers 4

    .line 5
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﻐ()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7
    monitor-enter p0

    .line 8
    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﱟ:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_1c

    .line 11
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ỵ;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ỵ;-><init>(Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void

    :catchall_1c
    move-exception p1

    .line 12
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1

    :cond_1f
    return-void
.end method

.method public final declared-synchronized ﾇ()Z
    .registers 2

    monitor-enter p0

    .line 4
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﱡ:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;
    .registers 2

    monitor-enter p0

    .line 74
    :try_start_1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 75
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->K:Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final declared-synchronized ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ๆ;)V
    .registers 3

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﮐ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final declared-synchronized ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭻ;)V
    .registers 3

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﱟ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ｆ;)V

    return-void
.end method

.method public final ﾒ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ｆ;)V
    .registers 13

    .line 40
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->טּ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v2, "TYDjdpFKkCl20ul6kUmQOG+X9GvFDQ==\n"

    const-string v3, "GfKaH/8tsF0=\n"

    invoke-static {v2, v3, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖟ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    const-string v2, "5ZMtqM1tf6axliX8zCN8sf8=\n"

    const-string v3, "xeRE3KVNGt4=\n"

    invoke-static {v2, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 43
    invoke-static {v0, v0, v1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 44
    :try_start_1b
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ｋ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DaDUaBXujMsqocdoA/2HwTfv1yES48LBIqLFckY=\n"

    const-string p4, "Q8+gSGaL4q8=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Carl1g7L9DBM5qDMFIfyMVv05dxE\n"

    const-string p3, "KYKArm2ngVQ=\n"

    invoke-static {p1, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_4f
    move-exception v0

    move-object p1, v0

    move-object v2, p1

    goto :goto_87

    .line 48
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8rFqegB63AHJ42B2AHncENCmfWdOapUBzuN9cgN4xlU=\n"

    const-string v3, "psMTE24d/HU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

    .line 50
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ὶ;

    .line 51
    monitor-enter v1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_74} :catch_4f

    .line 52
    :try_start_74
    iget-boolean v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/ὶ;->ﾇ:Z
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_83

    :try_start_76
    monitor-exit v1

    .line 53
    new-instance v7, Lcom/ironsource/adqualitysdk/sdk/i/Ṭ;

    invoke-direct {v7, p0, p4}, Lcom/ironsource/adqualitysdk/sdk/i/Ṭ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;Lcom/ironsource/adqualitysdk/sdk/i/ｆ;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLcom/ironsource/adqualitysdk/sdk/i/Ṭ;)V

    return-void

    :catchall_83
    move-exception v0

    move-object p1, v0

    .line 72
    monitor-exit v1

    throw p1
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_87} :catch_4f

    .line 73
    :goto_87
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->טּ:Ljava/lang/String;

    const-string p1, "KhFAzH8eectPEFfNaXtmwAEX\n"

    const-string p2, "b2Myow0+EKU=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    return-void
.end method

.method public final ﾒ(Lorg/json/JSONObject;)V
    .registers 7

    .line 80
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    move-result-object v0

    .line 81
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 82
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 83
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﺙ:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_1c

    .line 88
    :cond_18
    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 89
    :goto_1c
    monitor-enter v0

    .line 90
    :try_start_1d
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_50

    monitor-exit v0

    .line 91
    const-string v0, "y50z\n"

    const-string v2, "relLpGWAsw4=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_34

    goto :goto_38

    .line 96
    :cond_34
    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 97
    :goto_38
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3f

    :cond_4f
    return-void

    :catchall_50
    move-exception p1

    .line 100
    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized ﾒ(Z)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_18

    .line 76
    :try_start_3
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻏ:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻏ:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ッ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ッ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    const/4 v1, 0x0

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    :catchall_16
    move-exception p1

    goto :goto_30

    .line 78
    :cond_18
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;

    invoke-direct {v2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_16

    :goto_2e
    monitor-exit p0

    return-void

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_16

    throw p1
.end method
