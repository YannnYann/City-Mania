###### Class j$.time.temporal.l (j$.time.temporal.l)
.class public abstract Lj$/time/temporal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/time/temporal/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 147
    sget-object v0, Lj$/time/temporal/k;->JULIAN_DAY:Lj$/time/temporal/k;

    .line 188
    sget-object v0, Lj$/time/temporal/k;->MODIFIED_JULIAN_DAY:Lj$/time/temporal/k;

    sput-object v0, Lj$/time/temporal/l;->a:Lj$/time/temporal/s;

    .line 208
    sget-object v0, Lj$/time/temporal/k;->JULIAN_DAY:Lj$/time/temporal/k;

    return-void
.end method
