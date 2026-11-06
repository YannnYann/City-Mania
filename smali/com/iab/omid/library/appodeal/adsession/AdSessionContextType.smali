###### Class com.iab.omid.library.appodeal.adsession.AdSessionContextType (com.iab.omid.library.appodeal.adsession.AdSessionContextType)
.class public final enum Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

.field public static final enum HTML:Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

.field public static final enum JAVASCRIPT:Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

.field public static final enum NATIVE:Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;


# instance fields
.field private final typeString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;
    .registers 3

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    sget-object v1, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    sget-object v2, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    filled-new-array {v0, v1, v2}, [Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 0
    new-instance v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    const/4 v1, 0x0

    const-string v2, "html"

    const-string v3, "HTML"

    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    new-instance v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    const/4 v1, 0x1

    const-string v2, "native"

    const-string v3, "NATIVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    new-instance v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    const/4 v1, 0x2

    const-string v2, "javascript"

    const-string v3, "JAVASCRIPT"

    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    invoke-static {}, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->$values()[Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    move-result-object v0

    sput-object v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->$VALUES:[Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->typeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;
    .registers 2

    .line 0
    const-class v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;
    .registers 1

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->$VALUES:[Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    invoke-virtual {v0}, [Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/adsession/AdSessionContextType;->typeString:Ljava/lang/String;

    return-object v0
.end method
