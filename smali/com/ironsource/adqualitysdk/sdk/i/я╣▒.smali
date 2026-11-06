###### Class com.ironsource.adqualitysdk.sdk.i.C0914 (com.ironsource.adqualitysdk.sdk.i.ﹱ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ƭ;
.source "SourceFile"


# instance fields
.field public ﮐ:I

.field public ﱟ:Ljava/util/List;

.field public final ﱡ:Ljava/util/ArrayList;

.field public ﺙ:Z

.field public ﻏ:Ljava/lang/Class;

.field public ﻐ:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "ab61gwkvDNxCsq+CEiIn1w==\n"

    const-string v1, "JNvB62ZLSLk=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﱡ:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﾒ()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ｋ:I

    .line 2
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﻛ:I

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾒ:Z

    .line 4
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾇ:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﻏ:Ljava/lang/Class;

    .line 6
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﻐ:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﺙ:Z

    .line 8
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﱡ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﱟ:Ljava/util/List;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﮐ:I

    return-void
.end method
