###### Class com.ironsource.Cg (com.ironsource.Cg)
.class public Lcom/ironsource/Cg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/Cg;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/ironsource/Cg;->b:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/Cg;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/ironsource/Cg;->c:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/ironsource/Cg;->b:I

    .line 3
    iput v0, p0, Lcom/ironsource/Cg;->c:I

    .line 6
    new-instance v0, Lcom/ironsource/Cg$a;

    invoke-direct {v0, p0}, Lcom/ironsource/Cg$a;-><init>(Lcom/ironsource/Cg;)V

    iput-object v0, p0, Lcom/ironsource/Cg;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 3

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/Cg;->a:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;IZ)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/Cg;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Lcom/ironsource/Cg;->a:Ljava/util/HashMap;

    if-nez p2, :cond_10

    move p2, v2

    goto :goto_11

    :cond_10
    move p2, v1

    :goto_11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_18
    iget-object p1, p0, Lcom/ironsource/Cg;->a:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "isShown"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/ironsource/Cg;->a:Ljava/util/HashMap;

    .line 7
    const-string p2, "isWindowVisible"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/ironsource/Cg;->a:Ljava/util/HashMap;

    .line 8
    const-string p2, "isVisible"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_52

    :cond_43
    iget-object p1, p0, Lcom/ironsource/Cg;->a:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_52

    move v1, v2

    .line 11
    :cond_52
    iget-object p1, p0, Lcom/ironsource/Cg;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "isViewVisible"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.ironsource.Cg.a (com.ironsource.Cg$a)
.class Lcom/ironsource/Cg$a;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Cg;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Cg;


# direct methods
.method public constructor <init>(Lcom/ironsource/Cg;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/ironsource/Cg$a;->a:Lcom/ironsource/Cg;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/ironsource/Cg;->-$$Nest$fgetb(Lcom/ironsource/Cg;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "isVisible"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/ironsource/Cg;->-$$Nest$fgetc(Lcom/ironsource/Cg;)I

    move-result p1

    if-nez p1, :cond_20

    move v1, v2

    :cond_20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isWindowVisible"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "isShown"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v0, "isViewVisible"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
