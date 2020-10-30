.class Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SortReadingListsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/SortReadingListsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortItemHolder"
.end annotation


# instance fields
.field private checkImage:Landroid/widget/ImageView;

.field private sortOptionTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/SortReadingListsDialog;Landroid/view/View;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    .line 95
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0903a0

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->sortOptionTextView:Landroid/widget/TextView;

    const p1, 0x7f0900a9

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->checkImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method bindItem(I)V
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->sortOptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    invoke-static {v1}, Lorg/wikipedia/readinglist/SortReadingListsDialog;->access$100(Lorg/wikipedia/readinglist/SortReadingListsDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    invoke-static {v0}, Lorg/wikipedia/readinglist/SortReadingListsDialog;->access$300(Lorg/wikipedia/readinglist/SortReadingListsDialog;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 103
    iget-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->checkImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->checkImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
