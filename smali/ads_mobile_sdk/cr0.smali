###### Class ads_mobile_sdk.cr0 (ads_mobile_sdk.cr0)
.class abstract Lads_mobile_sdk/cr0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/cr0;->c()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/cr0;->a:Ljava/lang/Class;

    return-void
.end method

.method public static a()Lads_mobile_sdk/er0;
    .registers 1

    .line 1
    const-string v0, "getEmptyRegistry"

    invoke-static {v0}, Lads_mobile_sdk/cr0;->a(Ljava/lang/String;)Lads_mobile_sdk/er0;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 3
    :cond_9
    sget-object v0, Lads_mobile_sdk/er0;->f:Lads_mobile_sdk/er0;

    return-object v0
.end method

.method private static final a(Ljava/lang/String;)Lads_mobile_sdk/er0;
    .registers 5

    .line 4
    sget-object v0, Lads_mobile_sdk/cr0;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v2, 0x0

    .line 9
    :try_start_7
    new-array v3, v2, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/er0;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    return-object v1
.end method

.method public static b()Lads_mobile_sdk/er0;
    .registers 1

    .line 1
    const-string v0, "loadGeneratedRegistry"

    invoke-static {v0}, Lads_mobile_sdk/cr0;->a(Ljava/lang/String;)Lads_mobile_sdk/er0;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 7
    :cond_9
    invoke-static {}, Lads_mobile_sdk/er0;->d()Lads_mobile_sdk/er0;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    .line 9
    :cond_10
    invoke-static {}, Lads_mobile_sdk/cr0;->a()Lads_mobile_sdk/er0;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionRegistry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method
