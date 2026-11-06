###### Class com.iab.omid.library.appodeal.adsession.UniversalAdId (com.iab.omid.library.appodeal.adsession.UniversalAdId)
.class public final Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;
.super Ljava/lang/Object;


# instance fields
.field private final idRegistry:Ljava/lang/String;

.field private final universalAdIdValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;->universalAdIdValue:Ljava/lang/String;

    iput-object p2, p0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;->idRegistry:Ljava/lang/String;

    return-void
.end method

.method public static createUniversalAdId(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;
    .registers 3

    .line 0
    const-string v0, "UniversalADID is null or empty"

    invoke-static {p0, v0}, Lcom/iab/omid/library/appodeal/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UniversalADID registry is null or empty"

    invoke-static {p1, v0}, Lcom/iab/omid/library/appodeal/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;

    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;->universalAdIdValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;->idRegistry:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s; %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
