.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListBookmarkMenu$hzULcpdvPoUj_-VAxPd8C8zk4-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListBookmarkMenu$hzULcpdvPoUj_-VAxPd8C8zk4-g;->f$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    return-void
.end method


# virtual methods
.method public final onDeleted(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListBookmarkMenu$hzULcpdvPoUj_-VAxPd8C8zk4-g;->f$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->lambda$deleteOrShowDialog$2$ReadingListBookmarkMenu(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method
