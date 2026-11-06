###### Class com.ironsource.mediationsdk.config.ConfigFile (com.ironsource.mediationsdk.config.ConfigFile)
.class public Lcom/ironsource/mediationsdk/config/ConfigFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/config/ConfigFile;


# instance fields
.field private mPluginFrameworkVersion:Ljava/lang/String;

.field private mPluginType:Ljava/lang/String;

.field private mPluginVersion:Ljava/lang/String;

.field private mSupportedPlugins:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v9, "MAUI"

    const-string v10, "Other"

    const-string v0, "AdobeAir"

    const-string v1, "Cocos2dx"

    const-string v2, "Cordova"

    const-string v3, "Corona"

    const-string v4, "Defold"

    const-string v5, "Flutter"

    const-string v6, "ReactNative"

    const-string v7, "Unity"

    const-string v8, "Unreal"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mSupportedPlugins:[Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/config/ConfigFile;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/config/ConfigFile;->mInstance:Lcom/ironsource/mediationsdk/config/ConfigFile;

    if-nez v1, :cond_11

    .line 2
    new-instance v1, Lcom/ironsource/mediationsdk/config/ConfigFile;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/config/ConfigFile;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/config/ConfigFile;->mInstance:Lcom/ironsource/mediationsdk/config/ConfigFile;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 5
    :cond_11
    :goto_11
    sget-object v1, Lcom/ironsource/mediationsdk/config/ConfigFile;->mInstance:Lcom/ironsource/mediationsdk/config/ConfigFile;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public getPluginFrameworkVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setPluginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    if-eqz p1, :cond_19

    .line 4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mSupportedPlugins:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 9
    iput-object v3, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    goto :goto_19

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    :goto_19
    if-eqz p2, :cond_1d

    .line 16
    iput-object p2, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginVersion:Ljava/lang/String;

    :cond_1d
    if-eqz p3, :cond_21

    .line 20
    iput-object p3, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginFrameworkVersion:Ljava/lang/String;

    :cond_21
    return-void
.end method
