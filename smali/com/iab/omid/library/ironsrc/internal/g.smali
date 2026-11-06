###### Class com.iab.omid.library.ironsrc.internal.g (com.iab.omid.library.ironsrc.internal.g)
.class public Lcom/iab/omid/library/ironsrc/internal/g;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/iab/omid/library/ironsrc/internal/g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/iab/omid/library/ironsrc/internal/g;

    invoke-direct {v0}, Lcom/iab/omid/library/ironsrc/internal/g;-><init>()V

    sput-object v0, Lcom/iab/omid/library/ironsrc/internal/g;->b:Lcom/iab/omid/library/ironsrc/internal/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/iab/omid/library/ironsrc/internal/g;
    .registers 1

    .line 0
    sget-object v0, Lcom/iab/omid/library/ironsrc/internal/g;->b:Lcom/iab/omid/library/ironsrc/internal/g;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/internal/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .line 0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/internal/g;->a:Landroid/content/Context;

    return-void
.end method
