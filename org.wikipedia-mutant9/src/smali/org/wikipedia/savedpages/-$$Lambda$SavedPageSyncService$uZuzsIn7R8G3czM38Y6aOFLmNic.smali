.class public final synthetic Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$uZuzsIn7R8G3czM38Y6aOFLmNic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

.field public final synthetic f$1:Lorg/wikipedia/page/PageTitle;

.field public final synthetic f$2:Lorg/wikipedia/readinglist/database/ReadingListPage;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/savedpages/SavedPageSyncService;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$uZuzsIn7R8G3czM38Y6aOFLmNic;->f$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    iput-object p2, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$uZuzsIn7R8G3czM38Y6aOFLmNic;->f$1:Lorg/wikipedia/page/PageTitle;

    iput-object p3, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$uZuzsIn7R8G3czM38Y6aOFLmNic;->f$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$uZuzsIn7R8G3czM38Y6aOFLmNic;->f$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    iget-object v1, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$uZuzsIn7R8G3czM38Y6aOFLmNic;->f$1:Lorg/wikipedia/page/PageTitle;

    iget-object v2, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$uZuzsIn7R8G3czM38Y6aOFLmNic;->f$2:Lorg/wikipedia/readinglist/database/ReadingListPage;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, v1, v2, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService;->lambda$savePageFor$4$SavedPageSyncService(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/readinglist/database/ReadingListPage;Lretrofit2/Response;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
