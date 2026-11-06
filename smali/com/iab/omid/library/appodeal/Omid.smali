###### Class com.iab.omid.library.appodeal.Omid (com.iab.omid.library.appodeal.Omid)
.class public final Lcom/iab/omid/library/appodeal/Omid;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcom/iab/omid/library/appodeal/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/iab/omid/library/appodeal/b;

    invoke-direct {v0}, Lcom/iab/omid/library/appodeal/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/appodeal/Omid;->INSTANCE:Lcom/iab/omid/library/appodeal/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activate(Landroid/content/Context;)V
    .registers 2

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/Omid;->INSTANCE:Lcom/iab/omid/library/appodeal/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/appodeal/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/Omid;->INSTANCE:Lcom/iab/omid/library/appodeal/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isActive()Z
    .registers 1

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/Omid;->INSTANCE:Lcom/iab/omid/library/appodeal/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/b;->b()Z

    move-result v0

    return v0
.end method

.method public static updateLastActivity()V
    .registers 1

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/Omid;->INSTANCE:Lcom/iab/omid/library/appodeal/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/b;->c()V

    return-void
.end method
