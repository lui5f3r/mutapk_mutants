.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$Reu9mfPYqv8iWjDi9ikp8ypqziY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field public final synthetic f$1:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$Reu9mfPYqv8iWjDi9ikp8ypqziY;->f$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iput-object p2, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$Reu9mfPYqv8iWjDi9ikp8ypqziY;->f$1:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$Reu9mfPYqv8iWjDi9ikp8ypqziY;->f$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iget-object v1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$Reu9mfPYqv8iWjDi9ikp8ypqziY;->f$1:Lorg/wikipedia/page/PageTitle;

    invoke-static {v0, v1}, Lorg/wikipedia/page/PageFragment;->lambda$onPageMetadataLoaded$4(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method
