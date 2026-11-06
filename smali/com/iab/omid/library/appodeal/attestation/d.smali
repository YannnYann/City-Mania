###### Class com.iab.omid.library.appodeal.attestation.d (com.iab.omid.library.appodeal.attestation.d)
.class public Lcom/iab/omid/library/appodeal/attestation/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;)Lcom/iab/omid/library/appodeal/attestation/b;
    .registers 6

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_b

    :try_start_3
    const-string p2, "Cannot create mechanism: Mechanism name cannot be null"

    invoke-static {p2}, Lcom/iab/omid/library/appodeal/utils/d;->b(Ljava/lang/String;)V

    return-object v0

    :catch_9
    move-exception p2

    goto :goto_22

    :cond_b
    if-nez p2, :cond_13

    const-string p2, "Cannot create mechanism: Context cannot be null"

    invoke-static {p2}, Lcom/iab/omid/library/appodeal/utils/d;->b(Ljava/lang/String;)V

    return-object v0

    :cond_13
    const-string v1, "FireTVFOSDAT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Lcom/iab/omid/library/appodeal/attestation/i;

    invoke-direct {v1, p2}, Lcom/iab/omid/library/appodeal/attestation/i;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_9

    return-object v1

    :cond_21
    return-object v0

    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating attestation mechanism: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/iab/omid/library/appodeal/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method
