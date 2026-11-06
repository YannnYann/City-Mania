###### Class com.iab.omid.library.appodeal.attestation.j (com.iab.omid.library.appodeal.attestation.j)
.class public Lcom/iab/omid/library/appodeal/attestation/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/appodeal/attestation/k;


# static fields
.field private static volatile d:Lcom/iab/omid/library/appodeal/attestation/j;


# instance fields
.field private volatile a:Ljava/lang/Boolean;

.field private volatile b:Ljava/lang/Boolean;

.field private final c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/appodeal/attestation/j;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iab/omid/library/appodeal/attestation/j;->c()Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/iab/omid/library/appodeal/attestation/j;
    .registers 3

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/attestation/j;->d:Lcom/iab/omid/library/appodeal/attestation/j;

    if-nez v0, :cond_19

    const-class v0, Lcom/iab/omid/library/appodeal/attestation/j;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/iab/omid/library/appodeal/attestation/j;->d:Lcom/iab/omid/library/appodeal/attestation/j;

    if-nez v1, :cond_15

    new-instance v1, Lcom/iab/omid/library/appodeal/attestation/j;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/appodeal/attestation/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/iab/omid/library/appodeal/attestation/j;->d:Lcom/iab/omid/library/appodeal/attestation/j;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw p0

    :cond_19
    :goto_19
    sget-object p0, Lcom/iab/omid/library/appodeal/attestation/j;->d:Lcom/iab/omid/library/appodeal/attestation/j;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 0
    invoke-virtual {p0}, Lcom/iab/omid/library/appodeal/attestation/j;->c()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_16
    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    goto :goto_60

    :cond_1a
    invoke-virtual {p0}, Lcom/iab/omid/library/appodeal/attestation/j;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->b:Ljava/lang/Boolean;

    :goto_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_18

    return v1

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_3d

    const-string v0, "PackageManager is null when checking attestation capability"

    invoke-static {v0}, Lcom/iab/omid/library/appodeal/utils/d;->b(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->b:Ljava/lang/Boolean;

    goto :goto_25

    :catch_39
    move-exception v0

    goto :goto_4a

    :catch_3b
    move-exception v0

    goto :goto_55

    :cond_3d
    const-string v2, "com.amazon.privacypass"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/iab/omid/library/appodeal/attestation/j;->b:Ljava/lang/Boolean;
    :try_end_49
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_49} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_49} :catch_39
    .catchall {:try_start_27 .. :try_end_49} :catchall_18

    goto :goto_16

    :goto_4a
    :try_start_4a
    const-string v2, "Unexpected error when checking attestation capability"

    invoke-static {v2, v0}, Lcom/iab/omid/library/appodeal/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->b:Ljava/lang/Boolean;

    monitor-exit p0

    return v1

    :goto_55
    const-string v2, "Security exception when checking attestation capability"

    invoke-static {v2, v0}, Lcom/iab/omid/library/appodeal/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->b:Ljava/lang/Boolean;

    monitor-exit p0

    return v1

    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_18

    throw v0
.end method

.method public c()Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_16
    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    goto :goto_4a

    :cond_1a
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/j;->c:Landroid/content/Context;

    if-eqz v0, :cond_42

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_42

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_42

    const/4 v0, 0x1

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/iab/omid/library/appodeal/attestation/j;->a:Ljava/lang/Boolean;

    goto :goto_16

    :goto_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_18

    throw v0
.end method
