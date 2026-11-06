###### Class com.ironsource.Md (com.ironsource.Md)
.class public final Lcom/ironsource/Md;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProviderSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProviderSettings.kt\ncom/unity3d/sdk/internal/init/response/ProviderSettings\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,29:1\n32#2,2:30\n*S KotlinDebug\n*F\n+ 1 ProviderSettings.kt\ncom/unity3d/sdk/internal/init/response/ProviderSettings\n*L\n16#1:30,2\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/Ec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$os-ykDY498tllA6ymOOAKfbJiwI(Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Pair;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Md;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "providerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "keys(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/ironsource/Md$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/ironsource/Md$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Lkotlin/sequences/Sequence;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Md;->a:Ljava/util/Map;

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 26
    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/Ec;

    .line 27
    invoke-direct {p0, v0}, Lcom/ironsource/Md;->b(Lcom/ironsource/Ec;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 28
    invoke-direct {p0, v0}, Lcom/ironsource/Md;->a(Lcom/ironsource/Ec;)Lcom/ironsource/Ec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/Ec;->b(Lcom/ironsource/Ec;)V

    goto :goto_2c

    :cond_52
    return-void
.end method

.method private final a(Lcom/ironsource/Ec;)Lcom/ironsource/Ec;
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/ironsource/Md;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ironsource/Ec;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/Ec;

    return-object p1
.end method

.method private static final a(Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Pair;
    .registers 4

    .line 2
    new-instance v0, Lcom/ironsource/Ec;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "getJSONObject(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0}, Lcom/ironsource/Ec;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lcom/ironsource/Ec;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/Ec;->o()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/ironsource/Ec;->l()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/Ec;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Md;->a:Ljava/util/Map;

    return-object v0
.end method

###### Class com.ironsource.Md$$ExternalSyntheticLambda0 (com.ironsource.Md$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Md$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Md$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Md$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ironsource/Md;->$r8$lambda$os-ykDY498tllA6ymOOAKfbJiwI(Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
