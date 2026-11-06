###### Class com.ironsource.S5 (com.ironsource.S5)
.class public Lcom/ironsource/S5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:I = -0x1


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:I

.field private c:Lcom/ironsource/o;

.field private d:Lcom/ironsource/Ab;


# direct methods
.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/S5;)Lcom/ironsource/o;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/S5;->c:Lcom/ironsource/o;

    return-object p0
.end method

.method public constructor <init>(ILcom/ironsource/o;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ironsource/S5;->c:Lcom/ironsource/o;

    .line 3
    iput p1, p0, Lcom/ironsource/S5;->b:I

    .line 5
    new-instance p1, Lcom/ironsource/S5$a;

    invoke-direct {p1, p0}, Lcom/ironsource/S5$a;-><init>(Lcom/ironsource/S5;)V

    iput-object p1, p0, Lcom/ironsource/S5;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 29
    invoke-virtual {p0}, Lcom/ironsource/S5;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ironsource/S5;->d:Lcom/ironsource/Ab;

    if-eqz v0, :cond_19

    .line 30
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "canceling expiration timer"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/ironsource/S5;->d:Lcom/ironsource/Ab;

    invoke-virtual {v0}, Lcom/ironsource/Ab;->e()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/ironsource/S5;->d:Lcom/ironsource/Ab;

    :cond_19
    return-void
.end method

.method public a(J)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/S5;->b()Z

    move-result v0

    if-eqz v0, :cond_81

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/ironsource/S5;->b:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_75

    .line 7
    invoke-virtual {p0}, Lcom/ironsource/S5;->a()V

    .line 9
    new-instance p1, Lcom/ironsource/Ab;

    iget-object p2, p0, Lcom/ironsource/S5;->a:Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-direct {p1, v2, v3, p2, v0}, Lcom/ironsource/Ab;-><init>(JLjava/lang/Runnable;Z)V

    iput-object p1, p0, Lcom/ironsource/S5;->d:Lcom/ironsource/Ab;

    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    long-to-int p2, v2

    const/16 v0, 0xe

    .line 12
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->add(II)V

    .line 13
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaded ads will expire on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    long-to-double v1, v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2f"

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " minutes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_75
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "no delay - onAdExpired called"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/ironsource/S5;->c:Lcom/ironsource/o;

    invoke-interface {p1}, Lcom/ironsource/o;->a()V

    :cond_81
    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/S5;->b:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

###### Class com.ironsource.S5.a (com.ironsource.S5$a)
.class Lcom/ironsource/S5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/S5;-><init>(ILcom/ironsource/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/S5;


# direct methods
.method public constructor <init>(Lcom/ironsource/S5;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/S5$a;->a:Lcom/ironsource/S5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "loaded ads are expired"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/S5$a;->a:Lcom/ironsource/S5;

    invoke-static {v0}, Lcom/ironsource/S5;->-$$Nest$fgetc(Lcom/ironsource/S5;)Lcom/ironsource/o;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    invoke-interface {v0}, Lcom/ironsource/o;->a()V

    :cond_12
    return-void
.end method
