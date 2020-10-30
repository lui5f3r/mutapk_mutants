.class Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
.super Ljava/lang/Object;
.source "SuggestedEditsFunnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/analytics/SuggestedEditsFunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestedEditStats"
.end annotation


# instance fields
.field private cancels:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cxl"
    .end annotation
.end field

.field private clicks:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clk"
    .end annotation
.end field

.field private failures:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fl"
    .end annotation
.end field

.field private impressions:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imp"
    .end annotation
.end field

.field private successes:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suc"
    .end annotation
.end field

.field private suggestionsClicked:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sg"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/analytics/SuggestedEditsFunnel$1;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;-><init>()V

    return-void
.end method

.method static synthetic access$1008(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;)I
    .locals 2

    .line 194
    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->successes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->successes:I

    return v0
.end method

.method static synthetic access$1108(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;)I
    .locals 2

    .line 194
    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->failures:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->failures:I

    return v0
.end method

.method static synthetic access$208(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;)I
    .locals 2

    .line 194
    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->impressions:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->impressions:I

    return v0
.end method

.method static synthetic access$708(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;)I
    .locals 2

    .line 194
    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->clicks:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->clicks:I

    return v0
.end method

.method static synthetic access$808(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;)I
    .locals 2

    .line 194
    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->suggestionsClicked:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->suggestionsClicked:I

    return v0
.end method

.method static synthetic access$908(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;)I
    .locals 2

    .line 194
    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->cancels:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->cancels:I

    return v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 203
    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->impressions:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->clicks:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->suggestionsClicked:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->cancels:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->successes:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;->failures:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
