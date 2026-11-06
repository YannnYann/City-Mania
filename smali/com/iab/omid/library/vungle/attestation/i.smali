###### Class com.iab.omid.library.vungle.attestation.i (com.iab.omid.library.vungle.attestation.i)
.class public Lcom/iab/omid/library/vungle/attestation/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iab/omid/library/vungle/attestation/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/iab/omid/library/vungle/attestation/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/iab/omid/library/vungle/attestation/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/iab/omid/library/vungle/attestation/j;->a(Landroid/content/Context;)Lcom/iab/omid/library/vungle/attestation/j;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/vungle/attestation/i;->b:Lcom/iab/omid/library/vungle/attestation/j;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 0
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-object p1

    :cond_e
    :goto_e
    const-string p1, "1.0"

    return-object p1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 4

    .line 0
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_14} :catch_1a

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    return v0

    :cond_18
    :goto_18
    const/4 p1, 0x1

    return p1

    :catch_1a
    return v0
.end method


# virtual methods
.method public a()Lcom/iab/omid/library/vungle/attestation/h;
    .registers 2

    .line 0
    sget-object v0, Lcom/iab/omid/library/vungle/attestation/h;->b:Lcom/iab/omid/library/vungle/attestation/h;

    return-object v0
.end method

.method public a(Lcom/iab/omid/library/vungle/attestation/a;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/attestation/i;->b:Lcom/iab/omid/library/vungle/attestation/j;

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/attestation/j;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p1, "Attestation failed: Full attestation capability not available"

    :goto_a
    invoke-static {p1}, Lcom/iab/omid/library/vungle/utils/d;->b(Ljava/lang/String;)V

    return-void

    :cond_e
    if-nez p1, :cond_13

    const-string p1, "Attestation failed: AttestationArgs is null"

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/attestation/a;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string p1, "Attestation failed: attestationData is null"

    goto :goto_a

    :cond_1c
    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/attestation/a;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "verifierurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/attestation/a;->a()Ljava/util/Map;

    move-result-object p1

    const-string v1, "version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/iab/omid/library/vungle/attestation/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_9d

    :cond_45
    invoke-direct {p0, v0}, Lcom/iab/omid/library/vungle/attestation/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attestation failed: invalid verifier URL format: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting FireTV\'s FOS device attestation with verifier URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iab/omid/library/vungle/utils/d;->a(Ljava/lang/String;)V

    :try_start_71
    iget-object v1, p0, Lcom/iab/omid/library/vungle/attestation/i;->a:Landroid/content/Context;

    if-nez v1, :cond_7f

    const-string p1, "Attestation failed: application context is null"

    invoke-static {p1}, Lcom/iab/omid/library/vungle/utils/d;->b(Ljava/lang/String;)V

    return-void

    :catch_7b
    move-exception p1

    goto :goto_93

    :catch_7d
    move-exception p1

    goto :goto_99

    :cond_7f
    new-instance v1, Lcom/amazon/privacypass/VerificationContext;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/privacypass/VerificationContext;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/iab/omid/library/vungle/attestation/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/privacypass/PrivacyPass;->getInstance(Landroid/content/Context;)Lcom/amazon/privacypass/PrivacyPass;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/privacypass/PrivacyPass;->attest(Lcom/amazon/privacypass/VerificationContext;Lcom/amazon/privacypass/callback/AttestAPICallback;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_71 .. :try_end_92} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_92} :catch_7b

    return-void

    :goto_93
    const-string v0, "Attestation failed: unexpected error"

    :goto_95
    invoke-static {v0, p1}, Lcom/iab/omid/library/vungle/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9c

    :goto_99
    const-string v0, "Attestation failed: Invalid input parameters"

    goto :goto_95

    :goto_9c
    return-void

    :cond_9d
    :goto_9d
    const-string p1, "Attestation failed: verifier URL is null or empty"

    goto/16 :goto_a
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "FireTVFOSDAT"

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "1.0"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
