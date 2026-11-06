###### Class ads_mobile_sdk.aw2 (ads_mobile_sdk.aw2)
.class final Lads_mobile_sdk/aw2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lads_mobile_sdk/aw2;


# instance fields
.field private final a:Lads_mobile_sdk/fu1;

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lads_mobile_sdk/la3<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/aw2;

    invoke-direct {v0}, Lads_mobile_sdk/aw2;-><init>()V

    sput-object v0, Lads_mobile_sdk/aw2;->c:Lads_mobile_sdk/aw2;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/aw2;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 148
    new-instance v0, Lads_mobile_sdk/fu1;

    invoke-direct {v0}, Lads_mobile_sdk/fu1;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/aw2;->a:Lads_mobile_sdk/fu1;

    return-void
.end method

.method public static a()Lads_mobile_sdk/aw2;
    .registers 1

    .line 162
    sget-object v0, Lads_mobile_sdk/aw2;->c:Lads_mobile_sdk/aw2;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Lads_mobile_sdk/la3;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lads_mobile_sdk/la3<",
            "TT;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lads_mobile_sdk/aw2;->a:Lads_mobile_sdk/fu1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fu1;->a(Ljava/lang/Class;)Lads_mobile_sdk/la3;

    move-result-object v0

    .line 73
    const-string v1, "schema"

    invoke-static {v0, v1}, Lads_mobile_sdk/yh1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lads_mobile_sdk/aw2;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/la3;

    if-eqz p1, :cond_16

    return-object p1

    :cond_16
    return-object v0
.end method


# virtual methods
.method public a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "**>;>(TT;)",
            "Lads_mobile_sdk/la3<",
            "TT;>;"
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/aw2;->b(Ljava/lang/Class;)Lads_mobile_sdk/la3;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lads_mobile_sdk/la3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lads_mobile_sdk/la3<",
            "TT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lads_mobile_sdk/aw2;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 65
    invoke-direct {p0, p1}, Lads_mobile_sdk/aw2;->a(Ljava/lang/Class;)Lads_mobile_sdk/la3;

    move-result-object p1

    return-object p1

    .line 67
    :cond_d
    check-cast v0, Lads_mobile_sdk/la3;

    return-object v0
.end method
