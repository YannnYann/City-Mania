###### Class ads_mobile_sdk.er0 (ads_mobile_sdk.er0)
.class public Lads_mobile_sdk/er0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/er0$a;,
        Lads_mobile_sdk/er0$b;
    }
.end annotation


# static fields
.field private static volatile c:Lads_mobile_sdk/er0$a;

.field private static volatile d:Lads_mobile_sdk/er0;

.field private static volatile e:Lads_mobile_sdk/er0;

.field static final f:Lads_mobile_sdk/er0;


# instance fields
.field private a:B

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lads_mobile_sdk/er0$b;",
            "Lads_mobile_sdk/vz0$c<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/er0$a;->a:Lads_mobile_sdk/er0$a;

    sput-object v0, Lads_mobile_sdk/er0;->c:Lads_mobile_sdk/er0$a;

    .line 188
    new-instance v0, Lads_mobile_sdk/er0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lads_mobile_sdk/er0;-><init>(Z)V

    sput-object v0, Lads_mobile_sdk/er0;->f:Lads_mobile_sdk/er0;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 264
    iput-byte p1, p0, Lads_mobile_sdk/er0;->a:B

    .line 460
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lads_mobile_sdk/er0;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lads_mobile_sdk/er0;
    .registers 2

    .line 211
    sget-boolean v0, Lads_mobile_sdk/gi;->b:Z

    if-eqz v0, :cond_7

    .line 212
    sget-object v0, Lads_mobile_sdk/er0;->f:Lads_mobile_sdk/er0;

    return-object v0

    .line 214
    :cond_7
    sget-object v0, Lads_mobile_sdk/er0;->d:Lads_mobile_sdk/er0;

    if-nez v0, :cond_1f

    .line 216
    const-class v1, Lads_mobile_sdk/er0;

    monitor-enter v1

    .line 217
    :try_start_e
    sget-object v0, Lads_mobile_sdk/er0;->d:Lads_mobile_sdk/er0;

    if-nez v0, :cond_1b

    .line 219
    invoke-static {}, Lads_mobile_sdk/cr0;->a()Lads_mobile_sdk/er0;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/er0;->d:Lads_mobile_sdk/er0;

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_1d

    .line 221
    :cond_1b
    :goto_1b
    monitor-exit v1

    return-object v0

    :goto_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_19

    throw v0

    :cond_1f
    return-object v0
.end method

.method public static b()Lads_mobile_sdk/er0;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/er0;->e:Lads_mobile_sdk/er0;

    if-eqz v0, :cond_5

    return-object v0

    .line 6
    :cond_5
    const-class v0, Lads_mobile_sdk/er0;

    monitor-enter v0

    .line 7
    :try_start_8
    sget-object v1, Lads_mobile_sdk/er0;->e:Lads_mobile_sdk/er0;

    if-eqz v1, :cond_10

    .line 9
    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    goto :goto_21

    .line 13
    :cond_10
    sget-boolean v1, Lads_mobile_sdk/gi;->b:Z

    if-eqz v1, :cond_19

    .line 14
    invoke-static {}, Lads_mobile_sdk/er0;->d()Lads_mobile_sdk/er0;

    move-result-object v1

    goto :goto_1d

    .line 15
    :cond_19
    invoke-static {}, Lads_mobile_sdk/cr0;->b()Lads_mobile_sdk/er0;

    move-result-object v1

    .line 16
    :goto_1d
    sput-object v1, Lads_mobile_sdk/er0;->e:Lads_mobile_sdk/er0;

    .line 17
    monitor-exit v0

    return-object v1

    .line 18
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_e

    throw v1
.end method

.method public static d()Lads_mobile_sdk/er0;
    .registers 1

    .line 1
    const-class v0, Lads_mobile_sdk/er0;

    invoke-static {v0}, Lads_mobile_sdk/tz0;->a(Ljava/lang/Class;)Lads_mobile_sdk/er0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lads_mobile_sdk/tw1;I)Lads_mobile_sdk/vz0$c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lads_mobile_sdk/tw1;",
            ">(TContainingType;I)",
            "Lads_mobile_sdk/vz0$c<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lads_mobile_sdk/er0;->b:Ljava/util/Map;

    new-instance v1, Lads_mobile_sdk/er0$b;

    invoke-direct {v1, p1, p2}, Lads_mobile_sdk/er0$b;-><init>(Ljava/lang/Object;I)V

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .registers 5

    .line 79
    iget-byte v0, p0, Lads_mobile_sdk/er0;->a:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    .line 84
    :cond_a
    sget-object v0, Lads_mobile_sdk/er0;->c:Lads_mobile_sdk/er0$a;

    sget-object v3, Lads_mobile_sdk/er0$a;->b:Lads_mobile_sdk/er0$a;

    if-ne v0, v3, :cond_11

    return v1

    :cond_11
    return v2
.end method

###### Class ads_mobile_sdk.er0.a (ads_mobile_sdk.er0$a)
.class final enum Lads_mobile_sdk/er0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/er0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lads_mobile_sdk/er0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lads_mobile_sdk/er0$a;

.field public static final enum b:Lads_mobile_sdk/er0$a;

.field private static final synthetic c:[Lads_mobile_sdk/er0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lads_mobile_sdk/er0$a;

    const-string v1, "EAGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/er0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/er0$a;->a:Lads_mobile_sdk/er0$a;

    .line 4
    new-instance v0, Lads_mobile_sdk/er0$a;

    const-string v1, "LAZY_VERIFY_ON_ACCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/er0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/er0$a;->b:Lads_mobile_sdk/er0$a;

    .line 5
    invoke-static {}, Lads_mobile_sdk/er0$a;->d()[Lads_mobile_sdk/er0$a;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/er0$a;->c:[Lads_mobile_sdk/er0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic d()[Lads_mobile_sdk/er0$a;
    .registers 2

    .line 55
    sget-object v0, Lads_mobile_sdk/er0$a;->a:Lads_mobile_sdk/er0$a;

    sget-object v1, Lads_mobile_sdk/er0$a;->b:Lads_mobile_sdk/er0$a;

    filled-new-array {v0, v1}, [Lads_mobile_sdk/er0$a;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/er0$a;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/er0$a;->c:[Lads_mobile_sdk/er0$a;

    invoke-virtual {v0}, [Lads_mobile_sdk/er0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/er0$a;

    return-object v0
.end method

###### Class ads_mobile_sdk.er0.b (ads_mobile_sdk.er0$b)
.class final Lads_mobile_sdk/er0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/er0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lads_mobile_sdk/er0$b;->a:Ljava/lang/Object;

    .line 274
    iput p2, p0, Lads_mobile_sdk/er0$b;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 284
    instance-of v0, p1, Lads_mobile_sdk/er0$b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 287
    :cond_6
    check-cast p1, Lads_mobile_sdk/er0$b;

    .line 288
    iget-object v0, p0, Lads_mobile_sdk/er0$b;->a:Ljava/lang/Object;

    iget-object v2, p1, Lads_mobile_sdk/er0$b;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_16

    iget v0, p0, Lads_mobile_sdk/er0$b;->b:I

    iget p1, p1, Lads_mobile_sdk/er0$b;->b:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 279
    iget-object v0, p0, Lads_mobile_sdk/er0$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lads_mobile_sdk/er0$b;->b:I

    add-int/2addr v0, v1

    return v0
.end method
