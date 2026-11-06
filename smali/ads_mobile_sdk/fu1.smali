###### Class ads_mobile_sdk.fu1 (ads_mobile_sdk.fu1)
.class final Lads_mobile_sdk/fu1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lads_mobile_sdk/sw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-static {}, Lads_mobile_sdk/fu1;->a()Lads_mobile_sdk/sw1;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/fu1;-><init>(Lads_mobile_sdk/sw1;)V

    return-void
.end method

.method private constructor <init>(Lads_mobile_sdk/sw1;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lads_mobile_sdk/yh1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/sw1;

    iput-object p1, p0, Lads_mobile_sdk/fu1;->a:Lads_mobile_sdk/sw1;

    return-void
.end method

.method private static a(Ljava/lang/Class;Lads_mobile_sdk/rw1;)Lads_mobile_sdk/la3;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lads_mobile_sdk/rw1;",
            ")",
            "Lads_mobile_sdk/la3<",
            "TT;>;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lads_mobile_sdk/gb2;->a()Lads_mobile_sdk/eb2;

    move-result-object v2

    .line 117
    invoke-static {}, Lads_mobile_sdk/ps1;->a()Lads_mobile_sdk/ns1;

    move-result-object v3

    .line 118
    invoke-static {}, Lads_mobile_sdk/ma3;->a()Lads_mobile_sdk/yv3;

    move-result-object v4

    .line 119
    invoke-static {p1}, Lads_mobile_sdk/fu1;->a(Lads_mobile_sdk/rw1;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lads_mobile_sdk/hr0;->a()Lads_mobile_sdk/fr0;

    move-result-object v0

    :goto_16
    move-object v5, v0

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    .line 120
    :goto_1a
    invoke-static {}, Lads_mobile_sdk/mu1;->a()Lads_mobile_sdk/ku1;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 121
    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/ww1;->a(Ljava/lang/Class;Lads_mobile_sdk/rw1;Lads_mobile_sdk/eb2;Lads_mobile_sdk/ns1;Lads_mobile_sdk/yv3;Lads_mobile_sdk/fr0;Lads_mobile_sdk/ku1;)Lads_mobile_sdk/ww1;

    move-result-object p0

    return-object p0
.end method

.method private static a()Lads_mobile_sdk/sw1;
    .registers 1

    .line 123
    invoke-static {}, Lads_mobile_sdk/uz0;->a()Lads_mobile_sdk/uz0;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lads_mobile_sdk/rw1;)Z
    .registers 2

    .line 122
    sget-object v0, Lads_mobile_sdk/fu1$a;->a:[I

    invoke-interface {p0}, Lads_mobile_sdk/rw1;->a()Lads_mobile_sdk/zv2;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lads_mobile_sdk/gi;->b:Z

    if-nez v0, :cond_f

    const-class v0, Lads_mobile_sdk/vz0;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lads_mobile_sdk/la3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lads_mobile_sdk/la3<",
            "TT;>;"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lads_mobile_sdk/fu1;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/fu1;->a:Lads_mobile_sdk/sw1;

    invoke-interface {v0, p1}, Lads_mobile_sdk/sw1;->a(Ljava/lang/Class;)Lads_mobile_sdk/rw1;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lads_mobile_sdk/rw1;->c()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 46
    invoke-static {}, Lads_mobile_sdk/ma3;->a()Lads_mobile_sdk/yv3;

    move-result-object p1

    .line 47
    invoke-static {}, Lads_mobile_sdk/hr0;->a()Lads_mobile_sdk/fr0;

    move-result-object v1

    .line 48
    invoke-interface {v0}, Lads_mobile_sdk/rw1;->b()Lads_mobile_sdk/tw1;

    move-result-object v0

    .line 49
    invoke-static {p1, v1, v0}, Lads_mobile_sdk/xw1;->a(Lads_mobile_sdk/yv3;Lads_mobile_sdk/fr0;Lads_mobile_sdk/tw1;)Lads_mobile_sdk/xw1;

    move-result-object p1

    return-object p1

    .line 55
    :cond_23
    invoke-static {p1, v0}, Lads_mobile_sdk/fu1;->a(Ljava/lang/Class;Lads_mobile_sdk/rw1;)Lads_mobile_sdk/la3;

    move-result-object p1

    return-object p1

    .line 56
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full runtime messages are not supported by this schema factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class ads_mobile_sdk.fu1.a (ads_mobile_sdk.fu1$a)
.class public abstract synthetic Lads_mobile_sdk/fu1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/fu1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lads_mobile_sdk/zv2;->values()[Lads_mobile_sdk/zv2;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lads_mobile_sdk/fu1$a;->a:[I

    :try_start_9
    sget-object v1, Lads_mobile_sdk/zv2;->b:Lads_mobile_sdk/zv2;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
