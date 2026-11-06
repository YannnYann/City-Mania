###### Class ads_mobile_sdk.do0 (ads_mobile_sdk.do0)
.class public final Lads_mobile_sdk/do0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/dw2;
.implements Lads_mobile_sdk/ks1;


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final synthetic d:Z = true


# instance fields
.field public volatile a:Lads_mobile_sdk/dw2;

.field public volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lads_mobile_sdk/do0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/dw2;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lads_mobile_sdk/do0;->c:Ljava/lang/Object;

    iput-object v0, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    .line 44
    sget-boolean v0, Lads_mobile_sdk/do0;->d:Z

    if-nez v0, :cond_14

    if-eqz p1, :cond_e

    goto :goto_14

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_14
    :goto_14
    iput-object p1, p0, Lads_mobile_sdk/do0;->a:Lads_mobile_sdk/dw2;

    return-void
.end method

.method public static a(Lads_mobile_sdk/dw2;)Lads_mobile_sdk/ks1;
    .registers 2

    .line 112
    instance-of v0, p0, Lads_mobile_sdk/ks1;

    if-eqz v0, :cond_7

    .line 114
    check-cast p0, Lads_mobile_sdk/ks1;

    return-object p0

    .line 122
    :cond_7
    new-instance v0, Lads_mobile_sdk/do0;

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-direct {v0, p0}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    .line 48
    iget-object v0, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    .line 49
    sget-object v1, Lads_mobile_sdk/do0;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_44

    .line 50
    monitor-enter p0

    .line 51
    :try_start_7
    iget-object v0, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_40

    .line 53
    iget-object v0, p0, Lads_mobile_sdk/do0;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    .line 54
    iget-object v2, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_3b

    if-ne v2, v0, :cond_18

    goto :goto_3b

    .line 55
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scoped provider was invoked recursively returning different results: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_39
    move-exception v0

    goto :goto_42

    .line 56
    :cond_3b
    :goto_3b
    iput-object v0, p0, Lads_mobile_sdk/do0;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lads_mobile_sdk/do0;->a:Lads_mobile_sdk/dw2;
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_39

    .line 60
    :cond_40
    monitor-exit p0

    return-object v0

    .line 61
    :goto_42
    monitor-exit p0

    throw v0

    :cond_44
    return-object v0
.end method
