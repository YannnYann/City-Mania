###### Class com.ironsource.C3918x (com.ironsource.x)
.class public final Lcom/ironsource/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/pf;
.implements Lcom/ironsource/nf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/pf<",
        "Lorg/json/JSONObject;",
        ">;",
        "Lcom/ironsource/nf<",
        "Lcom/ironsource/v;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdFormatHistoryService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdFormatHistoryService.kt\ncom/ironsource/services/sessionhistory/services/AdFormatHistoryService\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,59:1\n384#2,7:60\n216#3,2:67\n*S KotlinDebug\n*F\n+ 1 AdFormatHistoryService.kt\ncom/ironsource/services/sessionhistory/services/AdFormatHistoryService\n*L\n22#1:60,7\n45#1:67,2\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H0;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/x;->a:Ljava/util/Map;

    return-void
.end method

.method private final b(Lcom/ironsource/v;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/v;->f()Lcom/ironsource/mf;

    move-result-object p1

    sget-object v0, Lcom/ironsource/x$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_30

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    const/4 v0, 0x4

    if-eq p1, v0, :cond_22

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1c

    goto :goto_22

    :cond_1c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 7
    :cond_22
    :goto_22
    iget p1, p0, Lcom/ironsource/x;->b:I

    if-lez p1, :cond_30

    add-int/lit8 p1, p1, -0x1

    .line 8
    iput p1, p0, Lcom/ironsource/x;->b:I

    return-void

    .line 9
    :cond_2b
    iget p1, p0, Lcom/ironsource/x;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ironsource/x;->b:I

    :cond_30
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/ironsource/x;->b:I

    return v0
.end method

.method public bridge synthetic a(Lcom/ironsource/of;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/ironsource/x;->b(Lcom/ironsource/of;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ironsource/v;)V
    .registers 5

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/v;->c()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/x;->a:Ljava/util/Map;

    .line 43
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 44
    new-instance v2, Lcom/ironsource/H0;

    invoke-direct {v2}, Lcom/ironsource/H0;-><init>()V

    .line 85
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_19
    check-cast v2, Lcom/ironsource/H0;

    .line 87
    new-instance v0, Lcom/ironsource/w;

    invoke-direct {v0}, Lcom/ironsource/w;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ironsource/v;->a(Lcom/ironsource/Ob;)Lcom/ironsource/F0;

    move-result-object v0

    .line 88
    invoke-virtual {v2, v0}, Lcom/ironsource/H0;->a(Lcom/ironsource/F0;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/ironsource/x;->b(Lcom/ironsource/v;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/ironsource/v;

    invoke-virtual {p0, p1}, Lcom/ironsource/x;->a(Lcom/ironsource/v;)V

    return-void
.end method

.method public b(Lcom/ironsource/of;)Lorg/json/JSONObject;
    .registers 7

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/ironsource/x;->a:Ljava/util/Map;

    .line 34
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/H0;

    .line 35
    invoke-virtual {v2, p1}, Lcom/ironsource/H0;->b(Lcom/ironsource/of;)Lorg/json/JSONObject;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_14

    .line 37
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14

    :cond_3a
    return-object v0
.end method

.method public final b()Z
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/ironsource/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class com.ironsource.C3918x.a (com.ironsource.x$a)
.class public final synthetic Lcom/ironsource/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/mf;->values()[Lcom/ironsource/mf;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/ironsource/mf;->f:Lcom/ironsource/mf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/ironsource/mf;->b:Lcom/ironsource/mf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/ironsource/mf;->c:Lcom/ironsource/mf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/ironsource/mf;->d:Lcom/ironsource/mf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/ironsource/mf;->e:Lcom/ironsource/mf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lcom/ironsource/x$a;->a:[I

    return-void
.end method
