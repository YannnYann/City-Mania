###### Class com.ironsource.adqualitysdk.sdk.i.C0288 (com.ironsource.adqualitysdk.sdk.i.י)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/י;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "uUtzjTW5Gvq0V3eOLbk=\n"

    const-string v1, "2jkW7EHcSI8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "66RxC7rGnVj3hXc2seqY\n"

    const-string v1, "mdEfRNSL/DE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "naYpp3D84ZmEpw67TffNnA==\n"

    const-string v1, "7cla0z+SrPg=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "jveg2xegJEaH/bfgPYgpTpDMu902pCw=\n"

    const-string v1, "/pjTr1PFSCc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "jdCPo0Q5WeCRwIKYRQhi5o3AgIg=\n"

    const-string v1, "/6Xh7Cp6No4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "9I8uL4g5I3jqjjg4szgSQ+ySODqj\n"

    const-string v1, "hOBdW8dXYBc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "B/ooayFcyfEO8D9QC3rK/hnwOGsKS/H4BfA6ew==\n"

    const-string v1, "d5VbH2U5pZA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;-><init>()V

    return-void
.end method

.method public static ﾒ(Ljava/util/ArrayList;)J
    .registers 4

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-le v0, v2, :cond_1b

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾇ(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 13
    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_19
    int-to-long v0, p0

    return-wide v0

    .line 14
    :cond_1b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_2d

    .line 15
    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_19

    :cond_2d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Ljava/util/ArrayList;)Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
    .registers 6

    const/4 v0, 0x0

    .line 1
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;

    invoke-static {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾇ(Ljava/util/List;ILjava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2
    invoke-static {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;

    return-object p0

    .line 4
    :cond_10
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    invoke-static {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_24

    .line 7
    invoke-static {p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    goto :goto_29

    :cond_24
    const/4 v1, 0x1

    .line 9
    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    .line 11
    :goto_29
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ٴ;

    invoke-direct {v1, p2, v0, p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ٴ;-><init>(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)V

    return-object v1
.end method
