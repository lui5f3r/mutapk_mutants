.class Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AddToReadingListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/AddToReadingListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListItemHolder"
.end annotation


# instance fields
.field private itemView:Lorg/wikipedia/readinglist/ReadingListItemView;

.field final synthetic this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/ReadingListItemView;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 280
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 281
    iput-object p2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;->itemView:Lorg/wikipedia/readinglist/ReadingListItemView;

    return-void
.end method


# virtual methods
.method bindItem(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;->itemView:Lorg/wikipedia/readinglist/ReadingListItemView;

    sget-object v1, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->SUMMARY:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListItemView$Description;)V

    return-void
.end method

.method public getView()Lorg/wikipedia/readinglist/ReadingListItemView;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;->itemView:Lorg/wikipedia/readinglist/ReadingListItemView;

    return-object v0
.end method
