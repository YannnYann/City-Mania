###### Class com.ironsource.C3945y8 (com.ironsource.y8)
.class public Lcom/ironsource/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/q7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/y8$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/ironsource/y8$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/ironsource/y8;->a(Lcom/ironsource/y8$a;)V

    .line 3
    iget-object p1, p1, Lcom/ironsource/y8$a;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ironsource/y8;->a(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/y8$a;Lcom/ironsource/y8-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/y8;-><init>(Lcom/ironsource/y8$a;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-static {p1}, Lcom/ironsource/Y3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectiontype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-static {p1}, Lcom/ironsource/Y3;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rawconnectiontype"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/ironsource/y8$a;)V
    .registers 7

    .line 3
    iget-object v0, p1, Lcom/ironsource/y8$a;->d:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/ironsource/c5;->b(Landroid/content/Context;)Lcom/ironsource/c5;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ironsource/c5;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceos"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ironsource/c5;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceosversion"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ironsource/c5;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "deviceapilevel"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ironsource/c5;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceoem"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ironsource/c5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "devicemodel"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bundleid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/ironsource/y8$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationkey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/ironsource/y8$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessionid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkversion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    const-string v1, "env"

    const-string v2, "prod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    const-string v1, "origin"

    const-string v2, "n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p1, Lcom/ironsource/y8$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 21
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/ironsource/y8$a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationuserid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_b0
    iget-object v0, p1, Lcom/ironsource/y8$a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 24
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/ironsource/y8$a;->f:Ljava/lang/String;

    const-string v1, "ett"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .line 26
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-static {p0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "connectiontype"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    invoke-static {p0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "rawconnectiontype"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/ironsource/y8;->a:Ljava/util/Map;

    return-object v0
.end method

###### Class com.ironsource.C3945y8.a (com.ironsource.y8$a)
.class public Lcom/ironsource/y8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/y8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/content/Context;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/ironsource/y8$a;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/y8$a;->d:Landroid/content/Context;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/ironsource/y8;
    .registers 3

    .line 3
    new-instance v0, Lcom/ironsource/y8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/y8;-><init>(Lcom/ironsource/y8$a;Lcom/ironsource/y8-IA;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->e:Ljava/lang/String;

    return-object p0
.end method
