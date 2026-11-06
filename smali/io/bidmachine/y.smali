###### Class io.bidmachine.y (io.bidmachine.y)
.class public abstract Lio/bidmachine/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$OglRKS1LkRhcMPsJRU56cUNEC0w(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WyyJUPMgqMKhhuKTWLKkWeYUrJk(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dH6dFTcx2GGNfpE2wu-0W5K6OSU(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/y;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iDRVXauQw7VrOMMrvEvDWrayIFY(Lio/bidmachine/NetworkConfig;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/y;->a(Lio/bidmachine/NetworkConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p5awiXT_-EDjOfcBwil6smp-NxM(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "format"

    const-string v1, "ad_units"

    const-string v2, "network"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/y;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/NetworkConfig;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    .line 5
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/bidmachine/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p0

    if-nez p0, :cond_1a

    return-object v0

    .line 9
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    .line 10
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/AdFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdFormat;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 12
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    goto :goto_22

    .line 14
    :cond_40
    new-instance v0, Lio/bidmachine/y$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lio/bidmachine/y$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    goto :goto_22

    :cond_49
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .registers 5

    .line 48
    invoke-static {p0, p1}, Lio/bidmachine/w;->a(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/x;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 53
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lio/bidmachine/x;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v1, Ljava/util/Map;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 55
    invoke-static {p2}, Lio/bidmachine/y;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/NetworkConfig;
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_29

    return-object p0

    :catchall_29
    move-exception p0

    .line 57
    new-instance p2, Lio/bidmachine/y$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lio/bidmachine/y$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 58
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lio/bidmachine/NetworkConfig;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 16
    :cond_4
    :try_start_4
    const-string v1, "network"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_54

    .line 19
    :try_start_a
    invoke-static {p1}, Lio/bidmachine/core/Utils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 20
    invoke-static {p0, v1, v2}, Lio/bidmachine/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p0

    if-nez p0, :cond_15

    return-object v0

    .line 26
    :cond_15
    const-string v2, "ad_units"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 27
    :goto_1c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 28
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 29
    const-string v4, "format"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/AdFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdFormat;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 31
    invoke-static {v3}, Lio/bidmachine/core/Utils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/y;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    goto :goto_48

    :catchall_3e
    move-exception p0

    goto :goto_56

    .line 34
    :cond_40
    new-instance v3, Lio/bidmachine/y$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lio/bidmachine/y$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 39
    :cond_4b
    new-instance p1, Lio/bidmachine/y$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lio/bidmachine/y$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/NetworkConfig;)V

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_3e

    return-object p0

    :catchall_54
    move-exception p0

    move-object v1, v0

    .line 44
    :goto_56
    new-instance p1, Lio/bidmachine/y$$ExternalSyntheticLambda3;

    invoke-direct {p1, v1}, Lio/bidmachine/y$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 45
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static synthetic a(Lio/bidmachine/NetworkConfig;)Ljava/lang/String;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 47
    const-string v0, "Load network from json config completed successfully: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    const-string v0, "format"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Network (%s) adUnit register fail: %s not provided"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .registers 5

    if-eqz p0, :cond_10

    .line 59
    :try_start_2
    sget-object v0, Lio/bidmachine/y;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 60
    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_10
    :cond_10
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "format"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Network (%s) adUnit register fail: %s not provided"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Network (%s) load fail!"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Network (%s) load fail!"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.y$$ExternalSyntheticLambda0 (io.bidmachine.y$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/y$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/y$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/y$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/y;->$r8$lambda$p5awiXT_-EDjOfcBwil6smp-NxM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.y$$ExternalSyntheticLambda1 (io.bidmachine.y$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/y$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/y$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/y$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/y;->$r8$lambda$WyyJUPMgqMKhhuKTWLKkWeYUrJk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.y$$ExternalSyntheticLambda2 (io.bidmachine.y$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/y$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/NetworkConfig;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkConfig;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/y$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/NetworkConfig;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/y$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/NetworkConfig;

    invoke-static {v0}, Lio/bidmachine/y;->$r8$lambda$iDRVXauQw7VrOMMrvEvDWrayIFY(Lio/bidmachine/NetworkConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.y$$ExternalSyntheticLambda3 (io.bidmachine.y$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/y$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/y$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/y$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/y;->$r8$lambda$OglRKS1LkRhcMPsJRU56cUNEC0w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.y$$ExternalSyntheticLambda4 (io.bidmachine.y$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/y$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/y$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/y$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/y;->$r8$lambda$dH6dFTcx2GGNfpE2wu-0W5K6OSU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
