###### Class com.iab.omid.library.appodeal.attestation.e (com.iab.omid.library.appodeal.attestation.e)
.class public final Lcom/iab/omid/library/appodeal/attestation/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/iab/omid/library/appodeal/attestation/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/iab/omid/library/appodeal/attestation/d;

    invoke-direct {v0}, Lcom/iab/omid/library/appodeal/attestation/d;-><init>()V

    sput-object v0, Lcom/iab/omid/library/appodeal/attestation/e;->a:Lcom/iab/omid/library/appodeal/attestation/d;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/iab/omid/library/appodeal/attestation/a;)V
    .registers 4

    .line 0
    if-nez p0, :cond_a

    :try_start_2
    const-string p0, "Attestation failed: Application Context cannot be null"

    :goto_4
    invoke-static {p0}, Lcom/iab/omid/library/appodeal/utils/d;->b(Ljava/lang/String;)V

    return-void

    :catch_8
    move-exception p0

    goto :goto_5c

    :cond_a
    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_59

    :cond_17
    if-nez p2, :cond_1c

    const-string p0, "Attestation failed: Attestation arguments cannot be null"

    goto :goto_4

    :cond_1c
    invoke-static {p0}, Lcom/iab/omid/library/appodeal/attestation/c;->a(Landroid/content/Context;)Lcom/iab/omid/library/appodeal/attestation/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/appodeal/attestation/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mechanism not supported on this device: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_37
    invoke-static {p0}, Lcom/iab/omid/library/appodeal/utils/d;->d(Ljava/lang/String;)V

    return-void

    :cond_3b
    sget-object v0, Lcom/iab/omid/library/appodeal/attestation/e;->a:Lcom/iab/omid/library/appodeal/attestation/d;

    invoke-virtual {v0, p1, p0}, Lcom/iab/omid/library/appodeal/attestation/d;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/iab/omid/library/appodeal/attestation/b;

    move-result-object p0

    if-eqz p0, :cond_47

    invoke-interface {p0, p2}, Lcom/iab/omid/library/appodeal/attestation/b;->a(Lcom/iab/omid/library/appodeal/attestation/a;)V

    return-void

    :cond_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create mechanism: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_37

    :cond_59
    :goto_59
    const-string p0, "Attestation failed: Mechanism name cannot be null or empty"
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5b} :catch_8

    goto :goto_4

    :goto_5c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error during attestation with mechanism: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/iab/omid/library/appodeal/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
