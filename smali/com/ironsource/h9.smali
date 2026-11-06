###### Class com.ironsource.C3636h9 (com.ironsource.h9)
.class public final Lcom/ironsource/h9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ironsource/T6;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/ironsource/g9;

    invoke-direct {v1}, Lcom/ironsource/g9;-><init>()V

    invoke-virtual {v1}, Lcom/ironsource/g9;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ironsource/h9;->a:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/ironsource/T6;

    invoke-direct {v0}, Lcom/ironsource/T6;-><init>()V

    iput-object v0, p0, Lcom/ironsource/h9;->b:Lcom/ironsource/T6;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/h9;->b:Lcom/ironsource/T6;

    iget-object v1, p0, Lcom/ironsource/h9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ironsource/T6;->a(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getDataByKeys(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
