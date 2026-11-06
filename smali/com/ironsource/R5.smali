###### Class com.ironsource.R5 (com.ironsource.R5)
.class public final Lcom/ironsource/R5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/R5;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/R5;->a:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_10

    :cond_f
    move-object p1, v1

    :goto_10
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_17
    return-object v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/R5;->a:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_10

    :cond_f
    move-object p1, v1

    :goto_10
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_17
    return-object v1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/R5;->a:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_10

    :cond_f
    move-object p1, v1

    :goto_10
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_17

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_17
    return-object v1
.end method
