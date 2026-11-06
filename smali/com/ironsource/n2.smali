###### Class com.ironsource.C3736n2 (com.ironsource.n2)
.class public final Lcom/ironsource/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuctionProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuctionProvider.kt\ncom/ironsource/environment/auction/AuctionProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/R6$a;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/ironsource/T6;


# direct methods
.method public constructor <init>(Lcom/ironsource/R6$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/n2;->a:Lcom/ironsource/R6$a;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    new-instance v0, Lcom/ironsource/l2;

    invoke-direct {v0}, Lcom/ironsource/l2;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/l2;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/ironsource/n2;->b:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Lcom/ironsource/T6;

    invoke-direct {p1}, Lcom/ironsource/T6;-><init>()V

    iput-object p1, p0, Lcom/ironsource/n2;->c:Lcom/ironsource/T6;

    return-void
.end method

.method private final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    .line 5
    const-string v0, "md"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/ironsource/U6;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    return-object p1
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/n2;->a:Lcom/ironsource/R6$a;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/ironsource/n2;->c:Lcom/ironsource/T6;

    iget-object v2, p0, Lcom/ironsource/n2;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/T6;->a(Ljava/util/List;Lcom/ironsource/R6$a;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 2
    :cond_e
    iget-object v0, p0, Lcom/ironsource/n2;->c:Lcom/ironsource/T6;

    iget-object v1, p0, Lcom/ironsource/n2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ironsource/T6;->a(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getDataByKeys(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_1b
    invoke-direct {p0, v0}, Lcom/ironsource/n2;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
