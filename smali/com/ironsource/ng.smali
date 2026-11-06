###### Class com.ironsource.C3750ng (com.ironsource.ng)
.class public final Lcom/ironsource/ng;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenProvider.kt\ncom/ironsource/environment/token/TokenProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Lcom/ironsource/T6;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ironsource/mg;->a:Lcom/ironsource/mg$a;

    invoke-virtual {v0}, Lcom/ironsource/mg$a;->a()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/ng;->a:[Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/ironsource/T6;

    invoke-direct {v0}, Lcom/ironsource/T6;-><init>()V

    iput-object v0, p0, Lcom/ironsource/ng;->b:Lcom/ironsource/T6;

    return-void
.end method

.method private final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    .line 4
    const-string v0, "md"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/ironsource/U6;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 6
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    return-object p1
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/ng;->b:Lcom/ironsource/T6;

    iget-object v1, p0, Lcom/ironsource/ng;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/T6;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getDataByKeys(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/ng;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/ng;->b:Lcom/ironsource/T6;

    iget-object v1, p0, Lcom/ironsource/ng;->a:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/T6;->a(Landroid/content/Context;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "getDataByKeys(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/ironsource/ng;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
