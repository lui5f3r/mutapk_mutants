.class Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;
.super Ljava/lang/Object;
.source "SuggestedEditsFunnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/analytics/SuggestedEditsFunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestedEditStatsCollection"
.end annotation


# instance fields
.field private addCaptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a-c"
    .end annotation
.end field

.field private addDescriptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a-d"
    .end annotation
.end field

.field private imageTagStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i-t"
    .end annotation
.end field

.field private translateCaptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t-c"
    .end annotation
.end field

.field private translateDescriptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t-d"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;-><init>(Lorg/wikipedia/analytics/SuggestedEditsFunnel$1;)V

    iput-object v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->addDescriptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    .line 187
    new-instance v0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    invoke-direct {v0, v1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;-><init>(Lorg/wikipedia/analytics/SuggestedEditsFunnel$1;)V

    iput-object v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->translateDescriptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    .line 188
    new-instance v0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    invoke-direct {v0, v1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;-><init>(Lorg/wikipedia/analytics/SuggestedEditsFunnel$1;)V

    iput-object v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->addCaptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    .line 189
    new-instance v0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    invoke-direct {v0, v1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;-><init>(Lorg/wikipedia/analytics/SuggestedEditsFunnel$1;)V

    iput-object v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->translateCaptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    .line 190
    new-instance v0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    invoke-direct {v0, v1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;-><init>(Lorg/wikipedia/analytics/SuggestedEditsFunnel$1;)V

    iput-object v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->imageTagStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/analytics/SuggestedEditsFunnel$1;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;)Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .locals 0

    .line 185
    iget-object p0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->addDescriptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;)Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .locals 0

    .line 185
    iget-object p0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->translateDescriptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;)Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .locals 0

    .line 185
    iget-object p0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->addCaptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;)Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .locals 0

    .line 185
    iget-object p0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->translateCaptionStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    return-object p0
.end method

.method static synthetic access$600(Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;)Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;
    .locals 0

    .line 185
    iget-object p0, p0, Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStatsCollection;->imageTagStats:Lorg/wikipedia/analytics/SuggestedEditsFunnel$SuggestedEditStats;

    return-object p0
.end method
