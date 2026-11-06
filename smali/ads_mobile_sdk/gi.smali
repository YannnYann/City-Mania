###### Class ads_mobile_sdk.gi (ads_mobile_sdk.gi)
.class abstract Lads_mobile_sdk/gi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field static b:Z = false

.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-boolean v0, Lads_mobile_sdk/gi;->a:Z

    if-eqz v0, :cond_7

    const-class v0, Lads_mobile_sdk/nw1;

    goto :goto_d

    :cond_7
    const-string v0, "libcore.io.Memory"

    invoke-static {v0}, Lads_mobile_sdk/gi;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_d
    sput-object v0, Lads_mobile_sdk/gi;->c:Ljava/lang/Class;

    .line 7
    sget-boolean v0, Lads_mobile_sdk/gi;->a:Z

    if-nez v0, :cond_1d

    .line 8
    const-string v0, "org.robolectric.Robolectric"

    invoke-static {v0}, Lads_mobile_sdk/gi;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 9
    :goto_1e
    sput-boolean v0, Lads_mobile_sdk/gi;->d:Z

    return-void
.end method

.method public static a()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 55
    sget-object v0, Lads_mobile_sdk/gi;->c:Ljava/lang/Class;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Z
    .registers 1

    .line 1
    sget-boolean v0, Lads_mobile_sdk/gi;->a:Z

    if-nez v0, :cond_f

    sget-object v0, Lads_mobile_sdk/gi;->c:Ljava/lang/Class;

    if-eqz v0, :cond_d

    sget-boolean v0, Lads_mobile_sdk/gi;->d:Z

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method
