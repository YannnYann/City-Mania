###### Class com.ironsource.C3732mg (com.ironsource.mg)
.class public final Lcom/ironsource/mg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mg$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/mg$a;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 88

    new-instance v0, Lcom/ironsource/mg$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/mg$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/mg;->a:Lcom/ironsource/mg$a;

    .line 1
    const-string v86, "networks"

    const-string v87, "inm"

    const-string v2, "tkv"

    const-string v3, "apm"

    const-string v4, "apor"

    const-string v5, "apv"

    const-string v6, "bat"

    const-string v7, "bid"

    const-string v8, "chrgt"

    const-string v9, "cncdn"

    const-string v10, "connt"

    const-string v11, "conntr"

    const-string v12, "apilvl"

    const-string v13, "scrnh"

    const-string v14, "dfs"

    const-string v15, "lang"

    const-string v16, "lcntry"

    const-string v17, "make"

    const-string v18, "model"

    const-string v19, "os"

    const-string v20, "osv"

    const-string v21, "osvf"

    const-string v22, "mem"

    const-string v23, "availMem"

    const-string v24, "lowM"

    const-string v25, "mThreshold"

    const-string v26, "osArch"

    const-string v27, "sscl"

    const-string v28, "vol"

    const-string v29, "scrnw"

    const-string v30, "tai"

    const-string v31, "imm"

    const-string v32, "instlr"

    const-string v33, "lnchr"

    const-string v34, "chrg"

    const-string v35, "lat"

    const-string v36, "tsu"

    const-string v37, "md"

    const-string v38, "medv"

    const-string v39, "ompv"

    const-string v40, "omv"

    const-string v41, "owp"

    const-string v42, "plugin"

    const-string v43, "plv"

    const-string v44, "plfv"

    const-string v45, "ptype"

    const-string v46, "rt"

    const-string v47, "sdcrd"

    const-string v48, "sdia"

    const-string v49, "sdra"

    const-string v50, "sdkv"

    const-string v51, "simop"

    const-string v52, "ua"

    const-string v53, "usid"

    const-string v54, "gaid"

    const-string v55, "apky"

    const-string v56, "auid"

    const-string v57, "idfi"

    const-string v58, "cnst"

    const-string v59, "cnstisn"

    const-string v60, "icc"

    const-string v61, "ltime"

    const-string v62, "lpm"

    const-string v63, "carrier"

    const-string v64, "mcc"

    const-string v65, "mnc"

    const-string v66, "sid"

    const-string v67, "tkgp"

    const-string v68, "tz"

    const-string v69, "tzoff"

    const-string v70, "vpn"

    const-string v71, "debug"

    const-string v72, "ctgp"

    const-string v73, "sdba"

    const-string v74, "tca"

    const-string v75, "tcs"

    const-string v76, "asid"

    const-string v77, "itp"

    const-string v78, "eof"

    const-string v79, "do"

    const-string v80, "mt"

    const-string v81, "cte"

    const-string v82, "cmpid"

    const-string v83, "shf"

    const-string v84, "shcl"

    const-string v85, "ismao"

    filled-new-array/range {v2 .. v87}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/ironsource/mg;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/mg;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public static final b()[Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/ironsource/mg;->a:Lcom/ironsource/mg$a;

    invoke-virtual {v0}, Lcom/ironsource/mg$a;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.C3732mg.a (com.ironsource.mg$a)
.class public final Lcom/ironsource/mg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mg$a;-><init>()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/ironsource/mg;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
