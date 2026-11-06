###### Class com.ironsource.Ba (com.ironsource.Ba)
.class public final Lcom/ironsource/Ba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/Ba;

.field public static final b:Ljava/lang/String; = "aid"

.field public static final c:Ljava/lang/String; = "ap"

.field public static final d:Ljava/lang/String; = "ts"

.field public static final e:Ljava/lang/String; = "rt"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/Ba;

    invoke-direct {v0}, Lcom/ironsource/Ba;-><init>()V

    sput-object v0, Lcom/ironsource/Ba;->a:Lcom/ironsource/Ba;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
