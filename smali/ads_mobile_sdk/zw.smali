###### Class ads_mobile_sdk.zw (ads_mobile_sdk.zw)
.class public final Lads_mobile_sdk/zw;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/zw;

.field public static final c:I = 0x5

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x8

.field public static final h:I = 0x4

.field public static final i:I = 0xa

.field public static final j:I = 0x9


# instance fields
.field private appName_:Ljava/lang/String;

.field private bitField0_:I

.field private blobSet_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/rw;",
            ">;"
        }
    .end annotation
.end field

.field private blob_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/jw;",
            ">;"
        }
    .end annotation
.end field

.field private compatInfo_:Lads_mobile_sdk/px3;

.field private debugOnlyVersion_:Ljava/lang/String;

.field private pluginSets_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Lads_mobile_sdk/hx;",
            ">;"
        }
    .end annotation
.end field

.field private velourSdkInt_:I

.field private version_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/zw;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/zw;->DEFAULT_INSTANCE:Lads_mobile_sdk/zw;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/zw;

    invoke-direct {v0}, Lads_mobile_sdk/zw;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/zw;->DEFAULT_INSTANCE:Lads_mobile_sdk/zw;

    .line 5
    const-class v1, Lads_mobile_sdk/zw;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 6189
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 6190
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/zw;->appName_:Ljava/lang/String;

    .line 6191
    iput-object v0, p0, Lads_mobile_sdk/zw;->version_:Ljava/lang/String;

    .line 6192
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/zw;->blob_:Lads_mobile_sdk/yh1$f;

    .line 6193
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/zw;->blobSet_:Lads_mobile_sdk/yh1$f;

    .line 6194
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/zw;->pluginSets_:Lads_mobile_sdk/yh1$f;

    const/4 v1, -0x1

    .line 6195
    iput v1, p0, Lads_mobile_sdk/zw;->velourSdkInt_:I

    .line 6196
    iput-object v0, p0, Lads_mobile_sdk/zw;->debugOnlyVersion_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    .line 1
    sget-object p2, Lads_mobile_sdk/fw;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4e

    const/4 p2, 0x2

    if-eq p1, p2, :cond_48

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_19
    const-class p1, Lads_mobile_sdk/zw;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 33
    :cond_20
    sget-object p1, Lads_mobile_sdk/zw;->DEFAULT_INSTANCE:Lads_mobile_sdk/zw;

    return-object p1

    .line 34
    :cond_23
    const-string v10, "debugOnlyVersion_"

    const-string v11, "compatInfo_"

    const-string v0, "bitField0_"

    const-string v1, "version_"

    const-string v2, "blob_"

    const-class v3, Lads_mobile_sdk/jw;

    const-string v4, "blobSet_"

    const-class v5, Lads_mobile_sdk/rw;

    const-string v6, "velourSdkInt_"

    const-string v7, "appName_"

    const-string v8, "pluginSets_"

    const-class v9, Lads_mobile_sdk/hx;

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    .line 51
    sget-object p2, Lads_mobile_sdk/zw;->DEFAULT_INSTANCE:Lads_mobile_sdk/zw;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\n\u0008\u0000\u0003\u0000\u0001\u1008\u0001\u0002\u001b\u0003\u001b\u0004\u1004\u0002\u0005\u1008\u0000\u0008\u001b\t\u1008\u0004\n\u1009\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :cond_48
    new-instance p1, Lads_mobile_sdk/yw;

    invoke-direct {p1}, Lads_mobile_sdk/yw;-><init>()V

    return-object p1

    .line 53
    :cond_4e
    new-instance p1, Lads_mobile_sdk/zw;

    invoke-direct {p1}, Lads_mobile_sdk/zw;-><init>()V

    return-object p1
.end method
