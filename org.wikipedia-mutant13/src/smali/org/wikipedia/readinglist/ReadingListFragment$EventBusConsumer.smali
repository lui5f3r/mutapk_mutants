.class Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;
.super Ljava/lang/Object;
.source "ReadingListFragment.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBusConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V
    .locals 0

    .line 970
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 973
    instance-of v0, p1, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    if-eqz v0, :cond_0

    .line 974
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1600(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    goto :goto_0

    .line 975
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/events/PageDownloadEvent;

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    check-cast p1, Lorg/wikipedia/events/PageDownloadEvent;

    invoke-virtual {p1}, Lorg/wikipedia/events/PageDownloadEvent;->getPage()Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$3700(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingListPage;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 977
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1700(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-eqz v1, :cond_1

    .line 978
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1700(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p1}, Lorg/wikipedia/events/PageDownloadEvent;->getPage()Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress(I)V

    .line 979
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$EventBusConsumer;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2300(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method
