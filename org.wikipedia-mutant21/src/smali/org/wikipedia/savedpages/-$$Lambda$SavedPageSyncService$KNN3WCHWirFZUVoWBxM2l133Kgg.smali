.class public final synthetic Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$KNN3WCHWirFZUVoWBxM2l133Kgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field public final synthetic f$2:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/savedpages/SavedPageSyncService;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$KNN3WCHWirFZUVoWBxM2l133Kgg;->f$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    iput-object p2, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$KNN3WCHWirFZUVoWBxM2l133Kgg;->f$1:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iput-object p3, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$KNN3WCHWirFZUVoWBxM2l133Kgg;->f$2:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$KNN3WCHWirFZUVoWBxM2l133Kgg;->f$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    iget-object v1, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$KNN3WCHWirFZUVoWBxM2l133Kgg;->f$1:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iget-object v2, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$KNN3WCHWirFZUVoWBxM2l133Kgg;->f$2:Lorg/wikipedia/page/PageTitle;

    move-object v3, p1

    check-cast v3, Lretrofit2/Response;

    move-object v4, p2

    check-cast v4, Lretrofit2/Response;

    move-object v5, p3

    check-cast v5, Lokhttp3/Response;

    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/savedpages/SavedPageSyncService;->lambda$null$3$SavedPageSyncService(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/page/PageTitle;Lretrofit2/Response;Lretrofit2/Response;Lokhttp3/Response;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
