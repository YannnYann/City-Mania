###### Class com.ironsource.adqualitysdk.sdk.i.C0481 (com.ironsource.adqualitysdk.sdk.i.ᒃ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ḻ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

.field public final synthetic ﾒ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ḻ;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    const-string v0, "1xM7tbxTbNPMBDmkrVtu39w=\n"

    const-string v1, "uH161sg6Gro=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    :cond_1d
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    const-string v0, "Z+W2wJqIwGx88rPGnZXEanHukw==\n"

    const-string v1, "CIv3o+7htgU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    :cond_19
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    const-string v0, "3QKVdHyxIbDGFYR2fasyvQ==\n"

    const-string v1, "smzUFwjYV9k=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    :cond_19
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    const-string v0, "9jAiD+I2mAvtJzEJ5SqDB/0=\n"

    const-string v1, "mV5jbJZf7mI=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    :cond_19
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    const-string v0, "IE/EW+DQLM47WNZZ4twTyTxV5Fb33AnTLlXg\n"

    const-string v1, "TyGFOJS5Wqc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    :cond_1d
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    const-string v0, "aUK4XolZ8r9yVapJnELws2I=\n"

    const-string v1, "Biz5Pf0whNY=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    :cond_19
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    const-string v0, "+5sq2m87IUPgjDjNdCInT/A=\n"

    const-string v1, "lPVruRtSVyo=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    :cond_19
    return-void
.end method

.method public final ﾇ(Landroid/app/Activity;)V
    .registers 4

    .line 1
    const-string v0, "p96F8F9+j9u9wqrlS3iF6afCoeddQ5/BrA==\n"

    const-string v1, "yLDEgC8s6q8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final ﾒ(Landroid/app/Activity;)V
    .registers 4

    .line 1
    const-string v0, "MEI/1NKTyqMreBHmw6PEqi1DC8rG\n"

    const-string v1, "Xyx+pKLAr80=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    const-string v2, "/hwoV7yTfSzzFjpbqYNqOdpR\n"

    const-string v3, "v39cPsr6CVU=\n"

    invoke-static {v2, v3, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    invoke-static {v0, v1, v3, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/lang/String;ZZLjava/util/List;)V

    .line 6
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᓒ;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᓒ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᒃ;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
