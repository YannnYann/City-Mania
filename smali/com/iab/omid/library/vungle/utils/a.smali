###### Class com.iab.omid.library.vungle.utils.a (com.iab.omid.library.vungle.utils.a)
.class public final Lcom/iab/omid/library/vungle/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static volatile b:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;


# direct methods
.method public static a()Lcom/iab/omid/library/vungle/adsession/DeviceCategory;
    .registers 1

    .line 0
    sget-object v0, Lcom/iab/omid/library/vungle/utils/a;->b:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    if-nez v0, :cond_b

    sget-object v0, Lcom/iab/omid/library/vungle/utils/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/iab/omid/library/vungle/utils/a;->b()V

    :cond_b
    sget-object v0, Lcom/iab/omid/library/vungle/utils/a;->b:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    if-nez v0, :cond_12

    sget-object v0, Lcom/iab/omid/library/vungle/adsession/DeviceCategory;->OTHER:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    return-object v0

    :cond_12
    sget-object v0, Lcom/iab/omid/library/vungle/utils/a;->b:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    return-object v0
.end method

.method private static a(I)Lcom/iab/omid/library/vungle/adsession/DeviceCategory;
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    sget-object p0, Lcom/iab/omid/library/vungle/adsession/DeviceCategory;->OTHER:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    return-object p0

    :cond_9
    sget-object p0, Lcom/iab/omid/library/vungle/adsession/DeviceCategory;->CTV:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    return-object p0

    :cond_c
    sget-object p0, Lcom/iab/omid/library/vungle/adsession/DeviceCategory;->MOBILE:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 0
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/iab/omid/library/vungle/utils/a;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    sput-object p0, Lcom/iab/omid/library/vungle/utils/a;->a:Landroid/content/Context;

    :cond_c
    const/4 p0, 0x0

    sput-object p0, Lcom/iab/omid/library/vungle/utils/a;->b:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .line 0
    const-class v0, Lcom/iab/omid/library/vungle/utils/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/iab/omid/library/vungle/utils/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_25

    sget-object v1, Lcom/iab/omid/library/vungle/utils/a;->b:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_21

    if-eqz v1, :cond_c

    goto :goto_25

    :cond_c
    :try_start_c
    sget-object v1, Lcom/iab/omid/library/vungle/utils/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Lcom/iab/omid/library/vungle/utils/a;->a(I)Lcom/iab/omid/library/vungle/adsession/DeviceCategory;

    move-result-object v1

    sput-object v1, Lcom/iab/omid/library/vungle/utils/a;->b:Lcom/iab/omid/library/vungle/adsession/DeviceCategory;
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_20} :catch_23
    .catchall {:try_start_c .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception v1

    goto :goto_27

    :catch_23
    :goto_23
    monitor-exit v0

    return-void

    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_21

    throw v1
.end method
