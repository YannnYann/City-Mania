###### Class com.ironsource.mediationsdk.metadata.a (com.ironsource.mediationsdk.metadata.a)
.class public Lcom/ironsource/mediationsdk/metadata/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "do_not_sell"

.field public static final b:Ljava/lang/String; = "is_child_directed"

.field public static final c:Ljava/lang/String; = "is_deviceid_optout"

.field public static final d:Ljava/lang/String; = "google_family_self_certified_sdks"

.field public static final e:Ljava/lang/String; = "iiqf"

.field public static final f:Ljava/lang/String; = "is_test_suite"

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/lang/String; = "true"

.field protected static final i:Ljava/lang/String; = "false"

.field public static final j:Ljava/lang/String; = "google_water_mark"

.field public static final k:Ljava/lang/String; = "enable"

.field static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 1
    const-string v12, "Vungle_COPPA"

    const-string v13, "Yandex_COPPA"

    const-string v0, "admob_tfcd"

    const-string v1, "admob_tfua"

    const-string v2, "BidMachine_COPPA"

    const-string v3, "chartboost_coppa"

    const-string v4, "DT_COPPA"

    const-string v5, "is_child_directed"

    const-string v6, "LevelPlay_ChildDirected"

    const-string v7, "meta_mixed_audience"

    const-string v8, "Mintegral_COPPA"

    const-string v9, "Moloco_COPPA"

    const-string v10, "Pangle_COPPA"

    const-string v11, "UnityAds_COPPA"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/a;->g:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "is_child_directed"

    const-string v2, "is_deviceid_optout"

    const-string v3, "is_test_suite"

    const-string v4, "google_family_self_certified_sdks"

    const-string v5, "iiqf"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/a;->l:Ljava/util/Set;

    .line 38
    new-instance v1, Ljava/util/HashSet;

    filled-new-array {v2, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/ironsource/mediationsdk/metadata/a;->m:Ljava/util/Set;

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/ironsource/mediationsdk/metadata/a;->n:Ljava/util/Set;

    .line 49
    const-string v0, "do_not_sell"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
