.class public final Lorg/wikipedia/feed/mostread/MostReadArticles;
.super Ljava/lang/Object;
.source "MostReadArticles.java"


# instance fields
.field private articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private date:Ljava/util/Date;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public articles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadArticles;->articles:Ljava/util/List;

    return-object v0
.end method

.method public date()Ljava/util/Date;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadArticles;->date:Ljava/util/Date;

    return-object v0
.end method
