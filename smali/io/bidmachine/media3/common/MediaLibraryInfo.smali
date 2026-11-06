###### Class io.bidmachine.media3.common.MediaLibraryInfo (io.bidmachine.media3.common.MediaLibraryInfo)
.class public final Lio/bidmachine/media3/common/MediaLibraryInfo;
.super Ljava/lang/Object;
.source "MediaLibraryInfo.java"


# static fields
.field public static final registeredModules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static registeredModulesString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/MediaLibraryInfo;->registeredModules:Ljava/util/HashSet;

    .line 59
    const-string v0, "media3.common"

    sput-object v0, Lio/bidmachine/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized registerModule(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lio/bidmachine/media3/common/MediaLibraryInfo;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Lio/bidmachine/media3/common/MediaLibraryInfo;->registeredModules:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/bidmachine/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/bidmachine/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_24

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_28

    .line 77
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_24

    throw p0
.end method

.method public static declared-synchronized registeredModules()Ljava/lang/String;
    .registers 2

    const-class v0, Lio/bidmachine/media3/common/MediaLibraryInfo;

    monitor-enter v0

    .line 65
    :try_start_3
    sget-object v1, Lio/bidmachine/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method
