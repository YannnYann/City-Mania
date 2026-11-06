###### Class ads_mobile_sdk.iu1 (ads_mobile_sdk.iu1)
.class public final Lads_mobile_sdk/iu1;
.super Lads_mobile_sdk/e;
.source "SourceFile"


# static fields
.field public static final b:Lads_mobile_sdk/vh1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/iu1;->b:Lads_mobile_sdk/vh1;

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lads_mobile_sdk/e;-><init>(Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/e;->a:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    const/4 v2, 0x3

    if-ge v0, v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_e
    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v2, :cond_1b

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1e

    :cond_1b
    const v0, 0x7fffffff

    :goto_1e
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/e;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/dw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 9
    :cond_49
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
