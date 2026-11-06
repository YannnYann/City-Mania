###### Class ads_mobile_sdk.vv0 (ads_mobile_sdk.vv0)
.class public final Lads_mobile_sdk/vv0;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/vv0;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x8

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7


# instance fields
.field private bitField0_:I

.field private cachedUserAgent_:Ljava/lang/String;

.field private consentState_:Lads_mobile_sdk/k30;

.field private flagJson_:Ljava/lang/String;

.field private hasSdkInitializedPreviously_:Z

.field private sessionsSinceUpdate_:I

.field private storedSdkCoreData_:Lads_mobile_sdk/ju1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/ju1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/vv0;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/vv0;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetsessionsSinceUpdate_(Lads_mobile_sdk/vv0;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/vv0;->sessionsSinceUpdate_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetstoredSdkCoreData_(Lads_mobile_sdk/vv0;)Lads_mobile_sdk/ju1;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/vv0;->storedSdkCoreData_:Lads_mobile_sdk/ju1;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/vv0;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/vv0;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputhasSdkInitializedPreviously_(Lads_mobile_sdk/vv0;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lads_mobile_sdk/vv0;->hasSdkInitializedPreviously_:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsessionsSinceUpdate_(Lads_mobile_sdk/vv0;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/vv0;->sessionsSinceUpdate_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstoredSdkCoreData_(Lads_mobile_sdk/vv0;Lads_mobile_sdk/ju1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lads_mobile_sdk/vv0;->storedSdkCoreData_:Lads_mobile_sdk/ju1;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/vv0;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/vv0;->DEFAULT_INSTANCE:Lads_mobile_sdk/vv0;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/vv0;

    invoke-direct {v0}, Lads_mobile_sdk/vv0;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/vv0;->DEFAULT_INSTANCE:Lads_mobile_sdk/vv0;

    .line 5
    const-class v1, Lads_mobile_sdk/vv0;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    .line 258
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/vv0;->storedSdkCoreData_:Lads_mobile_sdk/ju1;

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lads_mobile_sdk/vv0;->flagJson_:Ljava/lang/String;

    .line 260
    iput-object v0, p0, Lads_mobile_sdk/vv0;->cachedUserAgent_:Ljava/lang/String;

    return-void
.end method

.method public static C()Lads_mobile_sdk/uv0;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/vv0;->DEFAULT_INSTANCE:Lads_mobile_sdk/vv0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/uv0;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lads_mobile_sdk/vv0;
    .registers 2

    .line 5
    sget-object v0, Lads_mobile_sdk/vv0;->DEFAULT_INSTANCE:Lads_mobile_sdk/vv0;

    invoke-static {v0, p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Ljava/io/InputStream;)Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/vv0;

    return-object p0
.end method

.method public static x()Lads_mobile_sdk/vv0;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/vv0;->DEFAULT_INSTANCE:Lads_mobile_sdk/vv0;

    return-object v0
.end method


# virtual methods
.method public final A()I
    .registers 2

    .line 152
    iget v0, p0, Lads_mobile_sdk/vv0;->sessionsSinceUpdate_:I

    return v0
.end method

.method public final B()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/vv0;->storedSdkCoreData_:Lads_mobile_sdk/ju1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 6
    sget-object p2, Lads_mobile_sdk/tv0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_46

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_19
    const-class p1, Lads_mobile_sdk/vv0;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 39
    :cond_20
    sget-object p1, Lads_mobile_sdk/vv0;->DEFAULT_INSTANCE:Lads_mobile_sdk/vv0;

    return-object p1

    .line 40
    :cond_23
    sget-object p1, Lads_mobile_sdk/u24$a;->k:Lads_mobile_sdk/u24$a;

    .line 46
    const-string p2, ""

    invoke-static {p1, p2, p1, p2}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;

    move-result-object v4

    const-string v6, "cachedUserAgent_"

    const-string v7, "hasSdkInitializedPreviously_"

    const-string v0, "bitField0_"

    const-string v1, "flagJson_"

    const-string v2, "sessionsSinceUpdate_"

    const-string v3, "storedSdkCoreData_"

    const-string v5, "consentState_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 58
    sget-object p2, Lads_mobile_sdk/vv0;->DEFAULT_INSTANCE:Lads_mobile_sdk/vv0;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0008\u0006\u0001\u0000\u0000\u0001\u1208\u0000\u0002\u1004\u0001\u00052\u0006\u1009\u0003\u0007\u1208\u0004\u0008\u1007\u0002"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 59
    :cond_46
    new-instance p1, Lads_mobile_sdk/uv0;

    invoke-direct {p1}, Lads_mobile_sdk/uv0;-><init>()V

    return-object p1

    .line 60
    :cond_4c
    new-instance p1, Lads_mobile_sdk/vv0;

    invoke-direct {p1}, Lads_mobile_sdk/vv0;-><init>()V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/k30;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/vv0;->consentState_:Lads_mobile_sdk/k30;

    .line 4
    iget p1, p0, Lads_mobile_sdk/vv0;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lads_mobile_sdk/vv0;->bitField0_:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/vv0;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lads_mobile_sdk/vv0;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/vv0;->cachedUserAgent_:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lads_mobile_sdk/vv0;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lads_mobile_sdk/vv0;->bitField0_:I

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/vv0;->flagJson_:Ljava/lang/String;

    return-void
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    .line 458
    iget-object v0, p0, Lads_mobile_sdk/vv0;->cachedUserAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Lads_mobile_sdk/k30;
    .registers 2

    .line 384
    iget-object v0, p0, Lads_mobile_sdk/vv0;->consentState_:Lads_mobile_sdk/k30;

    if-nez v0, :cond_8

    invoke-static {}, Lads_mobile_sdk/k30;->z()Lads_mobile_sdk/k30;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lads_mobile_sdk/vv0;->flagJson_:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Lads_mobile_sdk/vv0;->hasSdkInitializedPreviously_:Z

    return v0
.end method
