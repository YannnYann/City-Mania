###### Class com.ironsource.C3914wd (com.ironsource.wd)
.class public final Lcom/ironsource/wd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/wd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/wd;

    invoke-direct {v0}, Lcom/ironsource/wd;-><init>()V

    sput-object v0, Lcom/ironsource/wd;->a:Lcom/ironsource/wd;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Landroidx/work/impl/utils/ProcessUtils$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    return-object v0
.end method


# virtual methods
.method public final b()Lcom/ironsource/B1;
    .registers 5

    .line 1
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_14

    const-string v0, ""

    .line 3
    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1f

    invoke-direct {p0}, Lcom/ironsource/wd;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1f
    move-object v1, v0

    .line 4
    :goto_20
    new-instance v2, Lcom/ironsource/B1;

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_30

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 7
    :goto_31
    invoke-direct {v2, v1, v0}, Lcom/ironsource/B1;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method
