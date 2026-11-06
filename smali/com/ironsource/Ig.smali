###### Class com.ironsource.Ig (com.ironsource.Ig)
.class public final Lcom/ironsource/Ig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Ig$a;,
        Lcom/ironsource/Ig$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/ironsource/Ig$a;


# instance fields
.field private final a:Ljava/lang/Double;

.field private final b:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/Ig$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Ig$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Ig;->c:Lcom/ironsource/Ig$a;

    return-void
.end method

.method private constructor <init>(Lcom/ironsource/Ig$b;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/Ig$b;->c()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/Ig;->a:Ljava/lang/Double;

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/Ig$b;->b()Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Ig;->b:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/Ig$b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/Ig;-><init>(Lcom/ironsource/Ig$b;)V

    return-void
.end method

.method public static final a()Lcom/ironsource/Ig$b;
    .registers 1

    .line 0
    sget-object v0, Lcom/ironsource/Ig;->c:Lcom/ironsource/Ig$a;

    invoke-virtual {v0}, Lcom/ironsource/Ig$a;->a()Lcom/ironsource/Ig$b;

    move-result-object v0

    return-object v0
.end method

.method public static final b()Lcom/ironsource/Ig;
    .registers 1

    .line 0
    sget-object v0, Lcom/ironsource/Ig;->c:Lcom/ironsource/Ig$a;

    invoke-virtual {v0}, Lcom/ironsource/Ig$a;->b()Lcom/ironsource/Ig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ig;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public final d()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ig;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    const-string v1, "ceiling"

    iget-object v2, p0, Lcom/ironsource/Ig;->b:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "floor"

    iget-object v2, p0, Lcom/ironsource/Ig;->a:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_25

    :catch_14
    move-exception v1

    .line 6
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 7
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 9
    :goto_25
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ig;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaterfallConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.Ig.a (com.ironsource.Ig$a)
.class public final Lcom/ironsource/Ig$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Ig$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/Ig$b;
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/Ig$b;

    invoke-direct {v0}, Lcom/ironsource/Ig$b;-><init>()V

    return-object v0
.end method

.method public final b()Lcom/ironsource/Ig;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ig$a;->a()Lcom/ironsource/Ig$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ig$b;->a()Lcom/ironsource/Ig;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.Ig.b (com.ironsource.Ig$b)
.class public final Lcom/ironsource/Ig$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Double;

.field private b:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)Lcom/ironsource/Ig$b;
    .registers 3

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Ig$b;->b:Ljava/lang/Double;

    return-object p0
.end method

.method public final a()Lcom/ironsource/Ig;
    .registers 3

    .line 3
    new-instance v0, Lcom/ironsource/Ig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/Ig;-><init>(Lcom/ironsource/Ig$b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Double;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ig$b;->b:Ljava/lang/Double;

    return-void
.end method

.method public final b(D)Lcom/ironsource/Ig$b;
    .registers 3

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Ig$b;->a:Ljava/lang/Double;

    return-object p0
.end method

.method public final b()Ljava/lang/Double;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ig$b;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public final b(Ljava/lang/Double;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ig$b;->a:Ljava/lang/Double;

    return-void
.end method

.method public final c()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ig$b;->a:Ljava/lang/Double;

    return-object v0
.end method
