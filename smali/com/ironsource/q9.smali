###### Class com.ironsource.C3801q9 (com.ironsource.q9)
.class public Lcom/ironsource/q9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/q9$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/q9$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/q9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/q9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/q9;->a:Lcom/ironsource/q9$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .registers 2

    .line 0
    sget-object v0, Lcom/ironsource/q9;->a:Lcom/ironsource/q9$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/q9$a;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final b(Landroid/content/Context;)Lcom/ironsource/Ue;
    .registers 2

    .line 0
    sget-object v0, Lcom/ironsource/q9;->a:Lcom/ironsource/q9$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/q9$a;->c(Landroid/content/Context;)Lcom/ironsource/Ue;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/content/Context;)Lcom/ironsource/D3;
    .registers 2

    .line 0
    sget-object v0, Lcom/ironsource/q9;->a:Lcom/ironsource/q9$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/q9$a;->d(Landroid/content/Context;)Lcom/ironsource/D3;

    move-result-object p0

    return-object p0
.end method

###### Class com.ironsource.C3801q9.a (com.ironsource.q9$a)
.class public final Lcom/ironsource/q9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/q9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInitServerResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitServerResponse.kt\ncom/ironsource/mediationsdk/InitServerResponse$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
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
    invoke-direct {p0}, Lcom/ironsource/q9$a;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 5
    :catch_a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/ironsource/q9$a;->d(Landroid/content/Context;)Lcom/ironsource/D3;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/D3;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p1}, Lcom/ironsource/D3;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Landroid/content/Context;)Lcom/ironsource/Ue;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/ironsource/q9$a;->d(Landroid/content/Context;)Lcom/ironsource/D3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/D3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1f

    invoke-virtual {v0}, Lcom/ironsource/D3;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v0, v2

    :goto_20
    if-eqz v0, :cond_39

    .line 4
    new-instance v1, Lcom/ironsource/Ue;

    invoke-virtual {v0}, Lcom/ironsource/D3;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/D3;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/D3;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/ironsource/Ue;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/ironsource/Ue$a;->c:Lcom/ironsource/Ue$a;

    invoke-virtual {v1, p1}, Lcom/ironsource/Ue;->a(Lcom/ironsource/Ue$a;)V

    return-object v1

    :cond_39
    return-object v2
.end method

.method public final d(Landroid/content/Context;)Lcom/ironsource/D3;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/q9$a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    const-string v0, "appKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "userId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v2, Lcom/ironsource/D3;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v0, v1, p1}, Lcom/ironsource/D3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
