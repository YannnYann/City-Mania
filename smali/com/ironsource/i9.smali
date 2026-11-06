###### Class com.ironsource.C3654i9 (com.ironsource.i9)
.class public final Lcom/ironsource/i9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 18

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v15, "inm"

    const-string v16, "kotlinVersion"

    const-string v1, "lat"

    const-string v2, "tca"

    const-string v3, "tcs"

    const-string v4, "tcac"

    const-string v5, "conntr"

    const-string v6, "lnchr"

    const-string v7, "idfi"

    const-string v8, "mem"

    const-string v9, "availMem"

    const-string v10, "lowM"

    const-string v11, "mThreshold"

    const-string v12, "osArch"

    const-string v13, "adqv"

    const-string v14, "networks"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ironsource/i9;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/i9;->a:Ljava/util/List;

    return-object v0
.end method
