.class Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "ReadingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private itemView:Lorg/wikipedia/readinglist/ReadingListItemView;

.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListItemView;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 599
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    .line 600
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->itemView:Lorg/wikipedia/readinglist/ReadingListItemView;

    return-void
.end method


# virtual methods
.method bindItem(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 2

    .line 604
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->itemView:Lorg/wikipedia/readinglist/ReadingListItemView;

    sget-object v1, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->SUMMARY:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListItemView$Description;)V

    .line 605
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->itemView:Lorg/wikipedia/readinglist/ReadingListItemView;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 595
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lorg/wikipedia/readinglist/ReadingListItemView;
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->itemView:Lorg/wikipedia/readinglist/ReadingListItemView;

    return-object v0
.end method
