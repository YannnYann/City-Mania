###### Class ads_mobile_sdk.fm3 (ads_mobile_sdk.fm3)
.class public abstract Lads_mobile_sdk/fm3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lads_mobile_sdk/ts3;Ljava/lang/Throwable;)Lads_mobile_sdk/iv2;
    .registers 8

    .line 56
    sget-object v0, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    .line 57
    iget-object p0, p0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 58
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/st1;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/16 v1, 0x4f53

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lads_mobile_sdk/iv2;->x()Lads_mobile_sdk/iv2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;Lads_mobile_sdk/yl3;Lads_mobile_sdk/ts3;)Lads_mobile_sdk/wr0;
    .registers 6

    .line 61
    invoke-static {}, Lads_mobile_sdk/iv2;->x()Lads_mobile_sdk/iv2;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/ts3;)V

    .line 62
    check-cast p1, Lads_mobile_sdk/xr0;

    .line 63
    new-instance p2, Lads_mobile_sdk/wr0;

    .line 64
    iget-object p1, p1, Lads_mobile_sdk/xr0;->a:Ljava/util/concurrent/ExecutorService;

    .line 65
    new-instance v2, Lads_mobile_sdk/ur0;

    invoke-direct {v2, v0}, Lads_mobile_sdk/ur0;-><init>(Lads_mobile_sdk/iv2;)V

    invoke-direct {p2, p0, p1, v2, v1}, Lads_mobile_sdk/wr0;-><init>(Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/vr0;Lcom/google/common/base/Function;)V

    return-object p2
.end method

.method public static b(Ljava/io/File;Lads_mobile_sdk/yl3;Lads_mobile_sdk/ts3;)Lads_mobile_sdk/wr0;
    .registers 6

    const/4 v0, 0x0

    .line 84
    new-array v0, v0, [B

    new-instance v1, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/ts3;)V

    check-cast p1, Lads_mobile_sdk/xr0;

    .line 85
    new-instance p2, Lads_mobile_sdk/wr0;

    .line 86
    iget-object p1, p1, Lads_mobile_sdk/xr0;->a:Ljava/util/concurrent/ExecutorService;

    .line 87
    new-instance v2, Lads_mobile_sdk/sr0;

    invoke-direct {v2, v0}, Lads_mobile_sdk/sr0;-><init>([B)V

    invoke-direct {p2, p0, p1, v2, v1}, Lads_mobile_sdk/wr0;-><init>(Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/vr0;Lcom/google/common/base/Function;)V

    return-object p2
.end method

.method public static b(Lads_mobile_sdk/ts3;Ljava/lang/Throwable;)[B
    .registers 8

    .line 79
    sget-object v0, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    .line 80
    iget-object p0, p0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 81
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/st1;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/16 v1, 0x4f55

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 82
    new-array p0, p0, [B

    return-object p0
.end method

.method public static c(Ljava/io/File;Lads_mobile_sdk/yl3;Lads_mobile_sdk/ts3;)Lads_mobile_sdk/wr0;
    .registers 6

    const/4 v0, 0x0

    .line 107
    new-array v0, v0, [B

    new-instance v1, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/ts3;)V

    check-cast p1, Lads_mobile_sdk/xr0;

    .line 108
    new-instance p2, Lads_mobile_sdk/wr0;

    .line 109
    iget-object p1, p1, Lads_mobile_sdk/xr0;->a:Ljava/util/concurrent/ExecutorService;

    .line 110
    new-instance v2, Lads_mobile_sdk/sr0;

    invoke-direct {v2, v0}, Lads_mobile_sdk/sr0;-><init>([B)V

    invoke-direct {p2, p0, p1, v2, v1}, Lads_mobile_sdk/wr0;-><init>(Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/vr0;Lcom/google/common/base/Function;)V

    return-object p2
.end method

.method public static c(Lads_mobile_sdk/ts3;Ljava/lang/Throwable;)[B
    .registers 8

    .line 102
    sget-object v0, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    .line 103
    iget-object p0, p0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 104
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/st1;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/16 v1, 0x4f54

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 105
    new-array p0, p0, [B

    return-object p0
.end method

###### Class ads_mobile_sdk.fm3$$ExternalSyntheticLambda0 (ads_mobile_sdk.fm3$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/fm3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ts3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ts3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ts3;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lads_mobile_sdk/fm3;->c(Lads_mobile_sdk/ts3;Ljava/lang/Throwable;)[B

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.fm3$$ExternalSyntheticLambda1 (ads_mobile_sdk.fm3$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/fm3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ts3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ts3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/ts3;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lads_mobile_sdk/fm3;->a(Lads_mobile_sdk/ts3;Ljava/lang/Throwable;)Lads_mobile_sdk/iv2;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.fm3$$ExternalSyntheticLambda2 (ads_mobile_sdk.fm3$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/fm3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ts3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ts3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/fm3$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/ts3;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lads_mobile_sdk/fm3;->b(Lads_mobile_sdk/ts3;Ljava/lang/Throwable;)[B

    move-result-object p1

    return-object p1
.end method
