###### Class info.flowersoft.theotown.backend.PurchasesService (info.flowersoft.theotown.backend.PurchasesService)
.class public final Linfo/flowersoft/theotown/backend/PurchasesService;
.super Linfo/flowersoft/theotown/backend/Service;
.source "PurchasesService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    const-string v0, "user/purchases.php"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addPurchase(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Linfo/flowersoft/theotown/backend/Backend$Task;"
        }
    .end annotation

    .line 41
    const-string v0, "add purchase"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    .line 42
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    .line 43
    const-string p1, "amount"

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    .line 45
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    new-instance p2, Linfo/flowersoft/theotown/backend/PurchasesService$2;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/backend/PurchasesService$2;-><init>(Linfo/flowersoft/theotown/backend/PurchasesService;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    return-object p1
.end method

.method public getPurchases(Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;)",
            "Linfo/flowersoft/theotown/backend/Backend$Task;"
        }
    .end annotation

    .line 22
    const-string v0, "get purchases"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/backend/PurchasesService$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/backend/PurchasesService$1;-><init>(Linfo/flowersoft/theotown/backend/PurchasesService;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    return-object p1
.end method

.method public maxPurchase(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Linfo/flowersoft/theotown/backend/Backend$Task;"
        }
    .end annotation

    .line 59
    const-string v0, "max purchase"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    .line 60
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    .line 61
    const-string p1, "amount"

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    .line 63
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    new-instance p2, Linfo/flowersoft/theotown/backend/PurchasesService$3;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/backend/PurchasesService$3;-><init>(Linfo/flowersoft/theotown/backend/PurchasesService;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.backend.PurchasesService.AnonymousClass1 (info.flowersoft.theotown.backend.PurchasesService$1)
.class public Linfo/flowersoft/theotown/backend/PurchasesService$1;
.super Ljava/lang/Object;
.source "PurchasesService.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/PurchasesService;->getPurchases(Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/PurchasesService;

.field public final synthetic val$receiver:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/PurchasesService;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/PurchasesService$1;->this$0:Linfo/flowersoft/theotown/backend/PurchasesService;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/PurchasesService$1;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 8

    .line 25
    const-string v0, "purchases"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 27
    :goto_c
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 28
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 29
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const-string v4, "purchase_id"

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "amount"

    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 31
    :cond_31
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/PurchasesService$1;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.PurchasesService.AnonymousClass2 (info.flowersoft.theotown.backend.PurchasesService$2)
.class public Linfo/flowersoft/theotown/backend/PurchasesService$2;
.super Ljava/lang/Object;
.source "PurchasesService.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/PurchasesService;->addPurchase(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/PurchasesService;

.field public final synthetic val$receiver:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/PurchasesService;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/PurchasesService$2;->this$0:Linfo/flowersoft/theotown/backend/PurchasesService;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/PurchasesService$2;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 48
    new-instance v0, Lio/blueflower/stapel2d/util/Tuple;

    const-string v1, "purchase_id"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/PurchasesService$2;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.PurchasesService.AnonymousClass3 (info.flowersoft.theotown.backend.PurchasesService$3)
.class public Linfo/flowersoft/theotown/backend/PurchasesService$3;
.super Ljava/lang/Object;
.source "PurchasesService.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/PurchasesService;->maxPurchase(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/PurchasesService;

.field public final synthetic val$receiver:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/PurchasesService;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/PurchasesService$3;->this$0:Linfo/flowersoft/theotown/backend/PurchasesService;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/PurchasesService$3;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 66
    new-instance v0, Lio/blueflower/stapel2d/util/Tuple;

    const-string v1, "purchase_id"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/PurchasesService$3;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method
