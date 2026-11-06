###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0206 (com.ironsource.adqualitysdk.sdk.i.ϝ)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ϝ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾒ:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "Wkg0/VZ6wipkTinNXQ==\n"

    const-string v1, "OyxFoj8Uq14=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "gTq1BZ35Nj6HMr4Ynf48JpE1\n"

    const-string v1, "9FvRdsKKU00=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "SvagoqKoT/dR9JGkvqRk2ED+oKu5qg==\n"

    const-string v1, "I5HOzdDNEIc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "NPxjOgDAkq8K+n4KCw==\n"

    const-string v2, "VZgSZWmu+9s=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SvTQE2KDgtFM/NsOYoSIyVr7\n"

    const-string v3, "P5W0YD3w56I=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ϝ;->ﾒ:Ljava/util/Set;

    return-void
.end method

.method public static ﾒ(Ljava/util/AbstractMap;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    return v0

    .line 4
    :cond_8
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    .line 5
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ϝ;->ﾒ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_28
    add-int/lit8 v2, v2, 0x5

    if-lt p1, v2, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v0
.end method
