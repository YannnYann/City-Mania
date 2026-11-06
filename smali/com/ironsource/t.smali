###### Class com.ironsource.C3844t (com.ironsource.t)
.class public final Lcom/ironsource/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/t$a;,
        Lcom/ironsource/t$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/ironsource/t$a;

.field public static final e:Ljava/lang/String; = "capping"

.field public static final f:Ljava/lang/String; = "pacing"

.field public static final g:Ljava/lang/String; = "delivery"

.field public static final h:Ljava/lang/String; = "progressiveLoadingConfig"

.field public static final i:Ljava/lang/String; = "expiredDurationInMinutes"

.field public static final j:Ljava/lang/String; = "reward"

.field public static final k:Ljava/lang/String; = "name"

.field public static final l:Ljava/lang/String; = "amount"

.field public static final m:Ljava/lang/String; = "virtualItemName"

.field public static final n:Ljava/lang/String; = "virtualItemCount"

.field public static final o:J = 0x3cL


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/t$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ironsource/t$b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/t$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6eUvN73cjH2CfZIXJqN-en17CwY(Lorg/json/JSONObject;)Lcom/ironsource/t$b;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/t;->a(Lorg/json/JSONObject;)Lcom/ironsource/t$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sp3GOspZ6OBsDU6Xg3pUmq8niTI(Lorg/json/JSONObject;)Lcom/ironsource/t$b;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/t;->b(Lorg/json/JSONObject;)Lcom/ironsource/t$b;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/t;->d:Lcom/ironsource/t$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "configurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/ironsource/ud;

    invoke-direct {v0, p1}, Lcom/ironsource/ud;-><init>(Lorg/json/JSONObject;)V

    new-instance v1, Lcom/ironsource/t$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/ironsource/t$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ironsource/ud;->a(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/t;->a:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/ironsource/t$b;

    invoke-direct {v0, p1}, Lcom/ironsource/t$b;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/t;->b:Lcom/ironsource/t$b;

    .line 58
    new-instance v0, Lcom/ironsource/Y0;

    invoke-direct {v0, p1}, Lcom/ironsource/Y0;-><init>(Lorg/json/JSONObject;)V

    new-instance p1, Lcom/ironsource/t$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/ironsource/t$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ironsource/Y0;->a(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/t;->c:Ljava/util/Map;

    return-void
.end method

.method private static final a(Lorg/json/JSONObject;)Lcom/ironsource/t$b;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/t$b;

    invoke-direct {v0, p0}, Lcom/ironsource/t$b;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static final b(Lorg/json/JSONObject;)Lcom/ironsource/t$b;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/t$b;

    invoke-direct {v0, p0}, Lcom/ironsource/t$b;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/t$b;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ironsource/t;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Lcom/ironsource/t$b;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/t;->b:Lcom/ironsource/t$b;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/t$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/t;->a:Ljava/util/Map;

    return-object v0
.end method

###### Class com.ironsource.C3844t.a (com.ironsource.t$a)
.class public final Lcom/ironsource/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/t;
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
    invoke-direct {p0}, Lcom/ironsource/t$a;-><init>()V

    return-void
.end method

###### Class com.ironsource.C3844t.b (com.ironsource.t$b)
.class public final Lcom/ironsource/t$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/H3;

.field private final b:Lcom/ironsource/hd;

.field private final c:Lcom/ironsource/Q4;

.field private final d:Ljava/lang/Long;

.field private final e:Lcom/ironsource/Ud;

.field private final f:Lcom/ironsource/Ud;

.field private final g:Lcom/ironsource/Hd;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "capping"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "getJSONObject(...)"

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    new-instance v1, Lcom/ironsource/H3;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/ironsource/H3;-><init>(Lorg/json/JSONObject;)V

    goto :goto_21

    :cond_20
    move-object v1, v3

    .line 5
    :goto_21
    iput-object v1, p0, Lcom/ironsource/t$b;->a:Lcom/ironsource/H3;

    .line 11
    const-string v0, "pacing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    new-instance v1, Lcom/ironsource/hd;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/ironsource/hd;-><init>(Lorg/json/JSONObject;)V

    goto :goto_39

    :cond_38
    move-object v1, v3

    .line 12
    :goto_39
    iput-object v1, p0, Lcom/ironsource/t$b;->b:Lcom/ironsource/hd;

    .line 17
    const-string v0, "delivery"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    new-instance v1, Lcom/ironsource/Q4;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/ironsource/Q4;-><init>(Z)V

    goto :goto_4e

    :cond_4d
    move-object v1, v3

    .line 18
    :goto_4e
    iput-object v1, p0, Lcom/ironsource/t$b;->c:Lcom/ironsource/Q4;

    .line 23
    const-string v0, "expiredDurationInMinutes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_62

    :cond_61
    move-object v0, v3

    .line 24
    :goto_62
    iput-object v0, p0, Lcom/ironsource/t$b;->d:Ljava/lang/Long;

    .line 29
    const-string v0, "reward"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 30
    new-instance v1, Lcom/ironsource/Ud;

    const-string v4, "name"

    const-string v5, "amount"

    invoke-direct {v1, v0, v4, v5}, Lcom/ironsource/Ud;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_76
    move-object v1, v3

    .line 31
    :goto_77
    iput-object v1, p0, Lcom/ironsource/t$b;->e:Lcom/ironsource/Ud;

    .line 36
    new-instance v0, Lcom/ironsource/Ud;

    const-string v1, "virtualItemName"

    const-string v4, "virtualItemCount"

    invoke-direct {v0, p1, v1, v4}, Lcom/ironsource/Ud;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/ironsource/Ud;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8f

    goto :goto_96

    :cond_8f
    invoke-virtual {v0}, Lcom/ironsource/Ud;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_96

    goto :goto_97

    :cond_96
    :goto_96
    move-object v0, v3

    .line 38
    :goto_97
    iput-object v0, p0, Lcom/ironsource/t$b;->f:Lcom/ironsource/Ud;

    .line 44
    const-string v0, "progressiveLoadingConfig"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    new-instance v3, Lcom/ironsource/Hd;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/ironsource/Hd;-><init>(Lorg/json/JSONObject;)V

    .line 45
    :cond_ad
    iput-object v3, p0, Lcom/ironsource/t$b;->g:Lcom/ironsource/Hd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/Ud;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->e:Lcom/ironsource/Ud;

    return-object v0
.end method

.method public final b()Lcom/ironsource/H3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->a:Lcom/ironsource/H3;

    return-object v0
.end method

.method public final c()Lcom/ironsource/Q4;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->c:Lcom/ironsource/Q4;

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public final e()Lcom/ironsource/hd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->b:Lcom/ironsource/hd;

    return-object v0
.end method

.method public final f()Lcom/ironsource/Ud;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->f:Lcom/ironsource/Ud;

    return-object v0
.end method

.method public final g()Lcom/ironsource/Hd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->g:Lcom/ironsource/Hd;

    return-object v0
.end method

###### Class com.ironsource.C3845t$$ExternalSyntheticLambda0 (com.ironsource.t$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/t$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/ironsource/t;->$r8$lambda$sp3GOspZ6OBsDU6Xg3pUmq8niTI(Lorg/json/JSONObject;)Lcom/ironsource/t$b;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.C3846t$$ExternalSyntheticLambda1 (com.ironsource.t$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/t$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/ironsource/t;->$r8$lambda$6eUvN73cjH2CfZIXJqN-en17CwY(Lorg/json/JSONObject;)Lcom/ironsource/t$b;

    move-result-object p1

    return-object p1
.end method
