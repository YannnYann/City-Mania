###### Class com.iab.omid.library.appodeal.attestation.c (com.iab.omid.library.appodeal.attestation.c)
.class public final Lcom/iab/omid/library/appodeal/attestation/c;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/appodeal/attestation/k;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Lcom/iab/omid/library/appodeal/attestation/c;


# instance fields
.field private final a:Lcom/iab/omid/library/appodeal/attestation/d;

.field private final b:Landroid/content/Context;

.field private volatile c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/appodeal/attestation/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iab/omid/library/appodeal/attestation/c;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iab/omid/library/appodeal/attestation/d;

    invoke-direct {v0}, Lcom/iab/omid/library/appodeal/attestation/d;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/c;->a:Lcom/iab/omid/library/appodeal/attestation/d;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-object p1, p0, Lcom/iab/omid/library/appodeal/attestation/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/iab/omid/library/appodeal/attestation/c;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/iab/omid/library/appodeal/attestation/c;
    .registers 3

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/attestation/c;->e:Lcom/iab/omid/library/appodeal/attestation/c;

    if-nez v0, :cond_19

    const-class v0, Lcom/iab/omid/library/appodeal/attestation/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/iab/omid/library/appodeal/attestation/c;->e:Lcom/iab/omid/library/appodeal/attestation/c;

    if-nez v1, :cond_15

    new-instance v1, Lcom/iab/omid/library/appodeal/attestation/c;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/appodeal/attestation/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/iab/omid/library/appodeal/attestation/c;->e:Lcom/iab/omid/library/appodeal/attestation/c;

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
    sget-object p0, Lcom/iab/omid/library/appodeal/attestation/c;->e:Lcom/iab/omid/library/appodeal/attestation/c;

    return-object p0
.end method

.method private c()V
    .registers 4

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/attestation/c;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/iab/omid/library/appodeal/attestation/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iab/omid/library/appodeal/attestation/j;->a(Landroid/content/Context;)Lcom/iab/omid/library/appodeal/attestation/j;

    move-result-object v1

    const-string v2, "FireTVFOSDAT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/appodeal/attestation/b;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/c;->c:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/c;->c:Ljava/util/List;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/c;->c:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/c;->c:Ljava/util/List;

    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return-object v0

    :catchall_10
    move-exception v0

    goto :goto_64

    :cond_12
    :try_start_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/iab/omid/library/appodeal/attestation/c;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iab/omid/library/appodeal/attestation/k;

    invoke-interface {v3}, Lcom/iab/omid/library/appodeal/attestation/k;->a()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/iab/omid/library/appodeal/attestation/c;->a:Lcom/iab/omid/library/appodeal/attestation/d;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/iab/omid/library/appodeal/attestation/c;->b:Landroid/content/Context;

    invoke-virtual {v3, v2, v4}, Lcom/iab/omid/library/appodeal/attestation/d;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/iab/omid/library/appodeal/attestation/b;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :catch_4d
    move-exception v0

    goto :goto_54

    :cond_4f
    iput-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/c;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/c;->c:Ljava/util/List;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_53} :catch_4d
    .catchall {:try_start_12 .. :try_end_53} :catchall_10

    goto :goto_e

    :goto_54
    :try_start_54
    const-string v1, "Error getting supported attestation mechanisms"

    invoke-static {v1, v0}, Lcom/iab/omid/library/appodeal/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/c;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/attestation/c;->c:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :goto_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_10

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/attestation/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iab/omid/library/appodeal/attestation/k;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/iab/omid/library/appodeal/attestation/k;->a()Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .registers 2

    .line 0
    invoke-virtual {p0}, Lcom/iab/omid/library/appodeal/attestation/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
