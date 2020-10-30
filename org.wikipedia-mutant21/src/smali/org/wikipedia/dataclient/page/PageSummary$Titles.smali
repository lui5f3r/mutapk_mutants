.class Lorg/wikipedia/dataclient/page/PageSummary$Titles;
.super Ljava/lang/Object;
.source "PageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/page/PageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Titles"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private display:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/dataclient/page/PageSummary$Titles;)Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->canonical:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/dataclient/page/PageSummary$Titles;)Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->display:Ljava/lang/String;

    return-object p0
.end method
